<%-- 
    Document   : EnterOtp
    Created on : 10-Jun-2024, 12:50:49 pm
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
response.setHeader("Pragma","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Expires","0");
response.setDateHeader("Expires",-1);

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enter Otp</title>
    </head>
    <body>
        <div class="form-gap"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="text-center">
                            <h3>
                                <i class="fa fa-lock fa-4x"></i>
                            </h3>
                            <h2 class="text-center">Enter OTP</h2>
                            <%
                                if(request.getAttribute("message")!=null)
                                {
                                    out.print("<p class='text-danger ml-1'>"+request.getAttribute("message")+"</p>");
                                }
                            %>

                            <div class="panel-body">
                                <form id="register-form" action="ValidateOtp" role="form" autocomplete="off"
                                    class="form" method="post">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i
                                                    class="glyphicon glyphicon-envelope color-blue"></i></span>
                                            <!-- Use the pattern attribute to allow only numeric input -->
                                            <input id="opt" name="otp" placeholder="Enter OTP"
                                                class="form-control" type="text" pattern="[0-9]+"
                                                title="Please enter only numeric values" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <input name="recover-submit"
                                            class="btn btn-lg btn-primary btn-block"
                                            value="Reset Password" type="submit">
                                    </div>

                                    <input type="hidden" class="hide" name="token" id="token" value="">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </body>
</html>
