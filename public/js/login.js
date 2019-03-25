// facebook login script login
window.fbAsyncInit = function() {
    FB.init({
      appId      : '1129408303776326',
      channelURL : '', // Channel File, not required so leave empty
      status     : true, // check login status
      cookie     : true, // enable cookies to allow the server to access the session
      oauth      : true, // enable OAuth 2.0
      xfbml      : false  // parse XFBML
    });
 };
 function fblogin(reg)
 {
     try{

         FB.getLoginStatus(function(r){
             //console.log(r);
             if(r.status === 'connected'){
                 FB.api('/me',{fields: 'last_name,first_name,email'}, function (response) {
                         console.log(response);
                         if(reg=="G")
                         {
                         if(document.getElementById("reg_form").style.display=="block")
                        {
                             document.getElementById('name').value = response.first_name+" "+response.last_name;
                             document.getElementById('email').value = response.email;
                        }
                        else
                        {
                             loginnow(response.email);
                        }
                        }
                        else if(reg=="P")
                        {
                             document.getElementById('buy-name').value = response.first_name+" "+response.last_name;
                             document.getElementById('buy-email').value = response.email;
                        }
                     });
                 }
             else
             {
                 FB.login(function(response) {
                     //console.log(response);
                     if(response.authResponse) {
                         FB.api('/me',{fields: 'last_name,first_name,email'}, function (response) {
                            if(reg=="G")
                            {
                            if(document.getElementById("reg_form").style.display=="block")
                            {
                                 document.getElementById('name').value = response.first_name+" "+response.last_name;
                                 document.getElementById('email').value = response.email;
                            }
                            else
                            {
                                 loginnow(response.email);
                            }
                            }
                            else if(reg=="P")
                            {
                                 document.getElementById('buy-name').value = response.first_name+" "+response.last_name;
                                 document.getElementById('buy-email').value = response.email;
                            }

                         });
                     } else {
                         alert("Login attempt failed!");
                     }
                 },{ scope: 'email,user_photos,publish_actions' });
             }
         });

     }catch (err)
     {
         alert('Sorry, Facebook is blocked on your computer.');
         return false;
     }
 }
 (function() {
    var e = document.createElement('script'); e.async = true;
    e.src = document.location.protocol + '//connect.facebook.net/en_US/all.js';
    document.getElementsByTagName("body")[0].appendChild(e);
 }());
 //facebook end login
 //gmail start login
(function() {
    var po = document.createElement('script');
    po.type = 'text/javascript'; po.async = true;
    po.src = 'https://plus.google.com/js/client:plusone.js?onload=render';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(po, s);
})();
  function render() {
    gapi.signin.render('customBtn', {
      'accesstype': 'offline',
         'approvalprompt': 'auto',
         'callback': 'mycoddeSignIn',
         'clientid': '899565762721-tkutfi3psl0n6gvj30tnj7vvg80cr01o.apps.googleusercontent.com',//'62659825710-60oib5k3cvc5dl08m9q1licpsk29umk6.apps.googleusercontent.com',
         'cookiepolicy': 'single_host_origin',
         'height': 'tall',
         'requestvisibleactions': 'http://schemas.google.com/AddActivity',
         'scope': 'https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile',
         'theme': 'dark',
         'width': 'standard'
    });
  }
var gpclass = (function(){
var response = undefined;
return {
	mycoddeSignIn:function(response){
		// The user is signed in
		if (response["access_token"] && response.status["method"] == "PROMPT") {
			gapi.client.load('plus','v1',this.getUserInformation);
		} else if (response['error']) {
			//alert('There was an error: ' + response['error']);
		}
	},
	getUserInformation: function(){
		var request = gapi.client.plus.people.get( {'userId' : 'me'} );
		request.execute( function(profile) {
			console.log(response);
			var email = profile['emails'].filter(function(v) {
				return v.type === 'account'; // Filter out the primary email
			})[0].value;
            if(document.getElementById("reg_form").style.display=="block")
            {
                document.getElementById('name').value = profile.name.givenName+" "+profile.name.familyName;
                document.getElementById('email').value = email;
            }
            else
            {
                loginnow(email);
            }
		});
	}
}; //End of Return
})();
function mycoddeSignIn(gpSignInResponse){
	gpclass.mycoddeSignIn(gpSignInResponse);
}
//gamail end login

//validation
function ValidateEmail(inputText)
{
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if(inputText.value.match(mailformat))
    {
        document.form1.text1.focus();
        return true;
    }
    else
    {
        alert("You have entered an invalid email address!");
        document.form1.text1.focus();
        return false;
    }
}

//
const loginFunction = (email, password = false) => {

}
