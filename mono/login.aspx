<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="mono.login" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="contentPlaceHolder">
    <div class="other_body">
        <div class="container">
            <div class="row">
                <!-- Sidebar ================================================== -->
                <!-- Sidebar end================================================== -->
                <div class="span12">
                    <ul class="breadcrumb">
                        <li> <asp:HyperLink ID="HyperLink1"  runat="server" NavigateUrl="~/index.aspx">Home</asp:HyperLink>
                         <span class="divider">/</span></li>
                        <li class="active">Login</li>
                    </ul>
                    <h3>Login</h3>
                    <hr class="soft" />

                    <div class="row">


                        <div class="span6">
                            <div class="well">
                                <h5>ALREADY REGISTERED ?</h5>
                                <div>
                                    <div class="control-group">
                                        <label class="control-label" for="username">User Name</label>
                                        <div class="controls">
                                            <asp:TextBox ID="username" CssClass="span3" runat="server" placeholder="User Name"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="control-group">

                                        <label class="control-label" for="inputPassword">Password</label>
                                        <div class="controls">
                                            <asp:TextBox ID="inputPassword" CssClass="span3" TextMode="Password" runat="server" placeholder="Password"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <div class="controls">
                                            <asp:Button ID="signin" CssClass="btn btn-info" runat="server" Text="Sign in" OnClick="signin_Click" />
                                            <a href="forgetpass.aspx">Forget password?</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="span6">
                            <div class="well">
                                <h5>CREATE YOUR ACCOUNT</h5>
                                <br />


                                <div class="control-group">
                                    <label class="control-label" for="input">Account Name</label>
                                    <div class="controls">
                                        <asp:TextBox ID="userName1" CssClass="span3" runat="server" placeholder="Account"></asp:TextBox>
                                    </div>
                                    <label class="control-label" for="input">Password</label>
                                    <div class="controls">
                                        <asp:TextBox ID="pwd0" CssClass="span3" runat="server" TextMode="Password" placeholder="password"></asp:TextBox>

                                    </div>
                                    <label class="control-label" for="input">Confirm Password</label>
                                    <div class="controls">
                                        <asp:TextBox ID="pwd1" CssClass="span3" runat="server" TextMode="Password" placeholder="Confirm"></asp:TextBox>
                                    </div>
                                    <label class="control-label" for="inputEmail0">E-mail address</label>
                                    <div class="controls">
                                        <asp:TextBox ID="mail" runat="server" CssClass="span3" placeholder="Email"></asp:TextBox>

                                    </div>


                                </div>


                                <div class="controls">
                                    <asp:Button ID="Button1" runat="server" Text="Create Your Account" class="btn" OnClick="Button1_Click" />
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <!-- MainBody End ============================= -->

    <script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
    <script src="assets/js/jquery.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="assets/js/google-code-prettify/prettify.js"></script>

    <script src="assets/js/bootshop.js"></script>
    <script src="assets/js/jquery.lightbox-0.5.js"></script>
    <script type="text/javascript">
        $('#myCarousel').carousel({
            interval: 8000
        })
        $('#featured').carousel({
            interval: 4000
        })
        $(function () {
            $('#gallery a').lightBox();
        });
    </script>

</asp:Content>
