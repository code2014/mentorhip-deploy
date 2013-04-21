<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="mono.profile" %>
<%@ MasterType VirtualPath="~/Site.master"%>

<asp:Content runat="server" id="BodyContent" ContentPlaceHolderID="contentPlaceHolder">

        <div class="other_body">
        <div class="container">
            <div class="row">
                <!-- Sidebar ================================================== -->

                <!-- Sidebar end================================================== -->
                <div class="span12">
                    <ul class="breadcrumb">
                        <li>
                            <asp:HyperLink runat="server" NavigateUrl="~/index.aspx">Home</asp:HyperLink>
                            <span class="divider">/</span>
                            
                        </li>
                        <li class="active">My profile</li>
                    </ul>
                    <h3>My profile</h3>
                    <hr class="soft" />

                    <div class="row">
                        <div class="span6">
                            <div class="well">
                                <h5>PERSONAL INFORMATION</h5>
                            

                                    <div class="control-group">
                                         <label class="control-label" >Logo</label>
                                        <div class="controls">
                                            <asp:Image ID="Image1" runat="server"  Width="100px" />
                                        </div>

                                        <label class="control-label" for="input">Fisrt Name</label>
                                        <div class="controls">
                                            <asp:TextBox ID="fName" CssClass="span3" runat="server" placeholder="First Name"></asp:TextBox>
                                        </div>
                                          <label class="control-label" for="input">Middle Name</label>
                                        <div class="controls">
                                            <asp:TextBox ID="mName" CssClass="span3" runat="server" placeholder="Middle Name"></asp:TextBox>
                                        </div>
                                          <label class="control-label" for="input">Last Name</label>
                                        <div class="controls">
                                            <asp:TextBox ID="lName" CssClass="span3" runat="server" placeholder="Last Name"></asp:TextBox>
                                        </div>

                                      

                                        <label class="control-label" for="inputEmail0">E-mail address</label>
                                        <div class="controls">
                                            <asp:TextBox ID="mail" runat="server" CssClass="span3" placeholder="Email"></asp:TextBox>
                                            <asp:Button ID="Verify" CssClass="btn block" runat="server" Text="Verify this email/ Verified." />
                                        </div>

                                       <label class="control-label" for="inputEmail0">Gender</label>
                                        <div class="controls">
                                            <asp:DropDownList ID="Gender" runat="server">
                                                <asp:ListItem>Male</asp:ListItem>
                                                <asp:ListItem>Female</asp:ListItem>
                                                <asp:ListItem>--</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>

                                    <div class="controls">
                                        <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn block"  />
                                    </div>
                                        </div>
                                </div>
                            </div>
                    

                         <div class="span6">
                                 <div class="well">
                                <h5>CHANGE PASSWORD</h5>
                                      <label class="control-label" for="input">Old Password</label>
                                        <div class="controls">
                                            <asp:TextBox ID="old_pwd" CssClass="span3" runat="server" TextMode="Password" placeholder="******"></asp:TextBox>
                                        </div>
                                       <label class="control-label" for="input">New Password</label>
                                        <div class="controls">
                                            <asp:TextBox ID="pwd0" CssClass="span3" runat="server" TextMode="Password" placeholder="******"></asp:TextBox>
                                        </div>
                                        <label class="control-label" for="input">Confirm Password</label>
                                        <div class="controls">
                                            <asp:TextBox ID="pwd1" CssClass="span3" runat="server" TextMode="Password" placeholder="******"></asp:TextBox>
                                        </div>
                                       <div class="controls">
                                        <asp:Button ID="Button2" runat="server" Text="Confirm" CssClass="btn block" OnClick="ChangePassword_Click"  />
                                    </div>
                              </div>
                         </div>
                          <div class="span6">
                                 <div class="well">
                                <h5>UPLOAD A LOGO</h5>
                                     
                                    <div class="controls">
                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                        <asp:Button ID="Button3" runat="server" Text="Upload" CssClass="btn block" OnClick="Button3_Click"  />
                                    </div>
                              </div>
                         </div>

                    </div>

                </div>
            </div>
        </div>
    </div>

    <!-- MainBody End ============================= -->
    <!-- Javascript -->
    <script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
    <script src="../assets/js/jquery.js" type="text/javascript"></script>
    <script src="../assets/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../assets/js/google-code-prettify/prettify.js"></script>

    <script src="../assets/js/bootshop.js"></script>
    <script src="../assets/js/jquery.lightbox-0.5.js"></script>
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