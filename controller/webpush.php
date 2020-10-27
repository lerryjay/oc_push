<?php
class WebPush extends Controller
{
    
    public function getkey()
    {
        loadModel('webpush');

        $this->webPushModel =  new WebPushModel();
        $res = $this->webPushModel->getPushKeys();
        
        $this->setOutputHeader(['Content-Type: application/json']);
        $this->setOutput(json_encode(['status'=>true,'message'=>'Push key retrieved successfully','data'=>$res['public']]));
    }
    
    public function send()
    {
        $tokens  = explode('||',$_POST['tokens']);
        $data    = json_decode($_POST['data'],true);
        // $url     = $_POST['url'];
        // $image   = $_POST['image'] ?? '';
        // $title   = $_POST['title'] ?? '';
        // $message = $_POST['message'] ?? '';
        // $notificationid = $_POST['notificationid'];
        // $subscriptionid = $_POST['subscriptionid'];

        loadModel('webpush');
        $this->webPushModel =  new WebPushModel();
        
        // $data = ['url'=>$url,'image'=>$image,'title'=>$title,'message'=>$message,'notificationid'=>$notificationid,'subscriptionid'=>$subscriptionid];
        error_reporting(0);
        try {
            foreach($tokens as $token){
                $res = $this->webPushModel->sendWebPush($token,$data);
            }
        } catch (\Throwable $th) {
            //throw $th;
        }
        

        $this->setOutputHeader(['Content-Type: application/json']);
        $this->setOutput(json_encode($res));
    }
}

?>
