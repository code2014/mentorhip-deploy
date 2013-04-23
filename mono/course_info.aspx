<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="course_info.aspx.cs" Inherits="mono.course_info" %>

<asp:Content runat="server" id="Content1" ContentPlaceHolderID="contentPlaceHolder">
<div class="other_body">
        <div class="container">
            <div class="container-fluid">
                <div class="row-fluid">
                    <div class="span9">
                         <asp:Label ID="name" runat="server" Font-Size="X-Large" Font-Bold="true">Lil' Dragon - Northbrook Park District </asp:Label><br />
                         <asp:Label ID="address" runat="server"  Font-Bold="true">2735 Pfingsten Rd, Glenview, IL, USA </asp:Label>
                            <div>
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#photo" data-toggle="tab">Photo</a></li>
                                    <li><a href="#map" data-toggle="tab">Map</a></li>
                                    <li><a href="#ratings" data-toggle="tab">Ratings</a></li>
                                </ul>
                                <div class="tab-content courseTabFixHeight">
                                    <div class="tab-pane fade active in" id="photo">
                                        <div class="span6 img-polaroid" style="margin-left:26%; margin-bottom:10px;">
                                            <asp:Image ID="Image1" runat="server" />
                                        </div>
                                        <div class="span11">
                                            <asp:Label ID="description" runat="server" Font-Names="verdana"></asp:Label>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="map" style="padding:4%">
                                        <div class="span7">
                                            <div id="map_canvas" style="width:90%; height: 320px"></div>

                                            <br />
                                            <small>
                                                <a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=2735+Pfingsten+Rd,+Glenview,+IL,+USA&amp;aq=&amp;sll=39.739318,-89.266507&amp;sspn=8.596357,14.128418&amp;t=h&amp;ie=UTF8&amp;hq=&amp;hnear=2735+Pfingsten+Rd,+Glenview,+Illinois+60026&amp;ll=42.103833,-87.849039&amp;spn=0.008103,0.013797&amp;z=14&amp;iwloc=A" style="color: #0000FF; text-align: left">View Larger Map</a></small>
                                        </div>

                                    </div>
									
                                  
                                    <div class="tab-pane fade" id="ratings" style="padding:4%">


                                        <table class="table">
                                            <tr>
                                                <th>Overall Rating</th>
                                                <th>Teachers</th>
                                                <th>Equipment</th>
                                            </tr>
                                            <tr>
                                                <td id="Td1">
                                                    <div class="jRating" data-average="4.5" data-id="allrating"></div>
                                                </td>
                                                <td id="Td2">
                                                    <div class="jRating" data-average="4" data-id="Teacher"></div>
                                                </td>
                                                <td id="Td3">
                                                    <div class="jRating" data-average="4" data-id="Equipment"></div>
                                                </td>


                                            </tr>

                                        </table>




                                        <table>
                                            <tr>
                                                <td class="UserReviewPhoto">
                                                    <img src="assets/img/products/large/f1.jpg" alt="" />
                                                </td>
                                                <td>
                                                    <p>
                                                        My 4-yr old daughter has been in their Little Dragon program for about 6 months and there was no question about whether or not we would continue to have her take classes here.  The staff is EXCELLENT and the program for the younger children stresses focus, respect, discipline, etc.  The owner (Master Miller) is great and will make time for parents anytime you want to talk about your child's progress in the classes.  Master Mike is SO great with the children and really makes the class fun for the kids.  I HIGHLY recommend Glenview Martial Arts.											
                                                    </p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="UserReviewPhoto">
                                                    <img src="assets/img/products/large/f1.jpg" alt="" />
                                                </td>
                                                <td>
                                                    <p>
                                                        it is good
                                                    </p>
                                                </td>
                                            </tr>
                                        </table>



                                    </div>

                                </div>

                            </div>
                            
                            <hr class="soft">
                            
                           <div class="row">

                       


                        <div class="span12">
                        
                            <table class="table table-striped">
                                <tr class="info">
                                    <th>Course</th>
                                    <th>Date</th>
                                    <th>Days</th>
                                    <th>Time</th>
                                    <th>#Available Slots</th>
                                    <th>#Total Slots</th>
                                    <th>Price</th>                                
                                </tr>
                                <tr >
                                    <td><a href="course_info.aspx">Soccer</a></td>
                                    <td>Jun. 19 - Jul. 20</td>
                                    <td>Mo,Tu</td>
                                    <td>5:00pm - 7:00pm</td>
                                    <td>8</td>
                                    <td>12</td>
                                    <td><a class="btn btn-success btn-small btn-block" href="#">$360</a></td>
                                </tr>
                                <tr >
                                    <td><a href="course_info.aspx">Soccer</a></td>
                                    <td>Jun. 20 - Jul. 30</td>
                                    <td>T,Th,Sat</td>
                                    <td>2:00pm - 4:30pm</td>
                                    <td>8</td>
                                    <td>12</td>
                                    <td><a class="btn btn-success btn-small btn-block" href="#">$200</a></td>
                                </tr>
                                <tr >
                                    <td><a href="course_info.aspx">Basketball</a></td>
                                    <td>Jun. 19 - Jul. 20</td>
                                    <td>Mo,Tu</td>
                                    <td>5:00pm - 7:00pm</td>
                                    <td>8</td>
                                    <td>12</td>
                                    <td><a class="btn btn-success btn-small btn-block" href="#">$360</a></td>
                                </tr>
                                <tr >
                                    <td><a href="course_info.aspx">swimming</a></td>
                                    <td>Jun. 19 - Jul. 20</td>
                                    <td>Mo,Tu</td>
                                    <td>5:00pm - 7:00pm</td>
                                    <td>10</td>
                                    <td>12</td>
                                    <td><a class="btn btn-success btn-small btn-block" href="#">$360</a></td>
                                </tr>
                                <tr >
                                    <td><a href="course_info.aspx">Soccer</a></td>
                                    <td>Jun. 19 - Jul. 20</td>
                                    <td>Mo,Tu</td>
                                    <td>5:00pm - 7:00pm</td>
                                    <td>8</td>
                                    <td>12</td>
                                    <td><a class="btn btn-success btn-small btn-block" href="#">$360</a></td>
                                </tr>
                            </table>
                            
                        </div>
                    </div>   
                        </div>

                    <div class="span3">
                        <br> <br> <br> <br>
                        <div class="expandable-layer1">
                            <div class="expandable-heading1">
                                <h5>About Provider</h5>
                            </div>
                            <div class="expandable-content1">
                                <div class="pagination-centered">
                                    <asp:Image ID="Image_p" runat="server" />
                                   
                                </div>
                                <p class="pagination-left">
                                 
                                    <asp:Label ID="p_description" runat="server" Text="Label"></asp:Label>
                                </p>
                            </div>
                        </div>
                        <div class="expandable-layer1">
                            <div class="expandable-heading-trigger">
                                <h5>see more</h5>
                            </div>
                            <div class="expandable-content12b">
                                <h4>Other Courses</h4>
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Title</th>
                                            <th>Price</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td><a href="/courses/63">Tae Kwon Do</a></td>
                                        <td>$150</td>
                                    </tr>
                                    <tr>
                                        <td><a href="/courses/64">Karate</a></td>
                                        <td>$125</td>
                                    </tr>
                                </table>
                                <hr class="soft clr" />
                                <h4>Contact</h4>
                                <font size="2">
                                    <p>	2735 Pfingsten Rd, Glenview, IL 60026</p>
	                                <p>(847) 564-5425</p>
	                                <a href="http://www.glenviewmartialarts.com">http://www.glenviewmartialarts.com</a>
                                </font>
                            </div>

                            <div class="expandable-heading2-trigger">
                                <h5>Recommendations For You</h5>
                            </div>

                            <div class="expandable-content2b">
                                <table class="table">
                                    <tr>
                                        <td>
                                            <img src="assets/img/class/3.jpg" width="70" height="70" />
                                        </td>
										<td>
                                            <a href="/courses/63">Tae Kwon Do</a>
                                        </td>
                                        <td>
                                            $30/class
                                        </td>
                                    </tr>
								    <tr>
                                        <td>
                                           <img src="assets/img/class/4.jpg" width="70" height="70" />
                                        </td>
										<td>
                                           <a href="/courses/64">Karate</a>
                                        </td>
                                        <td>
                                            $50/class
                                        </td>
                                    </tr>
								</table>
					       </div>

                </div>
            </div>
            </div>
        </div>
