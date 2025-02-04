<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="Student_Information_System.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        .form-container {
            max-width: 500px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .form-container input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        .form-container input[type="text"]:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
            outline: none;
        }

        .form-container button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }

        .form-container button:hover {
            background-color: #0056b3;
        }

        .form-container label {
            display: block;
            margin-bottom: 10px;
            color: green;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-container">
        <h2>Add Student</h2>
        <asp:Label ID="MessageLabel" runat="server" ForeColor="Green"></asp:Label>
        <asp:TextBox ID="NameTextBox" runat="server" Placeholder="Name"></asp:TextBox><br />
        <asp:TextBox ID="AgeTextBox" runat="server" Placeholder="Age"></asp:TextBox><br />
        <asp:TextBox ID="ClassTextBox" runat="server" Placeholder="Class"></asp:TextBox><br />
        <asp:TextBox ID="EmailTextBox" runat="server" Placeholder="Email"></asp:TextBox><br />
        <asp:Button ID="SaveButton" runat="server" Text="Save" Height="35px" OnClick="SaveButton_Click" />
    </div>
</asp:Content>
