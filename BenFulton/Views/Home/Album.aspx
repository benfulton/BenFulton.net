<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<BenFulton.Models.PhotoAlbum>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Photo Album
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Fulton Family Album</h2>

    <div style="text-align:center">
    <% foreach (var photo in (ViewData["Photos"] as List<BenFulton.Models.Photo>))
       { %>
    &nbsp;
        <img src="../../Content/Album/<%= photo.FileName%>.JPG" alt="<%= photo.Description%>" height="<%= photo.Size.Height%>px" width="<%= photo.Size.Width%>px" style="border: 2px solid #EEE; "  />
    <% } %>
    
    </div>
</asp:Content>
