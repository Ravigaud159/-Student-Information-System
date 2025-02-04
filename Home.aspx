<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Student_Information_System.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 0;
        }

        /* Container styles */
        .container {
            width: 100%;
            max-width: 900px;
            margin: 50px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 20px #fff;
            text-align: center;
        }

        /* Header styles */
        h2 {
            font-size: 32px;
            color: #333;
            margin-bottom: 20px;
            font-weight: 600;
        }

        /* Image section */
        .content-image-wrapper {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 30px;
            flex-wrap: wrap;
            margin-top: 20px;
        }

        .image-container {
            flex: 1;
            text-align: center;
            max-width: 40%;
        }

        .home-image {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .text-content {
            flex: 2;
            text-align: left;
            max-width: 55%;
        }

        /* Button styles */
        .btn {
            display: inline-block;
            padding: 12px 25px;
            margin: 10px;
            font-size: 16px;
            text-decoration: none;
            border-radius: 6px;
            font-weight: bold;
            transition: all 0.3s ease;
        }

        .btn-primary {
            background-color: green;
            color: white;
            border: none;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .btn-secondary {
            background-color: Green;
            color: white;
            border: none;
        }

        .btn-secondary:hover {
            background-color: #5a6268;
        }

        /* Additional styles for responsiveness */
        @media screen and (max-width: 768px) {
            .container {
                padding: 20px;
            }

            .content-image-wrapper {
                flex-direction: column;
                align-items: center;
            }

            .image-container {
                max-width: 80%;
            }

            .text-content {
                max-width: 100%;
                text-align: center;
            }

            h2 {
                font-size: 28px;
            }

            .btn {
                width: 100%;
                text-align: center;
                padding: 15px;
                font-size: 18px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Welcome to HomePage</h2>

        <div class="content-image-wrapper">
            <div class="image-container">
                <asp:Image ID="Image1" runat="server" ImageUrl="images/students.png" CssClass="home-image" />
            </div>

            <div class="text-content">
                <div id="beforeLoginContent" runat="server" visible="true">
                    <p>
                        <h3>Welcome to Student Information System</h3>
                        This platform is designed to help you efficiently manage and organize student data. To begin, please log in or register for an account.


                    </p>

                    <p>
                        <a href="Login.aspx" class="btn btn-primary">Login</a>
                        <a href="Register.aspx" class="btn btn-secondary">Register</a>
                    </p>
                </div>

                <div id="afterLoginContent" runat="server" visible="false">
                    <p>
                        Welcome back, <asp:Label ID="lblUserName" runat="server"></asp:Label>! You are now logged in.
                    </p>
                    <p>
                        You can start managing your data here:
                    </p>
                  
                </div>
            </div>
        </div>
    </div>
</asp:Content>
