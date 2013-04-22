<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="provider_details.aspx.cs" Inherits="mono.provider_details" %>

<asp:Content runat="server" id="BodyContent" ContentPlaceHolderID="contentPlaceHolder">
<div id="mainBody">
        <div class="container">
            <div class="container-fluid">
                <div class="row-fluid">
                    <div class="pull-left">
                        <h3>Lil' Dragon - Glenview Martial Arts and Fitness</h3>
                        <h6 id="address">2735 Pfingsten Rd, Glenview, IL, USA</h6>
                    </div>
                </div>
                <div class="row-fluid">
                        <div id="gallery" class="span4">
                            <a href="assets/images/provider/gma.jpg" title="Fujifilm FinePix S2950 Digital Camera">
                                <img src="assets/images/provider/gma.jpg" style="width:100%" alt="Fujifilm FinePix S2950 Digital Camera"/>
                            </a>
                            <div id="differentview" class="moreOptopm carousel slide">
                                <div class="carousel-inner">
                                  <div class="item active">
                                   <a href="assets/images/provider/gma.jpg"> <img style="width:29%" src="assets/images/provider/gma.jpg" alt=""/></a>
                                   <a href="assets/images/provider/gma.jpg"> <img style="width:29%" src="assets/images/provider/gma.jpg" alt=""/></a>
                                   <a href="assets/images/provider/gma.jpg" > <img style="width:29%" src="assets/images/provider/gma.jpg" alt=""/></a>
                                  </div>
                                  <div class="item">
                                   <a href="assets/images/provider/gma.jpg" > <img style="width:29%" src="assets/images/provider/gma.jpg" alt=""/></a>
                                   <a href="assets/images/provider/gma.jpg"> <img style="width:29%" src="assets/images/provider/gma.jpg" alt=""/></a>
                                   <a href="assets/images/provider/gma.jpg"> <img style="width:29%" src="assets/images/provider/gma.jpg" alt=""/></a>
                                  </div>
                                </div>
                            </div>
                              
                            <div class="btn-toolbar">
                              <div class="btn-group">
                                <span class="btn"><i class="icon-envelope"></i></span>
                                <span class="btn" ><i class="icon-print"></i></span>
                                <span class="btn" ><i class="icon-zoom-in"></i></span>
                                <span class="btn" ><i class="icon-star"></i></span>
                                <span class="btn" ><i class=" icon-thumbs-up"></i></span>
                                <span class="btn" ><i class="icon-thumbs-down"></i></span>
                              </div>
                            </div>
                        </div>
                            
                        <div class="span8 pull-left">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#discription" data-toggle="tab">Discription</a></li>
                                <li><a href="#map" data-toggle="tab">Map</a></li>
                                <li><a href="#calendar" data-toggle="tab">Calendar</a></li>
                                <li><a href="#Ratings" data-toggle="tab">Ratings</a></li>
                            </ul>
                            <div class="tab-content tab-fixHeight">

                                <div class="tab-pane fade" id="map">
                                    <div class="span7">
                                        <div id="map_canvas" style="width: 655px; height: 287px; margin:30px;"></div>

                                        <br />
                                        <small><a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=2735+Pfingsten+Rd,+Glenview,+IL,+USA&amp;aq=&amp;sll=39.739318,-89.266507&amp;sspn=8.596357,14.128418&amp;t=h&amp;ie=UTF8&amp;hq=&amp;hnear=2735+Pfingsten+Rd,+Glenview,+Illinois+60026&amp;ll=42.103833,-87.849039&amp;spn=0.008103,0.013797&amp;z=14&amp;iwloc=A" style="color: #0000FF; text-align: left">View Larger Map</a></small>
                                    </div>

                                </div>
                                
                                <div class="tab-pane fade" id="calendar">
                                    <form class="form-horizontal qtyFrm">
                                        <div class="controls-group">
                                            <label class="control-label">Select Month:</label>
                                            <div class="controls">
                                                <select class="span2">
                                                    <option value="2013/05/01">April 2013</option>
                                                    <option value="2013/05/01">May 2013</option>
                                                    <option value="2013/06/01">June 2013</option>
                                                    <option value="2013/07/01">July 2013</option>
                                                    <option value="2013/08/01">August 2013</option>
                                                    <option value="2013/09/01">September 2013</option>
                                                    <option value="2013/10/01">October 2013</option>
                                                    <option value="2013/11/01">November 2013</option>
                                                    <option value="2013/12/01">December 2013</option>
                                                    <option value="2014/01/01">January 2014</option>
                                                    <option value="2014/02/01">February 2014</option>
                                                </select>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="tab-pane fade" id="Ratings">


                                    <table class="table">
                                        <tr>
                                            <th>Overall Rating</th>

                                            <th>Teachers</th>
                                            <th>Equipment</th>
                                        </tr>
                                        <tr>
                                            <td id="allrating">
                                                <div class="jRating" data-average="4.5" data-id="allrating"></div>
                                            </td>
                                            <td id="Teacher">
                                                <div class="jRating" data-average="4" data-id="Teacher"></div>
                                            </td>
                                            <td id="Equipment">
                                                <div class="jRating" data-average="4" data-id="Equipment"></div>
                                            </td>


                                        </tr>

                                    </table>
                                    <table>
                                        <tr>
                                            <td class="UserReviewPhoto">
                                                <!-- <img src="assets/images/provider/gma.jpg" alt="" /> -->
                                            </td>
                                            <td>
                                                <p>
                                                    My 4-yr old daughter has been in their Little Dragon program for about 6 months and there was no question about whether or not we would continue to have her take classes here.  The staff is EXCELLENT and the program for the younger children stresses focus, respect, discipline, etc.  The owner (Master Miller) is great and will make time for parents anytime you want to talk about your child's progress in the classes.  Master Mike is SO great with the children and really makes the class fun for the kids.  I HIGHLY recommend Glenview Martial Arts.                                           
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="UserReviewPhoto">
                                                <!-- <img src="assets/images/provider/gma.jpg" alt="" /> -->
                                            </td>
                                            <td>
                                                <p>
                                                    it is good
                                                </p>
                                            </td>
                                        </tr>
                                    </table>
                                <hr class="soft">
                                </div>
                                <div class="tab-pane fade active in" id="discription">
                                    <p><font size="3" face="verdana">LIL’DRAGON The Lil’Dragon program is a modified martial arts program tailored specifically for children between the ages of 3 and 6 years old. </p>
                                    <p><font size="3" face="verdana">This program is geared to engage the children both physically and mentally. The Lil’Dragon program teaches focus, respect, discipline, and self control. Our Lil’Dragons improve their balance, flexibility, coordination and physical fitness. All of these gains help to give our Lil’ Dragons greater confidence. The Lil’Dragons have their own Belt and Stripe System to track improvement. Although every belt level has its own curriculum and certain requirements are uniform, the underlying goal for the Lil’Dragon program is to bring out the strengths of each individual. The basic life skills learned through our Lil’Dragon program become a cornerstone for their future development of identity.</p>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
                
                        
                <div class="container" style="margin-top:20px;">
                  <div class="container-fluid">
                    <hr class="soft">
                    <div class="span2 pull-left well">
                        <form class="form-inline">
                          <label class="control-label" for="inputEmail">Search</label>
                          <input type="text" id="inputEmail" placeholder=" " style="width:157px;">
                        </form>
                        <form class="form-inline">
                          <label class="control-label" for="inputEmail">Distance from location</label>
                          <input type="text" id="inputEmail" placeholder=" " style="width:157px;">
                        </form>
                        <form class="form-inline">
                          <label class="control-label" for="inputEmail">City</label>
                          <input type="text" id="inputEmail" placeholder=" " style="width:157px;">
                        </form>
                        <h4>Price</h4>
                        <select style="width:171px;">
                          <option>Under $100</option>
                          <option>$100 to $200</option>
                          <option>$200 to $300</option>
                          <option>$300 to $400</option>
                          <option>$400 to $500</option>
                        </select>
                        <input type="text" class="input-small" placeholder="Price from...($)">
                        <input type="password" class="input-small" placeholder="to...">
                        <button type="submit" class="btn">Go</button>
                    
                        <h4>Customer Review</h4>
                        <select style="width:171px;">
                          <option>5 starts</option>
                          <option>4 starts</option>
                          <option>3 starts</option>
                          <option>2 starts</option>
                          <option>1 start</option>
                        </select>
                        <h4>Day</h4>
                        <select style="width:171px;">
                          <option>Monday</option>
                          <option>Tuesday</option>
                          <option>Wednesday</option>
                          <option>Thursday</option>
                          <option>Friday</option>
                          <option>Saturday</option>
                          <option> Sunday</option>
                        </select>
                        <h4>Time</h4>
                        <select style="width:171px;">
                          <option>Morning</option>
                          <option>Afternoon</option>
                          <option>Evening</option>
                        </select>
                    </div>
                    <div class="span8 pull-left">
                        <h1>Courses List</h1>    
                        <div class="accordion" id="accordion2">
                            <div class="accordion-group">
                              <div class="accordion-heading">
                                <table class="table table-striped">
                                    <tr class="info">
                                        <th>Course</th>
                                        <th>Date</th>
                                        <th>Days</th>
                                        <th>Time</th>
                                        <th>Price</th>
                                    </tr>
                                    <tr >
                                        <td><a href="course_info.aspx">Soccer(8-12)</a></td>
                                        <td>Jun. 19 - Jul. 20</td>
                                        <td>Mon,Tues</td>
                                        <td>5:00pm - 7:00pm</td>
                                        <td>
                                            <a class="btn btn-success btn-small btn-block" href="#">$360</a>
                                            <a class="btn btn-small accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">Details</a>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                              <div id="collapseOne" class="accordion-body collapse"  >
                                <div class="accordion-inner">
                                    This program is geared to engage the children both physically and mentally. The Lil’Dragon program teaches focus, respect, discipline, and self control. Our Lil’Dragons improve their balance, flexibility, coordination and physical fitness. All of these gains help to give our Lil’ Dragons greater confidence. The Lil’Dragons have their own Belt and Stripe System to track improvement. Although every belt level has its own curriculum and certain requirements are uniform, the underlying goal for the Lil’Dragon program is to bring out the strengths of each individual. The basic life skills learned through our Lil’Dragon program become a cornerstone for their future development of identity.
                                </div>
                              </div>
                            </div>
                            <div class="accordion-group">
                              <div class="accordion-heading">
                                <table class="table table-striped">
                                    <tr class="info">
                                        <th>Course</th>
                                        <th>Date</th>
                                        <th>Days</th>
                                        <th>Time</th>
                                        <th>Price</th>
                                    </tr>
                                    <tr >
                                        <td>Soccer(8-12)</td>
                                        <td>Jun. 19 - Jul. 20</td>
                                        <td>Mon,Tues</td>
                                        <td>5:00pm - 7:00pm</td>
                                        <td>
                                            <a class="btn btn-success btn-small btn-block" href="#">$360</a>
                                            <a class="btn btn-small accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">Details</a>
                                        </td>
                                    </tr>
                                </table>
                              </div>
                              <div id="collapseTwo" class="accordion-body collapse"  >
                                <div class="accordion-inner">
                                     This program is geared to engage the children both physically and mentally. The Lil’Dragon program teaches focus, respect, discipline, and self control. Our Lil’Dragons improve their balance, flexibility, coordination and physical fitness. All of these gains help to give our Lil’ Dragons greater confidence. The Lil’Dragons have their own Belt and Stripe System to track improvement. Although every belt level has its own curriculum and certain requirements are uniform, the underlying goal for the Lil’Dragon program is to bring out the strengths of each individual. The basic life skills learned through our Lil’Dragon program become a cornerstone for their future development of identity.
                                </div>
                              </div>
                            </div>
                            <div class="accordion-group">
                              <div class="accordion-heading">
                                <table class="table table-striped">
                                    <tr class="info">
                                        <th>Course</th>
                                        <th>Date</th>
                                        <th>Days</th>
                                        <th>Time</th>
                                        <th>Price</th>
                                    </tr>
                                    <tr >
                                        <td>Soccer(8-12)</td>
                                        <td>Jun. 19 - Jul. 20</td>
                                        <td>Mon,Tues</td>
                                        <td>5:00pm - 7:00pm</td>
                                        <td>
                                            <a class="btn btn-success btn-small btn-block" href="#">$360</a>
                                            <a class="btn btn-small accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree">Details</a>
                                        </td>
                                    </tr>
                                </table>
                              </div>
                              <div id="collapseThree" class="accordion-body collapse"  >
                                <div class="accordion-inner">
                                      This program is geared to engage the children both physically and mentally. The Lil’Dragon program teaches focus, respect, discipline, and self control. Our Lil’Dragons improve their balance, flexibility, coordination and physical fitness. All of these gains help to give our Lil’ Dragons greater confidence. The Lil’Dragons have their own Belt and Stripe System to track improvement. Although every belt level has its own curriculum and certain requirements are uniform, the underlying goal for the Lil’Dragon program is to bring out the strengths of each individual. The basic life skills learned through our Lil’Dragon program become a cornerstone for their future development of identity.
                                </div>
                              </div>
                            </div>
                            
                            <div class="accordion-group">
                              <div class="accordion-heading">
                                 <table class="table table-striped">
                                    <tr class="info">
                                        <th>Course</th>
                                        <th>Date</th>
                                        <th>Days</th>
                                        <th>Time</th>
                                        <th>Price</th>
                                    </tr>
                                    <tr >
                                        <td>Soccer(8-12)</td>
                                        <td>Jun. 19 - Jul. 20</td>
                                        <td>Mon,Tues</td>
                                        <td>5:00pm - 7:00pm</td>
                                        <td>
                                            <a class="btn btn-success btn-small btn-block" href="#">$360</a>
                                            <a class="btn btn-small accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion2" href="#collapseFour">Details</a>
                                        </td>
                                    </tr>
                                </table>
                              </div>
                              <div id="collapseFour" class="accordion-body collapse"  >
                                <div class="accordion-inner">
                                      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                </div>
                              </div>
                            </div>
                            
                            <div class="accordion-group">
                              <div class="accordion-heading">
                                <table class="table table-striped">
                                    <tr class="info">
                                        <th>Course</th>
                                        <th>Date</th>
                                        <th>Days</th>
                                        <th>Time</th>
                                        <th>Price</th>
                                    </tr>
                                    <tr >
                                        <td>Soccer(8-12)</td>
                                        <td>Jun. 19 - Jul. 20</td>
                                        <td>Mon,Tues</td>
                                        <td>5:00pm - 7:00pm</td>
                                        <td>
                                            <a class="btn btn-success btn-small btn-block" href="#">$360</a>
                                            <a class="btn btn-small accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion2" href="#collapseFive">Details</a>
                                        </td>
                                    </tr>
                                </table>
                              </div>
                              <div id="collapseFive" class="accordion-body collapse"  >
                                <div class="accordion-inner">
                                  This program is geared to engage the children both physically and mentally. The Lil’Dragon program teaches focus, respect, discipline, and self control. Our Lil’Dragons improve their balance, flexibility, coordination and physical fitness. All of these gains help to give our Lil’ Dragons greater confidence. The Lil’Dragons have their own Belt and Stripe System to track improvement. Although every belt level has its own curriculum and certain requirements are uniform, the underlying goal for the Lil’Dragon program is to bring out the strengths of each individual. The basic life skills learned through our Lil’Dragon program become a cornerstone for their future development of identity.
                                </div>
                              </div>
                            </div>
                            
                            <div class="accordion-group">
                              <div class="accordion-heading">
                                <table class="table table-striped">
                                    <tr class="info">
                                        <th>Course</th>
                                        <th>Date</th>
                                        <th>Days</th>
                                        <th>Time</th>
                                        <th>Price</th>
                                    </tr>
                                    <tr >
                                        <td>Soccer(8-12)</td>
                                        <td>Jun. 19 - Jul. 20</td>
                                        <td>Mon,Tues</td>
                                        <td>5:00pm - 7:00pm</td>
                                        <td>
                                            <a class="btn btn-success btn-small btn-block" href="#">$360</a>
                                            <a class="btn btn-small accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion2" href="#collapseSix">Details</a>
                                        </td>
                                    </tr>
                                </table>
                              </div>
                              <div id="collapseSix" class="accordion-body collapse"  >
                                <div class="accordion-inner">
                                  This program is geared to engage the children both physically and mentally. The Lil’Dragon program teaches focus, respect, discipline, and self control. Our Lil’Dragons improve their balance, flexibility, coordination and physical fitness. All of these gains help to give our Lil’ Dragons greater confidence. The Lil’Dragons have their own Belt and Stripe System to track improvement. Although every belt level has its own curriculum and certain requirements are uniform, the underlying goal for the Lil’Dragon program is to bring out the strengths of each individual. The basic life skills learned through our Lil’Dragon program become a cornerstone for their future development of identity.
                                </div>
                              </div>
                            </div>
                        </div>
                    </div>
                  </div>
                </div>
              </div>

<!-- Javascript -->
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
        <!-- 
		<script type="text/javascript">
jQuery(document).ready(function() {
  jQuery(".expandable-content").hide();
  //toggle the componenet with class msg_body
  jQuery(".expandable-heading").click(function()
  {
    jQuery(this).next(".expandable-content").slideToggle(500);
  });
});

</script>
 -->
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
                codeAddress(x.innerHTML);
            }

        );

        </script>

</asp:Content>