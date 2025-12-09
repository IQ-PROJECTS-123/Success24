<%@ Page Title="" Language="C#" MasterPageFile="~/24.Master" AutoEventWireup="true" CodeBehind="GIT.aspx.cs" Inherits="Success24v2.GIT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Get in Touch - Success24</title>

    <style>
        h1 {
            font-size: 36px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 10px;
        }

        .intro {
            
                background: #0d6efd;
               color: black;
                 padding: 20px 20px;
               text-align: center;
                margin-top: 150px; 

        }

  
        .info-box {
            background: #f7f7f7;
            padding: 25px;
            border-radius: 10px;
            margin-bottom: 40px;
            box-shadow: 0 0 12px rgba(0,0,0,0.08);
        }

        .info-box h2 {
            font-size: 26px;
            margin-bottom: 15px;
            color: #007bff;
        }

        .info-box p {
            margin: 5px 0;
            font-size: 18px;
        }

        .contact-form {
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 12px rgba(0,0,0,0.08);
        }

        .contact-form label {
            font-size: 18px;
            font-weight: bold;
            display: block;
            margin-top: 12px;
        }

        .contact-form input,
        .contact-form textarea {
            width: 100%;
            padding: 12px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 17px;
        }

        .contact-form textarea {
            height: 130px;
        }

        .btn-submit {
            background: #007bff;
            color: #fff;
            padding: 12px 30px;
            border: none;
            border-radius: 6px;
            margin-top: 20px;
            font-size: 19px;
            cursor: pointer;
            transition: .3s;
        }

        .btn-submit:hover {
            background: #0056b3;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="info-box">
        <h2>📞 Contact Details</h2>
        <p><strong>Phone:</strong> +91 9555580458</p>
        <p><strong>Email:</strong> info@success24.com</p>
        
    </div>

    <div class="contact-form">
        <h2 style="margin-bottom:15px; color:#007bff;">Send a Message</h2>

        <label>Name</label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

        <label>Email</label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

        <label>Mobile</label>
        <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>

        <label>Message</label>
        <asp:TextBox ID="txtMessage" TextMode="MultiLine" runat="server"></asp:TextBox>

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn-submit" OnClick="btnSubmit_Click" />
    </div>

</asp:Content>
