
// var c = document.getElementById("myCanvas");
// var ctx = c.getContext("2d");
// ctx.font = "30px Arial";
// ctx.fillText("30% off on first order",10,50);
// slides
// var slideIndex = 1;
// showDivs(slideIndex);

// function plusDivs(n) {
//   showDivs(slideIndex += n);
// }

// function showDivs(n) {
//   var i;
//   var x = document.getElementsByClassName("mySlides");
//   if (n > x.length) {slideIndex = 1}
//   if (n < 1) {slideIndex = x.length}
//   for (i = 0; i < x.length; i++) {
//     x[i].style.display = "none";  
//   }
//   x[slideIndex-1].style.display = "block";  
// }
//validation
function validation()                                 
{ 
    var fname = document.forms["form"]["fname"];    
    var lname = document.forms["form"]["lname"];           
    var email = document.forms["form"]["email"];    
    var phone = document.forms["form"]["phone"];  
    var dropdown =  document.forms["form"]["dropdown"];  
    var password = document.forms["form"]["password"];  
    var date = document.forms["form"]["date"];
    var image=document.forms["form"]["image"]; 
    var checkbox=document.forms["form"]["checkbox"];
 
   
    if (fname.value == "")                                  
    { 
        window.alert("Please enter your name."); 
        fname.focus(); 
        return false; 
    }  
 if(email.value == "")
 {
    window.alert("Please fill your email");
    email.focus();
    return false;
 }

    if (phone.value == "")                           
    { 
        window.alert("Please enter your phone number."); 
        phone.focus(); 
        return false; 
    } 
   
    if (password.value == "")                        
    { 
        window.alert("Please enter your password"); 
        password.focus(); 
        return false; 
    } 
      if (image.value == "")                        
    { 
        window.alert("Add your image make sure its in jpeg, jpg or png"); 
        image.focus(); 
        return false; 
    } 
     if (date.value == "")                        
    { 
        window.alert("Please add your DOB!"); 
        date.focus(); 
        return false; 
    } 
    if (dropdown.selectedIndex < 1)                  
    { 
        alert("Please enter your city."); 
        dropdown.focus(); 
        return false; 
    } 

    if(form.checkbox.checked==false)
{
    window.alert("Please agree to terms and conditions"); 
        checkbox.focus(); 
        return false;
    }  

    else{
    	window.alert("thank you, your form has been submitted")
    }
}


