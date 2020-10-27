'use strict';

self.addEventListener('push', function(event) {
  if(event.data){
    const message = event.data.json();
    const form =  new FormData();
    form.append('notificationid',message.id);
    form.append('subscriptionid',message.subscriptionid);
    fetch(`index.php?route=custom/push_notification/recieved`,{ method : 'POST',body : form });
    console.log(message)
    
    event.waitUntil(self.registration.showNotification(message.title,{data : message ,body : message.message,icon : 'image/icon.png', image : message.image,vibrate : [500,110,500,110,450,110,200,110,170,40,450,110,200,110,170,40,500] }));
  }
});

self.addEventListener('notificationclick', function(event) {
  event.notification.close();
  
  if(event.notification.data){
    const message = event.notification.data;
    
    const form =  new FormData();
    form.append('notificationid',message.id);
    form.append('subscriptionid',message.token);
    fetch(`index.php?route=custom/push_notification/tapped`,{ method : 'POST',body : form });
    console.log(message,event.data,message.url);
    event.waitUntil( event.target.clients.openWindow(message.url));
  }
})