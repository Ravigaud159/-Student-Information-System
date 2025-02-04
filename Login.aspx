<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Student_Information_System.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Add any page-specific styles or scripts here -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="login-container">
        <h2><asp:Label ID="Label1" runat="server" Text="Login"></asp:Label></h2>

        <div>
            <asp:Label runat="server" Text="Enter Username"></asp:Label>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Please Enter Your Username" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label runat="server" Text="Enter Password"></asp:Label>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please Enter Your Password" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
        </div>

        <div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn-submit" OnClick="btnSubmit_Click" />
        </div>

        <div class="create-account">
            <a href="Register.aspx">Create An Account</a>
        </div>

        <div class="error-message">
            <asp:Label ID="lblError" runat="server" ForeColor="Red" Text=""></asp:Label>
        </div>


    </div>

</asp:Content>
