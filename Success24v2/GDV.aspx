<%@ Page Title="" Language="C#" MasterPageFile="~/24.Master" AutoEventWireup="true" CodeBehind="GDV.aspx.cs" Inherits="Success24v2.GDV" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .table-heading {
            text-align: center;
            font-size: 26px;
            font-weight: 700;
            margin-bottom: 15px;
            text-transform: uppercase;
            color: #003366;
        }

        .grid-container {
            width: 100%;
            padding: 10px 20px;
            overflow-x: auto;      
        }

        .gridview table {
            width: 100%;
            border-collapse: collapse;
            table-layout: auto;    
        }

        .gridview th {
            background-color: #003366;
            color: white;
            padding: 10px;
            font-weight: 600;
            text-align: center;
            font-size: 14px;
            white-space: nowrap;
        }

        .gridview td {
            padding: 8px;
            text-align: center;
            font-size: 14px;
            max-width: 260px;      
            white-space: nowrap;  
            overflow: hidden;    
            text-overflow: ellipsis;
        }

        .gridview tr:nth-child(even) {
            background-color: #f2f6ff;
        }

        .gridview tr:hover {
            background-color: #dce7ff;
            transition: 0.2s;
        }

        .action-btn {
            padding: 5px 12px;
            border: none;
            cursor: pointer;
            font-size: 13px;
            border-radius: 4px;
        }

        .edit-btn {
            background-color: #ffc107;
        }

        .delete-btn {
            background-color: #dc3545;
            color: white;
        }

        .edit-btn:hover {
            background-color: #e0a800;
        }

        .delete-btn:hover {
            background-color: #c82333;
        }
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="grid-container">
        <div class="table-heading" style="margin-top:50px;">Registered Students List</div>

        <asp:GridView ID="gdv" runat="server" CssClass="table table-bordered gridview" 
            AutoGenerateColumns="False" DataKeyNames="id">

            <HeaderStyle HorizontalAlign="Center" />
            <RowStyle HorizontalAlign="Center" />

            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" />
                <asp:BoundField DataField="Name" HeaderText="Full Name" />
                <asp:BoundField DataField="DOB" HeaderText="Date of Birth" /> 
                <asp:BoundField DataField="GYear" HeaderText="Graduation Year" />
                <asp:BoundField DataField="GQualification" HeaderText="Graduation Qualification" />
                <asp:BoundField DataField="MQualification" HeaderText="Masters Qualification" />
                <asp:BoundField DataField="MGYear" HeaderText="Masters Graduation Year" />
                <asp:BoundField DataField="PMobile" HeaderText="Primary Mobile" />
                <asp:BoundField DataField="Whatsapp" HeaderText="Whatsapp No." />
                <asp:BoundField DataField="SMobile" HeaderText="Secondary Mobile" />
                <asp:BoundField DataField="Email" HeaderText="Email Address" />
                <asp:BoundField DataField="FName" HeaderText="Father's Name" />
                <asp:BoundField DataField="GName" HeaderText="Guardian Name" />
                <asp:BoundField DataField="GRelation" HeaderText="Guardian Relation" />
                <asp:BoundField DataField="GCNumber" HeaderText="Guardian Contact" />
                <asp:BoundField DataField="FCAddress" HeaderText="Current Address" />
                <asp:BoundField DataField="FPAddress" HeaderText="Permanent Address" />
                <asp:BoundField DataField="KnowUs" HeaderText="How do you Know Us?" />
                <asp:BoundField DataField="Referee" HeaderText="Referee" />

                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:Button ID="btndelete" runat="server" Text="Delete"
                             CommandArgument='<%#Bind("ID") %>' 
                            CssClass="action-btn delete-btn" OnClick="btndelete_Click" />

                        &nbsp;

                        <asp:Button ID="btnedit" runat="server" Text="Edit"
                            CommandArgument='<%#Bind("ID") %>' 
                            CssClass="action-btn edit-btn" OnClick="btnedit_Click" />
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>

        </asp:GridView>

    </div>

</asp:Content>
