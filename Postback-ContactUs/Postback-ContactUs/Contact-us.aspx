<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact-us.aspx.cs" Inherits="Postback_ContactUs.Contact_us" %>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Form</title>
    <style>
        body {
            font-family: Verdana, sans-serif;
            background-color: #eaeaea;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 600px;
            margin: auto;
            background: #ffffff;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        h2 {
            text-align: center;
            color: #444444;
        }
        label {
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
        }
        input[type="text"], input[type="email"], textarea {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #cccccc;
            border-radius: 5px;
        }
        input[type="text"]:focus, input[type="email"]:focus, textarea:focus {
            border-color: #007BFF;
        }
        .btn-submit {
            background-color: #28a745;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        .btn-submit:hover {
            background-color: #218838;
        }
        .result {
            margin-top: 20px;
            padding: 15px;
            background-color: #f8f9fa;
            border-left: 5px solid #17a2b8;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Contact Us</h2>

            <!-- Input for Name -->
            <asp:Label ID="lblName" runat="server" Text="Name:" AssociatedControlID="txtName"></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

            <!-- Input for Email -->
            <asp:Label ID="lblEmail" runat="server" Text="Email:" AssociatedControlID="txtEmail"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>

            <!-- Textarea for Message -->
            <asp:Label ID="lblMessage" runat="server" Text="Message:" AssociatedControlID="txtMessage"></asp:Label>
            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>

            <!-- Submit Button -->
            <asp:Button ID="btnSubmit" runat="server" Text="Send Message" CssClass="btn-submit" OnClick="btnSubmit_Click" />

            <!-- Result Section -->
            <asp:Panel ID="pnlResult" runat="server" Visible="false" CssClass="result">
                <p id="lblResultMessage" runat="server"></p>
            </asp:Panel>
        </div>
    </form>
</body>
</html>

