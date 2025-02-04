<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewStudents.aspx.cs" Inherits="Student_Information_System.ViewStudents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f9f9f9;
        }

        h2 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        .search-container {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }

        .search-container input[type="text"] {
            padding: 10px;
            width: 300px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        .search-container input[type="text"]:focus {
            outline: none;
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        .search-container button {
            padding: 10px 20px;
            margin-left: 10px;
            background-color: #007bff;
            border: none;
            color: white;
            border-radius: 4px;
            font-size: 14px;
            cursor: pointer;
        }

        .search-container button:hover {
            background-color: #0056b3;
        }

        .gridview-container {
            margin: 0 auto;
            width: 80%;
        }

        .gridview-container table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .gridview-container table th,
        .gridview-container table td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }

        .gridview-container table th {
            background-color: #007bff;
            color: white;
        }

        .gridview-container table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .gridview-container table tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>View Students</h2>
    <div class="search-container">
        <asp:TextBox ID="SearchTextBox" runat="server" Placeholder="Search by Name"></asp:TextBox>
        <asp:Button ID="SearchButton" runat="server" Text="Search" OnClick="SearchButton_Click" />
    </div>
    <div class="gridview-container">
        <asp:GridView ID="StudentsGridView" runat="server" AutoGenerateColumns="True"></asp:GridView>
    </div>
</asp:Content>
