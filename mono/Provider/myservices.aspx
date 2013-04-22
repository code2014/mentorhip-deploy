<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="myservices.aspx.cs" Inherits="mono.myservices" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="contentPlaceHolder">
    <div class="other_body">
        <div class="container">
            <div class="row">
                <div class="span12">
                    <ul class="breadcrumb">
                        <li>
                            <asp:HyperLink runat="server" NavigateUrl="~/index.aspx">Home</asp:HyperLink>
                            <span class="divider">/</span></li>
                        <li class="active">Provided services</li>
                    </ul>
                    <h3>SERVICE MANAGEMENT</h3>
                    <hr class="soft" />

                    <div class="row">
                        <div class="span12">
                            <div class="well">
                                <h5>MY SERVICES</h5>

                                <asp:ListView ID="ListView1" runat="server"  OnRowCommand="On_RowCommand">
                                    <LayoutTemplate>
                                        <table id="Table1" runat="server" width="90%">
                                            <tr id="Tr1" runat="server">
                                                <td id="Td1" runat="server">ID</td>
                                                <td id="Td2" runat="server">Name</td>
                                                <td id="Td3" runat="server">Description</td>
                                                <td id="Td4" runat="server">Management</td>
                                            </tr>
                                            <tr id="ItemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </LayoutTemplate>
                                    <ItemTemplate>
                                        <tr class="TableData">
                                            <td>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("idservice")%>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("name")%>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("description")%>'></asp:Label>
                                            </td>
                                            <td>
                                               <asp:LinkButton ID="edit_link" runat="server" CommandName="edit" OnCommand="edit_link_Command"  CommandArgument='<%# Eval("idservice")%>' Text="Edit" ></asp:LinkButton>
                                                <asp:LinkButton ID="del_link" runat="server" CommandName="del" OnCommand="del_link_Command"  CommandArgument='<%# Eval("idservice")%>' Text="Delete" OnClientClick="return confirm('Are you sure to delete this item?')"></asp:LinkButton>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                
                                </asp:ListView>
                     



                            </div>
                        </div>
                    </div>



                    <div class="accordion" id="accordion2">
                        <div class="accordion-group">
                            <div class="accordion-heading">
                                <h4><a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">ADD A NEW SERVICE
                                </a></h4>
                            </div>
                            <div id="collapseOne" class="accordion-body collapse">
                                <div class="accordion-inner">
                                    <div class="well span5">
                                        <div class="control-group">
                                            <label class="control-label" for="title">Title</label>
                                            <div class="controls">
                                                <asp:TextBox ID="title" CssClass="span3" runat="server" placeholder="Title"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="cat">Category</label>
                                            <div class="controls">
                                                <asp:DropDownList ID="cat" runat="server">
                                                    <asp:ListItem>math</asp:ListItem>
                                                    <asp:ListItem>Dance</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <div class="controls">
                                                <label class="control-label" for="min_age">Age Range</label>
                                                <asp:TextBox ID="min_age" CssClass="span3" runat="server" placeholder="Title" Width="80px"></asp:TextBox>
                                                to
                                                <asp:TextBox ID="max_age" CssClass="span3" runat="server" placeholder="Title" Width="80px"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="title">Phone:</label>
                                            <div class="controls">
                                                <asp:TextBox ID="phone" CssClass="span3" runat="server" placeholder="Phone"></asp:TextBox>
                                            </div>

                                            <label class="control-label" for="title">Url:</label>
                                            <div class="controls">
                                                <asp:TextBox ID="Url" CssClass="span3" runat="server" placeholder="Url(Optional):"></asp:TextBox>
                                            </div>
                                        </div>


                                        <div class="control-group">
                                            <label class="control-label" for="title">Description:</label>
                                            <div class="controls">
                                                <asp:TextBox ID="description" CssClass="span3" runat="server" placeholder="Title" Height="104px" TextMode="MultiLine" Width="100%"></asp:TextBox>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="well span5">
                                        <h5>Specify a location where this activity is held.</h5>
                                        <br />
                                        <div class="control-group">

                                            <label class="control-label" for="Line1">Address Line 1:</label>
                                            <div class="controls">
                                                <asp:TextBox ID="line1" CssClass="span3" runat="server" placeholder="Line1"></asp:TextBox>
                                            </div>

                                            <label class="control-label" for="Line1">Address Line 2:</label>
                                            <div class="controls">
                                                <asp:TextBox ID="Line2" CssClass="span3" runat="server" placeholder="Line2"></asp:TextBox>
                                            </div>

                                            <label class="control-label" for="zipcode">Zip Code:</label>
                                            <div class="controls">
                                                <asp:TextBox ID="zipcode" CssClass="span3" runat="server" placeholder="ZipCode"></asp:TextBox>
                                            </div>

                                            <label class="control-label" for="Line1">City</label>
                                            <div class="controls">
                                                <asp:TextBox ID="city" CssClass="span3" runat="server" placeholder="City"></asp:TextBox>
                                            </div>

                                            <label class="control-label" for="state">State</label>
                                            <div class="controls">
                                                <asp:TextBox ID="state" CssClass="span3" runat="server" placeholder="State"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="FileUpload1">Choose from a picture</label>
                                            <div class="controls">
                                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                            </div>
                                        </div>
                                        <br />
                                        <div class="control-group">
                                            <div class="controls">
                                                <asp:Button ID="create" CssClass="btn" runat="server" Text="Create New Entry" OnClick="create_Click" />
                                            </div>

                                        </div>



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
        <!-- Placed at the end of the document so the pages load faster -->
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


    </div>
</asp:Content>
