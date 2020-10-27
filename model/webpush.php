<?php
  use Minishlink\WebPush\WebPush;
  use Minishlink\WebPush\Subscription;
  use Minishlink\WebPush\VAPID;
  class WebPushModel extends Model{

    public function getPushKeys(){
      $config = [
        'public' => file_get_contents(BASE_PATH. 'keys/public_key.txt'), // don't forget that your public key also lives in app.js
        'private' => file_get_contents(BASE_PATH. 'keys/private_key.txt'),
      ];
      if( strlen($config['public']) < 1 ||  strlen($config['private']) < 1 ){
        $keys = VAPID::createVapidKeys(); 
        file_put_contents(BASE_PATH. 'keys/public_key.txt',$keys['publicKey']);
        file_put_contents(BASE_PATH. 'keys/private_key.txt',$keys['privateKey']);

        return ['public'=>$keys['publicKey'],'private'=>$keys['privateKey']];
      }else{
        return $config;
      }
    }
    
    /**
     * undocumented function summary
     *
     * Undocumented function long description
     *
     * @param Type $var Description
     * @return type
     * @throws conditon
     **/
    public function sendWebPush($subscriptionToken,$data)
    {
      // '{"id":"'.$notificationId.'","subscriptionid":"'.$subscriptionId.'", "message":"'.$message.'", "title": "'.$title.'","image":"'.$image.'","url":"'.$url.'"}'
        $customPush = [
          'public' => file_get_contents(BASE_PATH. 'keys/public_key.txt'), // don't forget that your public key also lives in app.js
          'private' => file_get_contents(BASE_PATH. 'keys/private_key.txt'),
        ];
        // here I'll get the subscription endpoint in the POST parameters
        // but in reality, you'll get this information in your database
        // because you already stored it (cf. push_subscription.php)
        $subscriptionToken = html_entity_decode($subscriptionToken);
        $subscription = Subscription::create(json_decode($subscriptionToken, true));

        $auth = array(
            'VAPID' => array(
                'subject' =>$data['url'],
                'publicKey' => $customPush['public'], // don't forget that your public key also lives in app.js
                'privateKey' => $customPush['private'], // in the real world, this would be in a secret file
            ),
        );
        $webPush = new WebPush($auth);
        $report = $webPush->sendOneNotification($subscription,json_encode($data));
        // handle eventual errors here, and remove the subscription from your server if it is expired
        $endpoint = $report->getRequest()->getUri()->__toString();

        if ($report->isSuccess()) {
            return ['status'=>true,'message'=> "[v] Message sent successfully for subscription {$endpoint}."];
        } else {
            return ['status'=>false,'message'=> "[x] Message failed to sent for subscription {$endpoint}: {$report->getReason()}"];
        }
    }
  }

?>