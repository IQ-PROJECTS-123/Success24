<%@ Page Title="" Language="C#" MasterPageFile="~/24.Master" AutoEventWireup="true" CodeBehind="AboutCompany.aspx.cs" Inherits="Success24v2.AboutCompany" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
      .about-section {
    padding: 60px 0;
    background: #f8fafc;
    font-family: 'Poppins', sans-serif;
}

.title {
    text-align: center;
    font-size: 36px;
    font-weight: 700;
    color: #222;
    margin-bottom: 10px;
}

.subtitle {
    text-align: center;
    font-size: 18px;
    background-color:orange;
    color:#16e8db;
     padding: 50px 50px;
 text-align: center;
 margin-top:10px;
    margin-bottom:10px;
}
.subtitle p{
     font-size: 38px;
 font-weight: bold;
}
.about-box {
    background: white;
    padding: 30px 40px;
    border-radius: 15px;
    box-shadow: 0px 4px 12px rgba(0,0,0,0.1);
    font-size: 18px;
    line-height: 29px;
}

.about-box ul {
    margin: 0;
    padding-left: 22px;
}

.about-box li {
    margin-bottom: 15px;
    color: #333;
}

.about-box ul.inner {
    margin-top: 10px;
}

.about-box ul.inner li {
    list-style: circle;
    margin-bottom: 8px;
}

        .banner {
            background:#00ff21;
            color: black;
            padding: 50px 50px;
            text-align: center;
            margin-top: 90px; 
        }
        .banner h1 {
            font-size: 38px;
            font-weight: bold;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- Header Banner -->
    <div class="banner">
        <h1>Success24 | Noida — A New Way To Learn Together In Noida</h1>
    </div>

    <img src="img/iq-india1.jpg"  height ="500" width="1350"/>
   
   <section class="about-section">
    <div class="col-lg-12 wow fadeInRight" data-wow-delay="0.3s">
       
        <p class="subtitle">Welcome to <strong>Success24</strong> — Where Learning Meets Innovation</p>

        <div class="about-box">
            <ul>
                <li>
                    Success24 has come up with a new learning experience that you have never experienced before.
                </li>
                <li>
                    Success24 has provided superior learning solutions to individuals & corporate clients in association with <strong>M&P Corp Society</strong>.
                </li>
                <li>
                    As a trusted educational and solution delivery partner, we supply vendors and partners with multi-skilled professional candidates.
                </li>
                <li>
                    We combine industry-level training content with expert instructors to produce a consistently breathtaking learning experience.
                </li>
                <li>
                    Success24 provides strategic solutions & training paths to boost career and skills including —
                    <ul class="inner">
                        <li>Personality Development</li>
                        <li>Communication Skills</li>
                        <li>Attitude & Professional Behavior</li>
                        <li>Technical Skills</li>
                        <li>Quality Processes (CMMI, ISO etc.)</li>
                    </ul>
                </li>
                <li>
                    Success24 visualizes a wide platform for candidates and jobseekers who want to grow their skills but lack the right opportunity or resources.
                </li>
                <li>
                    Competition has made the situation tougher — therefore Success24 introduces a magical platform
                    <strong>“Success24 Software Engineers”</strong> where candidates can experience unlimited success.
                </li>
            </ul>
        </div>
    </div>
</section>
</asp:Content>