<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CarRentalTest.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Join Us</h3>
    <table>
            <tr>
                <td colspan="2" >
                    CREATE YOUR ENTERPRISE PLUS ACCOUNT
                </td>
            </tr>
            <tr>
                <td colspan="2" align="left">
                    My Profile
                </td>
            </tr>
            <tr>
                <td>
                    <table>
                        <tr>
                            <td>
                                Email Address :
                            </td>
                                <td>
                                <asp:TextBox id="UserName" runat="server" Width="167px"></asp:TextBox>
                                <asp:requiredfieldvalidator id="UserNameRequired" runat="server" ControlToValidate="UserName" Text="*"></asp:requiredfieldvalidator>
                            </td>
                        </tr>
                        <tr>
                            <td>Password :</td>
                            <td>
                                <asp:TextBox id="Password" runat="server" textMode="Password" Width="170px"></asp:TextBox>
                                <asp:requiredfieldvalidator id="PasswordRequired" runat="server" ControlToValidate="Password" Text="*"></asp:requiredfieldvalidator>
                            </td>
                        </tr>
                        <tr>
                             <td>Confirm Password :</td>
                            <td>
                                <asp:TextBox id="TextBox1" runat="server" textMode="Password" Width="169px"></asp:TextBox>
                                <asp:requiredfieldvalidator id="ConfirmPasswordRequired" runat="server" ControlToValidate="Password" Text="*"></asp:requiredfieldvalidator>
                            </td>
                        </tr>                      
                    </table>
                </td>              
            <tr>
                <td colspan="2" align="right">
                    <asp:button id="Create" OnClick="RegisterSubmit"  CommandName="Login" runat="server" Text="Create"></asp:button>
                    <br />
                    <asp:Label  id="OutputLabel" runat="server"></asp:Label>
                            
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Literal id="FailureText" runat="server"></asp:Literal></td>
            </tr>
    </table>
</asp:Content>

