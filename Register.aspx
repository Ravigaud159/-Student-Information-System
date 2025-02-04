<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Student_Information_System.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* General page background */
        body {
            background-color: yellow;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        /* Container styling for the registration form */
        .register-container {
            width: 400px;
            margin: 100px auto;
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        .form-control:focus {
            outline: none;
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        .btn-submit {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-submit:hover {
            background-color: #0056b3;
        }

        .create-account {
            text-align: center;
            margin-top: 20px;
        }

        .create-account a {
            color: #FFF;
            text-decoration: none;
        }

        .create-account a:hover {
            text-decoration: underline;
        }

        .error-message {
            text-align: center;
            margin-top: 15px;
        }

         .btn-primary {
        display: inline-block;
        padding: 12px 25px;
        font-size: 16px;
        color: white;
        background-color: green;
        border: none;
        border-radius: 5px;
        text-align: center;
        text-decoration: none;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    /* Hover effect for the button */
    .btn-primary:hover {
        background-color: #0056b3;
    }

    /* Optional: Style for the paragraph containing the link */
    p {
        text-align: center;
        margin-top: 20px;
    }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="register-container">
        <h2><asp:Label ID="Label1" runat="server" Text="Register"></asp:Label></h2>

        <div>
            <asp:Label runat="server" Text="Enter Username"></asp:Label><br />
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div>
            <asp:Label runat="server" Text="Enter Email"></asp:Label><br />
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div>
            <asp:Label runat="server" Text="Enter Password"></asp:Label><br />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
        </div>
        
        <div>
            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn-submit" OnClick="btnRegister_Click" />
        </div>

        <div class="create-account">
            <a href="Login.aspx">Already Have An Account</a>
        </div>
        

         <p>
          <a href="Login.aspx" class="btn btn-primary">Login</a> 
          </p>
      
    </div>
</asp:Content>
