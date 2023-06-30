<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form by Colorlib</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="../registration/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="../registration/css/style.css">
</head>
<body>
<div class="main">
        <div class="container">
            <div class="signup-content">
                <div class="signup-img">
                    <img src="../registration/images/signup-img.jpg" alt="">
                </div>
                <div class="signup-form">
                    <form method="POST" action="../User_Register" class="register-form" id="register-form">
                        <h2>student registration form</h2>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="name">Name :</label>
                                <input type="text" name="lname" id="name" required/>
                            </div>
                
                        </div>
    
                        <div class="form-radio">
                            <label for="gender" class="radio-label">Gender :</label>
                            <div class="form-radio-item">
                                <input type="radio" name="gender" id="male" checked>
                                <label for="male">Male</label>
                                <span class="check"></span>
                            </div>
                            <div class="form-radio-item">
                                <input type="radio" name="gender" id="female">
                                <label for="female">Female</label>
                                <span class="check"></span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="state">State :</label>
                                <div class="form-select">
                                    <select name="state" id="state">
                                        <option value=""></option>
                                        <option value="us">Tamil Nadu</option>
                                        <option value="uk">Andra Pradesh</option>
                                        <option value="uk">Kerala</option>
                                        <option value="uk">Karnataka</option>
                                    </select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                            </div>
       
                        </div>
    
                        <div class="form-group">
                            <label for="email">Email ID :</label>
                            <input type="email" name="lemail" id="email" />
                        </div>
                                         <div class="form-row">
                            <div class="form-group">
                                <label for="name">Password :</label>
                                <input type="text" name="lpass" id="name" required/>
                            </div>
                
                        </div>
                                         <div class="form-row">
                            <div class="form-group">
                                <label for="name">Confirm Password :</label>
                                <input type="text" name="lcpass" id="name" required/>
                            </div>
                
                        </div>
                        <div class="form-submit">
                            <input type="submit" value="Reset All" class="submit" name="reset" id="reset" />
                            <input type="submit" value="Submit Form" class="submit" name="submit" id="submit" />
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>

    <!-- JS -->
    <script src="../registration/vendor/jquery/jquery.min.js"></script>
    <script src="../registration/js/main.js"></script>
</body>
</html>