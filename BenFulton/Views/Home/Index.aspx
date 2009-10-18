<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Ben and Cathy Fulton
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="colOne">
    <h2><%= Html.Encode(ViewData["Message"]) %></h2>
    <img src="../../Content/images/FultonFamily.jpg" alt="" width="149" height="107" class="image" />
		<div class="indent">
    <% foreach (var person in (ViewData["Family"] as List<BenFulton.Controllers.FamilyMember>))
       { %>
    <p>
       <strong><%= person.Name%></strong> is <%= person.Description %>
    </p>
    <% } %>
    <br />
		<h3>What we do</h3>
		<p>Ben reads a lot.  Check out his book reviews at LibraryThing. Cathy reads a lot too, 
		    but she's not so noisy about it.  She likes mysteries, particularly of the Agatha Christie
		    variety.  Jesse takes swimming classes and plays a mean piano.  His latest song is called 
		    "I Remember".   Ben spends a lot of time on Bloomingpedia writing articles about local history.
		    Proin placerat, nisl ut mollis tempus, magna nibh fringilla est, consequat cursus diam metus vel dolor. Fusce ut nulla sit amet mi sodales dictum. Proin tempor purus quis est. Donec nunc felis, hendrerit non, facilisis consectetuer, faucibus nec, leo. Etiam vestibulum luctus nibh. In hac habitasse platea dictumst. Vivamus luctus magna. Integer aliquam feugiat massa.</p>
		<p>Sed tempor pede nec est. Aenean accumsan vestibulum nibh. Aliquam erat volutpat. Praesent a odio. Proin at libero in tellus scelerisque aliquam. Morbi at nisi. Ut at erat vel massa vulputate ultrices. Aliquam suscipit. Proin consequat, felis eu pulvinar adipiscing, augue lorem vestibulum turpis, a ornare diam lectus et neque. Aenean quis lacus. </p>
		</div>
	</div>
    <div id="colTwo">
		<h3>What we're doing</h3>
		<p>Vestibulum pellentesque. Morbi sit amet magna ac lacus dapibus mauris sed elit venenatis porttitor. Morbi sit amet lorem ipsum dolor sit amet veroeros consequat blandit sed nullam. Blandit consequat etiam dolor.</p>
		<h3>Our favorite things</h3>
		<ul>
    <% foreach (var anchor in (ViewData["Blogroll"] as List<HtmlAnchor>))
       { %>
    <li class="first">
       <a href='<%= anchor.HRef %>' ><%= anchor.Title%></a>
    </li>
    <% } %>			
		</ul>
	</div>	
    <div id="footer" >Thanks to <a href="http://www.freecsstemplates.org/">Free CSS Templates</a> for <strong>Earthling</strong></div>
</asp:Content>