</div>
      
<!-- Javascript-->
        <script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
        <script src="assets/js/jquery.js" type="text/javascript"></script>
        <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="assets/js/google-code-prettify/prettify.js"></script>

        <script src="assets/js/bootshop.js"></script>
        <script src="assets/js/jquery.lightbox-0.5.js"></script>
        <script type="text/javascript" src="assets/jquery/jquery.js"></script>
        <script type="text/javascript" src="assets/jquery/jRating.jquery.js"></script>
        <script type="text/javascript">
            $('#myCarousel').carousel({
                interval: 8000
            })
            $('#featured').carousel({
                interval: 4000
            })
            $('#differentview').carousel({
                interval: 2000
            })
            $(function () {
                $('#gallery a').lightBox();
            });
        </script>


        <script>
            $(document).ready(function () {
                $('.jRating').jRating();
                $('.jRating').jRating({
                    step: false, // no step
                    length: 5, // show 10 stars at the init
                    type: 'small' // show small stars instead of big default stars
                });
            });

        </script>
        <script type="text/javascript">
            jQuery(document).ready(function () {

                jQuery(".expandable-content2b").hide();
                jQuery(".expandable-content12b").hide();
                //toggle the componenet with class msg_body
                jQuery(".expandable-heading-trigger").click(function () {
                    jQuery(this).next(".expandable-content12b").slideToggle(500);
                    jQuery(".expandable-content2b").hide();
                    jQuery(".expandable-heading-trigger").hide();
                });
                jQuery(".expandable-heading2-trigger").click(function () {
                    jQuery(this).next(".expandable-content2b").slideToggle(500);
                    jQuery(".expandable-heading-trigger").show();
                    jQuery(".expandable-content12b").hide();
                });
            });
        </script>

        <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAvYPF1ccLUujlU7XITVaJAWBH8JwMOSso&sensor=true"></script>

        <script type="text/javascript">
            function codeAddress(address) {
                geocoder.geocode({ 'address': address }, function (results, status) {
                    if (status == google.maps.GeocoderStatus.OK) {
                        if ("undefined" == typeof (map)) {
                            var myOptions = {
                                zoom: 13,
                                center: results[0].geometry.location,
                                mapTypeId: google.maps.MapTypeId.ROADMAP
                            }
                            map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
                        }

                        var marker = new google.maps.Marker({
                            map: map,
                            position: results[0].geometry.location
                        });
                        map.setCenter(marker.getPosition());

                    } else {
                        alert("Geocode was not successful for the following reason: " + status);
                    }
                });
            }

            var map;
            var geocoder;
            jQuery(document).ready(function () {
                geocoder = new google.maps.Geocoder();
                var x = document.getElementById('address');
                codeAddress(x.inneraspx);
            }

        );

        </script>
<!-- Javascript-->

 

    </div>

 

</asp:Content>