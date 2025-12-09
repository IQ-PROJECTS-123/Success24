  <%@ Page Title="" Language="C#" MasterPageFile="~/24.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Success24v2.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<fieldset style="margin-top:70px; background-color:yellow; border:2px solid #0d6efd; padding:20px; border-radius:10px;">
    <legend style="font-size:22px; font-weight:bold; color:#0d6efd;"><center><h1>Registration Form</h1></center></legend>

<div class="container mt-3">

    <!-- Row 1 -->
    <div class="row">
        <div class="col-lg-6 mb-2">
            <div class="form-floating">
                <asp:TextBox ID="txtname" runat="server" class="form-control"></asp:TextBox>
                <label>Full Name</label>
            </div>
        </div>

        <div class="col-lg-6 mb-2">
            <div class="form-floating">
                <asp:TextBox ID="txtdob" runat="server" TextMode="Date" class="form-control"></asp:TextBox>
                <label>Date of Birth</label>
            </div>
        </div>
    </div>

    <!-- Row 2 -->
    <div class="row">
        <div class="col-lg-6 mb-2">
            <div class="form-floating">
                <asp:DropDownList runat="server" ID="txtyear" class="form-control">
                    <asp:ListItem Value="">-- Select Year --</asp:ListItem>
                    <asp:ListItem>2005</asp:ListItem><asp:ListItem>2006</asp:ListItem><asp:ListItem>2007</asp:ListItem>
                    <asp:ListItem>2008</asp:ListItem><asp:ListItem>2009</asp:ListItem><asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem><asp:ListItem>2012</asp:ListItem><asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem><asp:ListItem>2015</asp:ListItem><asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem><asp:ListItem>2018</asp:ListItem><asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem><asp:ListItem>2021</asp:ListItem><asp:ListItem>2022</asp:ListItem>
                    <asp:ListItem>2023</asp:ListItem><asp:ListItem>2024</asp:ListItem><asp:ListItem>2025</asp:ListItem>
                </asp:DropDownList>
                <label>Graduation Year</label>
            </div>
        </div>

        <div class="col-lg-6 mb-2">
            <div class="form-floating">
                <asp:TextBox ID="txtgq" runat="server" class="form-control"></asp:TextBox>
                <label>Graduation Qualification</label>
            </div>
        </div>
    </div>

    <!-- Row 3 -->
    <div class="row">
        <div class="col-lg-6 mb-2">
            <div class="form-floating">
                <asp:TextBox ID="txtmq" runat="server" class="form-control"></asp:TextBox>
                <label>Masters Qualification</label>
            </div>
        </div>

        <div class="col-lg-6 mb-2">
            <div class="form-floating">
                <asp:DropDownList runat="server" ID="txtmgy" class="form-control">
                    <asp:ListItem Value="">-- Select Year --</asp:ListItem>
                    <asp:ListItem>2008</asp:ListItem><asp:ListItem>2009</asp:ListItem><asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem><asp:ListItem>2012</asp:ListItem><asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem><asp:ListItem>2015</asp:ListItem><asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem><asp:ListItem>2018</asp:ListItem><asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem><asp:ListItem>2021</asp:ListItem><asp:ListItem>2022</asp:ListItem>
                    <asp:ListItem>2023</asp:ListItem><asp:ListItem>2024</asp:ListItem><asp:ListItem>2025</asp:ListItem>
                </asp:DropDownList>
                <label>Master Graduation Year</label>
            </div>
        </div>
    </div>

    <!-- Row 4 -->
    <div class="row">
        <div class="col-lg-6 mb-2">
            <div class="form-floating">
                <asp:TextBox ID="txtmob" runat="server" class="form-control" TextMode="Phone"></asp:TextBox>
                <label>Mobile Number (Primary)</label>
            </div>
        </div>

        <div class="col-lg-6 mb-2">
            <div class="form-floating">
                <asp:TextBox ID="txtwhtsap" runat="server" class="form-control" TextMode="Phone"></asp:TextBox>
                <label>Whatsapp Number</label>  
            </div>
        </div>
    </div>

    <!-- Row 5 -->
    <div class="row">
        <div class="col-lg-6 mb-2">
            <div class="form-floating">
                <asp:TextBox ID="txtmobsec" runat="server" class="form-control" TextMode="Phone"></asp:TextBox>
                <label>Mobile Number (Secondary)</label>
            </div>
        </div>

        <div class="col-lg-6 mb-2">
            <div class="form-floating">
                <asp:TextBox ID="txtemail" runat="server" class="form-control" TextMode="Email"></asp:TextBox>
                <label>Email Address</label>
            </div>
        </div>
    </div>

    <!-- Row 6 -->
    <div class="row">
        <div class="col-lg-6 mb-2">
            <div class="form-floating">
                <asp:TextBox ID="txtfather" runat="server" class="form-control"></asp:TextBox>
                <label>Father's Name</label>
            </div>
        </div>

        <div class="col-lg-6 mb-2">
            <div class="form-floating">
                <asp:TextBox ID="txtguardian" runat="server" class="form-control"></asp:TextBox>
                <label>Guardian's Name</label>
            </div>
        </div>
    </div>

    <!-- Row 7 -->
    <div class="row">
        <div class="col-lg-6 mb-2">
            <div class="form-floating">
                <asp:TextBox ID="txtrelationship" runat="server" class="form-control"></asp:TextBox>
                <label>Guardian's Relationship</label>
            </div>
        </div>

        <div class="col-lg-6 mb-2">
            <div class="form-floating">
                <asp:TextBox ID="txtgcontact" runat="server" class="form-control" TextMode="Phone"></asp:TextBox>
                <label>Guardian's Contact Number</label>
            </div>
        </div>
    </div>

    <!-- Row 8 -->
    <div class="row">
        <div class="col-lg-6 mb-2">
            <div class="form-floating">
                <asp:TextBox ID="txtaddress" runat="server" class="form-control" TextMode="MultiLine" style="height:100px;"></asp:TextBox>
                <label>Full Current Address</label>
            </div>
        </div>

        <div class="col-lg-6 mb-2">
            <div class="form-floating">
                <asp:TextBox ID="txtpaddress" runat="server" class="form-control" TextMode="MultiLine" style="height:100px;"></asp:TextBox>
                <label>Full Permanent Address</label>
            </div>
        </div>
    </div>

    <!-- Row 9 -->
    <div class="row">
        <div class="col-lg-6 mb-2">
            <div class="form-floating">
                <asp:DropDownList ID="ddknow" runat="server" class="form-control">
                    <asp:ListItem Value="">Select Option</asp:ListItem>
                    <asp:ListItem>By Reference</asp:ListItem>
                    <asp:ListItem>Call by Radha</asp:ListItem>
                    <asp:ListItem>Call by Shivani</asp:ListItem>
                    <asp:ListItem>Call by Priya</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <label>How do you Know Us?</label>
            </div>
        </div>

        <div class="col-lg-6 mb-2">
            <div class="form-floating">
                <asp:TextBox ID="txtreferee" runat="server" class="form-control"></asp:TextBox>
                <label>Referee</label>
            </div>
        </div>
    </div>

    <div class="col-12">
        <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="btn btn-primary w-100 py-3" OnClick="btnSubmit_Click" />
    </div>
</div>

</fieldset>

<hr />

</asp:Content>
