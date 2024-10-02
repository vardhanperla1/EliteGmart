function emailSend(){
    
    var userName = document.getElementById('name').value;
    var phone = document.getElementById('phone').value;
    var email = document.getElementById('email').value;

    var messageBody = "Name " + userName +
    "<br/> Phone " + phone +
    "<br/> Email " + email;
    
    Email.send({
    Host : "smtp.elasticemail.com",
    Username : "perla.vardhan@gmail.com",
    Password : "4639FA540284F4DFD01EB35852388C424D0A",
    To : email.value,
    From : "perla.vardhan@gmail.com",
    Subject : "This is the subject",
    Body : messageBody
}).then(
  message => {
      if(message=='OK'){
  		swal("Secussful", "You clicked the button!", "success");
  	}
  	else{
  		swal("Error", "You clicked the button!", "error");
  	}
  }
);
}