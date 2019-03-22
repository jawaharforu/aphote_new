<footer id="footer">
    <div class="footer-info-sec">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="footer-info">
                        <h4>About Us</h4>
                        <p style="text-align: justify;">Aphote is a unique property feature &amp;price comparison platform, offering an inclusive &amp; assimilated choice of options for the property buyers from a selective faction of builders in any given locality . The goal is to bridge the gap between the buyers and the developers by providing appropriate information to them and aiding them in their decision making process.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3">
                    <div class="footer-contact-info">
                        <h4>Contact Us</h4>
                        <p class="">#86 Ground Floor, Veera Pillai Street, Bangalore - 560042 </p>
                        <p class="">
                            <span class="">Phone: </span>
                            <a href="tel:08039195195">080 39195195</a><br>
                            <span class="">Email:</span>
                            <a href="mailto:sales@aphote.com">sales@aphote.com</a><br>
                        </p>
                    </div>
                    <div class="social-links">
                        <a href="#" target="_blank" class="facebook"><i class="fa fa-facebook"></i></a>
                        <a href="#" target="_blank" class="twitter"><i class="fa fa-twitter"></i></a>
                        <a href="#" target="_blank" class="instagram"><i class="fa fa-instagram"></i></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 footer-links">
                    <h4>Useful Links</h4>
                    <ul>
                        <li><i class="fa fa-angle-right"></i> <a href="#">About us</a></li>
                        <li><i class="fa fa-angle-right"></i> <a href="#">Privacy Policy</a></li>
                        <li><i class="fa fa-angle-right"></i> <a href="#">Terms and Conditions</a></li>
                        <li><i class="fa fa-angle-right"></i> <a href="#">Contact us</a></li>
                        <li><i class="fa fa-angle-right"></i> <a href="#">Advertise with us</a></li>
                        <li><i class="fa fa-angle-right"></i> <a href="#">Sales Enquiry</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-copyrit">
        <div class="container">
            <div class="row">
                <div class="col-md-12 m-auto text-center">
                    <p class="m-0">© Copyright 2018 APHOTE Pvt Ltd. All Rights Reserved</p>
                </div>
            </div>
        </div>
    </div>
</footer>

<div class="modal fade show" id="loginModal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <ul class="login-tabs">
                    <li class="active">Login to APHOTE</li>
                </ul>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body mx-3">
                <div class="row">
                    <div class="col-lg-6 forgotpassword" style="display: none">
                        <p class="login-box-msg">Enter your email address, to request password</p>
                        <form id="forgotpassword" method="post" novalidate="novalidate">
                            <input type="hidden" name="_token" value="jdy7CKW77Z4Uz9REj5y2EWtadiZKDSC9uYV8kI2Q">
                            <div class="form-group has-feedback">
                                <input type="email" class="form-control" name="email" required="" placeholder="Email Address" aria-required="true">
                                <span class="glyphicon glyphicon-user form-control-feedback"></span>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block btn-flat">Submit</button>
                        </form>
                        <div class="mt-2 text-center">
                            <a onclick="showLoginForm()" href="javascript:void(0)">Back to Login</a>
                        </div>
                    </div>
                    <div class="col-lg-6 pull-left loginformModal">
                        <h5 class="text-center">Login</h5>
                        <form name="loginform" autocomplete="off" method="post" class="form-horizontal form-material" id="loginform" novalidate="novalidate">
                            <input type="hidden" name="_token" value="jdy7CKW77Z4Uz9REj5y2EWtadiZKDSC9uYV8kI2Q">
                            <input type="hidden" name="redirect_back" value="">
                            <div class="form-group">
                                <label>Email address <span class="text-danger">*</span></label>
                                <input type="email" name="email" class="form-control required email" placeholder="Enter Email address" autocomplete="off" aria-required="true" >
                            </div>
                            <div class="form-group">
                                <label>Password <span class="text-danger">*</span></label>
                                <input type="password" name="password" class="form-control required" placeholder="Enter Password" autocomplete="off" aria-required="true">
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="customControlAutosizing">
                                    <label class="custom-control-label" for="customControlAutosizing">Remember
                                        Me</label>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary btn-lg btn-block">SIGN IN</button>
                        </form>
                        <div class="mt-2 text-center">
                            <a onclick="showForgotForm()" href="javascript:void(0)">Forget your password?</a>
                        </div>
                    </div>
                    <div class="col-lg-6 pull-right">
                        <h5 class="text-center">Login using Social </h5>
                        <div class="mt-4 text-center login-with-social">
                            <a href="#" class="btn btn-facebook btn-block" style="background-color:#0073b1;">
                                <i class="mdi mdi-linkedin-box"></i>
                                Login With
                                Linkedin</a>
                            <a href="http://phplaravel-252511-785143.cloudwaysapps.com/login/facebook?redirect_back=" class="btn btn-facebook btn-block"><i class="mdi mdi-facebook"></i> Login With
                                Facebook</a>
                            <a href="http://phplaravel-252511-785143.cloudwaysapps.com/login/google?redirect_back=" class="btn btn-google btn-block"><i class="mdi mdi-google-plus"></i> Login With
                                Google</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade show" id="regModal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                    <h3>Register to APHOTE</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body mx-3">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-8 col-lg-8 col-xl-6">
                        <div class="row align-items-center">
                            <div class="col mt-4">
                                <input type="text" name="name" placeholder="Name" class="form-control" id="name" onkeyup="this.value = this.value.replace(/[^a-zA-Z. ]/g,'');" aria-invalid="true">
                            </div>
                        </div>
                        <div class="row align-items-center">
                            <div class="col mt-4">
                                <input type="text" name="mobile" maxlength="10" placeholder="Mobile" class="form-control" id="mobile" onkeyup="this.value = this.value.replace (/[^0-9+]/g,''); " aria-invalid="true">
                            </div>
                        </div>
<div class="row align-items-center mt-4">
                            <div class="col">
                                <input type="email" name="email" placeholder="Email" class="form-control" id="email" onkeyup="this.value = this.value.replace(/[^a-zA-Z0-9.@_]/g,'');">
                            </div>
                        </div>
                        <div class="row align-items-center mt-4">
                            <div class="col">
                                <input type="password" class="form-control" placeholder="Password">
                            </div>
                            <div class="col">
                                <input type="password" class="form-control" placeholder="Confirm Password">
                            </div>
                        </div>
                        <div class="row justify-content-start mt-4">
                            <div class="col">
                                <div class="form-check">
                                    <label class="form-check-label">
                                        By clicking below, you agree to <a href="#">Terms and Conditions</a>
                                    </label>
                                </div>
                                <button class="btn btn-primary mt-4">Submit</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
