<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="mono.index" %>

<asp:Content runat="server" id="BodyContent" ContentPlaceHolderID="contentPlaceHolder">
<div class="index_body"><!-- first row-->
        <!--Carousel-->
          <div id="myCarousel" class="carousel slide">
            <div class="carousel-inner ">
              <a href="#"><asp:Image ID="Image1" runat="server" /></a>
             <!-- <div class="item"><a href="#"><img src="assets/img/carousel/show.jpg" alt="" /></a></div>
              <div class="item"><a href="#"><img src="assets/img/carousel/show.jpg" alt="" /></a></div>
              <div class="item"><a href="#"><img src="assets/img/carousel/show.jpg" alt="" /></a></div>
              <div class="item"><a href="#"><img src="assets/img/carousel/show.jpg" alt="" /></a></div>-->
            </div>
            <div class="carousel-search">
                <h1>Find the best activities!</h1>
                <h4>clasclasses &nbsp camps &nbsp programs &nbsp mentors</h4>
                <div class="form-inline">
                  <asp:TextBox ID="TextBox1" runat="server" CssClass="input-xlarge" placeholder="What kind of course do you want?" />
                  <asp:TextBox ID="TextBox2" runat="server" CssClass="input-xlarge" placeholder="How many miles from..." /> 
                  <asp:TextBox ID="TextBox3" runat="server" CssClass="input-medium"  placeholder="...which City?" /> 
                  <asp:Button ID="Button1" runat="server" Text="Search" class="btn" OnClick="Button1_Click"/>
           
                </div>
            </div>
          </div> 
        <!--Carousel end-->
    </div> <!-- first row end-->
    <div class="container-categories">
      <div class="row-fluid">
        <div class="span4">
          <div class="categories" style=" background: url('assets/img/categories/1.jpg') repeat scroll 50% 50% transparent;">
            <div class="categoriesNameBackground">
        				<h3 class="categoriesName">Sports</h3>
        		</div>
        		<div class="categoriesNameBackground2">
              <ul>
        				<li class="noNode"><h3 class="detailsName"><a href ="search_provider.aspx" class="detailsLink">Soccer</a></h3></li>
                <li class="noNode"><h3 class="detailsName"><a href ="search_provider.aspx" class="detailsLink">Basketball</a></h3></li>
                <li class="noNode"><h3 class="detailsName"><a href ="search_provider.aspx" class="detailsLink">Gymnastics</a></h3></li>
              </ul>
        		</div>
          </div>        
        </div>
        <div class="span4">
          <div class="categories" style=" background: url('assets/img/categories/2.jpg') repeat scroll 50% 50% transparent;">
            <div class="categoriesNameBackground">
                <h3 class="categoriesName">Dance and Gymnastics</h3>
            </div>
            <div class="categoriesNameBackground2">
              <ul>
                <li class="noNode"><h3 class="detailsName"><a href ="search_provider.aspx" class="detailsLink">Ballet</a></h3></li>
                <li class="noNode"><h3 class="detailsName"><a href ="search_provider.aspx" class="detailsLink">Tap Dance</a></h3></li>
                <li class="noNode"><h3 class="detailsName"><a href ="search_provider.aspx" class="detailsLink">Gymnastics</a></h3></li>
              </ul>
            </div>
          </div>        
        </div>
        <div class="span4">
          <div class="categories" style=" background: url('assets/img/categories/3.jpg') repeat scroll 50% 50% transparent;">
            <div class="categoriesNameBackground">
                <h3 class="categoriesName">Music</h3>
            </div>
            <div class="categoriesNameBackground2">
              <ul>
                <li class="noNode"><h3 class="detailsName"><a href ="search_provider.aspx" class="detailsLink">Violin</a></h3></li>
                <li class="noNode"><h3 class="detailsName"><a href ="search_provider.aspx" class="detailsLink">Piano</a></h3></li>
                <li class="noNode"><h3 class="detailsName"><a href ="search_provider.aspx" class="detailsLink">Voice</a></h3></li>
              </ul>
            </div>
          </div>        
        </div>
      </div>
      <div class="row-fluid">
        <div class="span4">
          <div class="categories" style=" background: url('assets/img/categories/4.jpg') repeat scroll 50% 50% transparent;">
            <div class="categoriesNameBackground">
                <h3 class="categoriesName">Academic</h3>
            </div>
            <div class="categoriesNameBackground2">
              <ul>
                <li class="noNode"><h3 class="detailsName"><a href ="search_provider.aspx" class="detailsLink">Math Reading</a></h3></li>
                <li class="noNode"><h3 class="detailsName"><a href ="search_provider.aspx" class="detailsLink">Test Prep</a></h3></li>
                <li class="noNode"><h3 class="detailsName"><a href ="search_provider.aspx" class="detailsLink">Tutoring</a></h3></li>
              </ul>
            </div>
          </div>        
        </div>
        <div class="span4">
          <div class="categories" style=" background: url('assets/img/categories/5.jpg') repeat scroll 50% 50% transparent;">
            <div class="categoriesNameBackground">
                <h3 class="categoriesName">Camps</h3>
            </div>
            <div class="categoriesNameBackground2">
              <ul>
                <li class="noNode"><h3 class="detailsName"><a href ="search_provider.aspx" class="detailsLink">Overnight Camps</a></h3></li>
                <li class="noNode"><h3 class="detailsName"><a href ="search_provider.aspx" class="detailsLink">Outdoor Camps</a></h3></li>
                <li class="noNode"><h3 class="detailsName"><a href ="search_provider.aspx" class="detailsLink">Music Camps</a></h3></li>
              </ul>
            </div>
          </div>        
        </div>
        <div class="span4">
          <div class="categories" style=" background: url('assets/img/categories/6.jpg') repeat scroll 50% 50% transparent;">
            <div class="categoriesNameBackground">
                <h3 class="categoriesName">Arts and Crafts</h3>
            </div>
            <div class="categoriesNameBackground2">
              <ul>
                <li class="noNode"><h3 class="detailsName"><a href ="search_provider.aspx" class="detailsLink">Drawing</a></h3></li>
                <li class="noNode"><h3 class="detailsName"><a href ="search_provider.aspx" class="detailsLink">Painting</a></h3></li>
                <li class="noNode"><h3 class="detailsName"><a href ="search_provider.aspx" class="detailsLink">Cooking</a></h3></li>
              </ul>
            </div>
          </div>        
        </div>
      </div>
    </div>
    <div class="container-featuredClass">
    <h3>Featured Provides </h3>
      <div class="row-fluid">
        <div class="span3">
          <div class="featured img-polaroid">
              <a  href="provider_details.aspx"><img src="assets/img/carousel/2.jpg" alt=""/></a>
              <h5>Try Science</h5>
              <h4><a class="btn" href="provider_details.aspx">VIEW</a> <span class="pull-right">$222.00</span></h4>
          </div>
        </div>
        <div class="span3">   
          <div class=" featured img-polaroid">
              <a href="provider_details.aspx"><img src="assets/img/carousel/1.jpg" alt=""/></a>
              <h5>Chicago Swim School</h5>
              <h4><a class="btn" href="provider_details.aspx">VIEW</a> <span class="pull-right">$222.00</span></h4>
          </div>
        </div>
        <div class="span3">
          <div class="featured img-polaroid">
              <a  href="provider_details.aspx"><img src="assets/img/carousel/3.jpg" alt=""/></a>
              <h5>Big Blue Swim</h5>
              <h4><a class="btn" href="provider_details.aspx">VIEW</a> <span class="pull-right">$222.00</span></h4>
          </div>
        </div>
        <div class="span3">
          <div class="featured img-polaroid">
              <a  href="provider_details.aspx"><img src="assets/img/carousel/4.jpg" alt=""/></a>
              <h5>Make a Messterpiece</h5>
              <h4><a class="btn" href="provider_details.aspx">VIEW</a> <span class="pull-right">$222.00</span></h4>
          </div>
        </div>
      </div>
  </div>
  <!-- Javascript -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap-transition.js"></script>
    <script src="assets/js/bootstrap-alert.js"></script>
    <script src="assets/js/bootstrap-modal.js"></script>
    <script src="assets/js/bootstrap-dropdown.js"></script>
    <script src="assets/js/bootstrap-scrollspy.js"></script>
    <script src="assets/js/bootstrap-tab.js"></script>
    <script src="assets/js/bootstrap-tooltip.js"></script>
    <script src="assets/js/bootstrap-popover.js"></script>
    <script src="assets/js/bootstrap-button.js"></script>
    <script src="assets/js/bootstrap-collapse.js"></script>
    <script src="assets/js/bootstrap-carousel.js"></script>
    <script src="assets/js/bootstrap-typeahead.js"></script>
    <script src="assets/js/jquery.lightbox-0.5.js"></script>
    <script type="text/javascript">
        $('#myCarousel').carousel({
            interval: 7000
        })
        $('#featured').carousel({
            interval: 7000
        })
        $(function () {
            $('#gallery a').lightBox();
        });
  </script> 
  <script>
      $('.categories').bind('mouseenter', function () {
          $('.categoriesNameBackground', this).hide('');
          $('.categoriesNameBackground2', this).show('');
          //$('div', this).hide('normal');

      });

      $('.categories').bind('mouseleave', function () {
          $('.categoriesNameBackground', this).show('');
          $('.categoriesNameBackground2', this).hide('');
          //$('div', this).show('normal');

      });
  </script>
  <!-- Javascript end-->
    </div>
</asp:Content>