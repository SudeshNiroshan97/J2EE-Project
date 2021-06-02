
var CountDownDate = new Date("Dec 31,2020 00:00:00").getTime();
var CountDownfunction = setInterval(function(){
                
    var now = new Date().getTime();
               
    var distance = CountDownDate -  now;
               
    var days = Math.floor(distance/(1000*60*60*24));
    var hours = Math.floor((distance % (1000*60*60*24))/(1000*60*60));
               
     var mintues = Math.floor((distance % (1000*60*60))/(1000*60));
               var seconds = Math.floor((distanse % (1000*60))/1000);
               
               document.getElementById("demo").innerHTML = days + "d" + hours + "h" + mintues + "m" + seconds + "s";
               
               if(distance < 0){
                   
                   clearInterval(countDownfunction);
                   document.getElementById("demo").innerHTML = Expired;
               }
            },1000);
           

            

       
