<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="search_provider.aspx.cs" Inherits="mono.search_result_provider" %>

<asp:Content runat="server" id="BodyContent" ContentPlaceHolderID="contentPlaceHolder">
 <div id="mainBody">

        <div class="container">
        
        	<div class="container-fluid">
        	 <div class="span3 well well-small">
        	 <h6 class="pagination-centered">Featured Provider "Provider's Name"</h6>
        	  <a href="">  <img src="assets/img/carousel/mom.jpg" width="300" height="400" /></a>
     
        	 </div>
        	   <div class="span8 pull-left">
           <iframe width="688" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=zh-CN&amp;geocode=&amp;q=2735+Pfingsten+Rd,+Glenview,+IL,+USA&amp;aq=&amp;sll=42.045458,-87.698856&amp;sspn=0.062719,0.169086&amp;ie=UTF8&amp;hq=&amp;hnear=2735+Pfingsten+Rd,+Glenview,+Illinois+60026&amp;t=m&amp;z=14&amp;ll=42.103833,-87.849039&amp;output=embed"></iframe>


                    <br />
                    <small><a href="http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=zh-CN&amp;geocode=&amp;q=2735+Pfingsten+Rd,+Glenview,+IL,+USA&amp;aq=&amp;sll=42.045458,-87.698856&amp;sspn=0.062719,0.169086&amp;ie=UTF8&amp;hq=&amp;hnear=2735+Pfingsten+Rd,+Glenview,+Illinois+60026&amp;t=m&amp;z=14&amp;ll=42.103833,-87.849039" style="color:#0000FF;text-align:left">View Larger Map</a></small>        	   </div>
        	</div>
        	
        </div>

        
        <div class="container">
            <div class="container-fluid">
                <div class="span2 pull-left well">
                    <div class="form-inline">
                      <label class="control-label" for="inputEmail">Search</label>
                      <input type="text" id="inputEmail" placeholder=" " style="width:157px;">
                    </div>
                    <div class="form-inline">
                      <label class="control-label">Distance from location</label>
                      <select style="width:171px;">
                        <option>5 miles</option>
                        <option>10 miles</option>
                        <option>15 miles</option>
                        <option>25 miles</option>
                        <option>50 miles</option>
                        <option>any distance</option>
                      </select>
                    </div>
                    
                    <form class="form-inline">
                      <label class="control-label" for="inputEmail">City</label>
                      <input type="text" id="inputEmail" placeholder=" " style="width:157px;">
                    </form>
                    <form class="form-inline">
                      <label class="control-label" for="inputEmail">Provider Name</label>
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
                    <div class="row">
                      <div class="span4"><h4>Search results for "Evanston Club":</h4></div>
                      <div class="span3 pull-right">
                        <select>
                          <option>Sort by</option>
                          <option>Distance</option>
                          <option>Price(low to high)</option>
                          <option>Price(high to low)</option>
                          <option>Most Popular</option>
                          <option>Average Customer Review</option>
                        </select>
                      </div>
                    </div>
                    <div class="row">
                        <div class="span2 ">
                            <img src="assets/images/provider/northparkdistrict.jpg" width="200" height="100" />


                            <div class="pagination-centered">
                                <a href="course_info.aspx"><h7>North Park District</h7></a>
                                <a class="btn btn-success btn-small btn-block" href="#">stars!!!</a>
                            </div>
                            <p class="small"><font size="1" face="verdana" >
                            The purpose of the club is to provide an environment where young athletes can engage in healthy soccer competition...
                            </font></p>
                            
                        </div>
                        <div class="span6">
                            <table class="table table-striped">
                                <tr class="info">
                                    <th>Course</th>
                                    <th>Date</th>
                                    <th>Days</th>
                                    <th>Time</th>
                                    <th>Age</th>
                                    <th>#Available Slots</th>
                                    <th>#Total Slots</th>
                                    <th>Price</th>
                                </tr>
                                <tr >
                                    <td><a href="course_info.aspx">Soccer</a></td>
                                    <td>Jun. 19 - Jul. 20</td>
                                    <td>Mo,Tu</td>
                                    <td>5:00pm - 7:00pm</td>
                                    <td>8-12</td>
                                    <td>8</td>
                                    <td>12</td>
                                    <td><a class="btn btn-success btn-small btn-block" href="#">$360</a></td>
                                </tr>
                                <tr >
                                    <td><a href="course_info.aspx">Soccer</a></td>
                                    <td>Jun. 20 - Jul. 30</td>
                                    <td>T,Th,Sat</td>
                                    <td>2:00pm - 4:30pm</td>
                                    <td>15+</td>
                                    <td>8</td>
                                    <td>12</td>
                                    <td><a class="btn btn-success btn-small btn-block" href="#">$200</a></td>
                                </tr>
                                <tr >
                                    <td><a href="course_info.aspx">Basketball</a></td>
                                    <td>Jun. 19 - Jul. 20</td>
                                    <td>Mo,Tu</td>
                                    <td>5:00pm - 7:00pm</td>
                                    <td><10</td>
                                    <td>8</td>
                                    <td>12</td>
                                    <td><a class="btn btn-success btn-small btn-block" href="#">$360</a></td>
                                </tr>
                                <tr >
                                    <td><a href="course_info.aspx">swimming</a></td>
                                    <td>Jun. 19 - Jul. 20</td>
                                    <td>Mo,Tu</td>
                                    <td>5:00pm - 7:00pm</td><td>10+</td>
                                    <td>8</td>
                                    <td>12</td>
                                    <td><a class="btn btn-success btn-small btn-block" href="#">$360</a></td>
                                </tr>
                                <tr >
                                    <td><a href="course_info.aspx">Soccer</a></td>
                                    <td>Jun. 19 - Jul. 20</td>
                                    <td>Mo,Tu</td>
                                    <td>5:00pm - 7:00pm</td>
                                    <td>8-12</td>
                                    <td>8</td>
                                    <td>12</td>
                                    <td><a class="btn btn-success btn-small btn-block" href="#">$360</a></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row">
                        <div class="span2 ">
                            <img src="assets/images/provider/worldsoccer.jpg" width="200" height="100" />


                            <div class="pagination-centered">
                                <a href="course_info.aspx"><h7>World Wide Soccer Club</h7></a>
                                <a class="btn btn-success btn-small btn-block" href="#">stars!!!</a>
                            </div>
                            <p class="small"><font size="1" face="verdana" >
                            The purpose of the club is to provide an environment where young athletes can engage in healthy soccer competition...
                            </font></p>
                            
                        </div>
                        <div class="span6">
                            <table class="table table-striped">
                                <tr class="info">
                                    <th>Course</th>
                                    <th>Date</th>
                                    <th>Days</th>
                                    <th>Time</th>
                                    <th>Age</th>
                                    <th>#Available Slots</th>
                                    <th>#Total Slots</th>
                                    <th>Price</th>
                                </tr>
                                <tr >
                                    <td><a href="course_info.aspx">Soccer</a></td>
                                    <td>Jun. 19 - Jul. 20</td>
                                    <td>Mo,Tu</td>
                                    <td>5:00pm - 7:00pm</td>
                                    <td>8-12</td>
                                    <td>8</td>
                                    <td>12</td>
                                    <td><a class="btn btn-success btn-small btn-block" href="#">$360</a></td>
                                </tr>
                                <tr >
                                    <td><a href="course_info.aspx">Soccer</a></td>
                                    <td>Jun. 20 - Jul. 30</td>
                                    <td>T,Th,Sat</td>
                                    <td>2:00pm - 4:30pm</td>
                                    <td>15+</td>
                                    <td>8</td>
                                    <td>12</td>
                                    <td><a class="btn btn-success btn-small btn-block" href="#">$200</a></td>
                                </tr>
                                <tr >
                                    <td><a href="course_info.aspx">Basketball</a></td>
                                    <td>Jun. 19 - Jul. 20</td>
                                    <td>Mo,Tu</td>
                                    <td>5:00pm - 7:00pm</td>
                                    <td><10</td>
                                    <td>8</td>
                                    <td>12</td>
                                    <td><a class="btn btn-success btn-small btn-block" href="#">$360</a></td>
                                </tr>
                                <tr >
                                    <td><a href="course_info.aspx">swimming</a></td>
                                    <td>Jun. 19 - Jul. 20</td>
                                    <td>Mo,Tu</td>
                                    <td>5:00pm - 7:00pm</td><td>10+</td>
                                    <td>8</td>
                                    <td>12</td>
                                    <td><a class="btn btn-success btn-small btn-block" href="#">$360</a></td>
                                </tr>
                                <tr >
                                    <td><a href="course_info.aspx">Soccer</a></td>
                                    <td>Jun. 19 - Jul. 20</td>
                                    <td>Mo,Tu</td>
                                    <td>5:00pm - 7:00pm</td>
                                    <td>8-12</td>
                                    <td>8</td>
                                    <td>12</td>
                                    <td><a class="btn btn-success btn-small btn-block" href="#">$360</a></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
<!-- Javascript -->
<!-- Placed at the end of the document so the pages load faster -->
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

            <script type="text/javascript">
                function showValue(newValue) {
                    document.getElementById("range").innerHTML = newValue;
                }
	</script>

</asp:Content>