<%@ Page Title="" Language="C#" MasterPageFile="~/24.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="Success24v2.Events" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .image-gallery {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 20px;
    padding: 20px;
}

.card {
    background: #fff;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0px 3px 12px rgba(0,0,0,0.15);
    transition: 0.3s ease;
}
.card-header{
       background:#00ff90;
 color: black;
 padding: 50px 50px;
 text-align: center;
 margin-top: 90px; 
}
.card img {
    width: 100%;
    height: 230px;
    object-fit: cover;
    display: block;
    transition: 0.3s ease;
}

.card:hover {
    transform: translateY(-5px);
    box-shadow: 0px 6px 20px rgba(0,0,0,0.25);
}

.card:hover img {
    transform: scale(1.05);
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <h1 class="card-header">Events</h1>
 <div class="image-gallery">
    <div class="card">
        <img src="img/about-2.png" />
       <b> <p>This is First Events.</p></b>
    </div>

    <div class="card">
        <img src="img/breadcrumb.jpg" />
        <b><p>This is second Events.</p></b>
    </div>

    <div class="card">
        <img src="img/carousel-1.jpg" />
        <b><p>This is third Events.</p></b>
    </div>

    <div class="card">
        <img src="img/class-1.jpg" />
        <b><p>This is fourth Events.</p></b>
    </div>

    <div class="card">
        <img src="img/class-2.jpg" />
       <b><p>This is fifth Events.</p></b>
    </div>

    <div class="card">
        <img src="img/class-3.jpg" />
        <p>This is sixth Events.</p>
    </div>
      <div class="card">
     <img src="img/class-3.jpg" />
     <p>This is sixth Events.</p>
 </div>
      <div class="card">
     <img src="img/class-3.jpg" />
     <p>This is sixth Events.</p>
 </div>
      <div class="card">
     <img src="img/class-3.jpg" />
     <p>This is sixth Events.</p>
 </div>
      <div class="card">
     <img src="img/class-3.jpg" />
     <p>This is sixth Events.</p>
 </div>
      <div class="card">
     <img src="img/class-3.jpg" />
     <p>This is sixth Events.</p>
 </div>
      <div class="card">
     <img src="img/class-3.jpg" />
     <p>This is sixth Events.</p>
 </div>
</div>

</asp:Content>
