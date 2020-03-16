<%@ Page Title="SignIn" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Location.aspx.cs" Inherits="testtttt.Home" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Join Us</h3>
            <asp:Login id="Login2" runat="server">
                <LayoutTemplate>
                    <table>
                        <tr>
                            <td colspan="2" >
                                Sign In to Rent-A-Car Plus
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="left">
                                Enter your user name and password to log in.
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table>
                                    <tr>
                                        <td>
                                            User name:
                                        </td>
                                         <td>
                                            <asp:TextBox id="UserName" runat="server"></asp:TextBox>
                                            <asp:requiredfieldvalidator id="UserNameRequired" runat="server" ControlToValidate="UserName" Text="*"></asp:requiredfieldvalidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Password:</td>
                                        <td>
                                            <asp:TextBox id="Password" runat="server" textMode="Password"></asp:TextBox>
                                            <asp:requiredfieldvalidator id="PasswordRequired" runat="server" ControlToValidate="Password" Text="*"></asp:requiredfieldvalidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Checkbox id="RememberMe" runat="server" Text="Remember my login"></asp:Checkbox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td valign="middle">
                                <ul>
                                    <li><a href="newAccount.aspx">Create a new account...</a></li>
                                    <li><a href="getPass.aspx">Forgot your password?</a></li>
                                    <li><a href="help.aspx">Get help logging in...</a></li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:button id="Login" OnClick="LogInSubmit"  CommandName="Login" runat="server" Text="Login"></asp:button>
                                <br />
                                <asp:Label  id="OutputLabel" runat="server"></asp:Label>
                                <asp: TextBox id ="First" runat =>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:Literal id="FailureText" runat="server"></asp:Literal></td>
                        </tr>
                    </table>
                </LayoutTemplate>
            </asp:Login>

</asp:Content>

<%--<%@ Page Language="C#" AutoEventWireup="False"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
</script>
<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
    <title>ASP.NET Example</title>
    </head>
<body>
        <form id="form1" runat="server">
            <asp:Login id="Login1" runat="server">
                <LayoutTemplate>
                    <table>
                        <tr>
                            <td colspan="2" align="center">
                                Login
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                Enter your user name and password to log in.
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table>
                                    <tr>
                                        <td>
                                            User name:
                                        </td>
                                        <a href="Content/">Content/</a>                              <td>
                                            <asp:TextBox id="UserName" runat="server"></asp:TextBox>
                                            <asp:requiredfieldvalidator id="UserNameRequired" runat="server" ControlToValidate="UserName" Text="*"></asp:requiredfieldvalidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <a href="Global.asax">Global.asax</a>                        <td>Password:</td>
                                        <td>
                                            <asp:TextBox id="Password" runat="server" textMode="Password"></asp:TextBox>
                                            <asp:requiredfieldvalidator id="PasswordRequired" runat="server" ControlToValidate="Password" Text="*"></asp:requiredfieldvalidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Checkbox id="RememberMe" runat="server" Text="Remember my login"></asp:Checkbox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td valign="middle">
                                <ul>
                                    <li><a href="newAccount.aspx">Create a new account...</a></li>
                                    <li><a href="getPass.aspx">Forgot your password?</a></li>
                                    <li><a href="help.aspx">Get help logging in...</a></li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:button id="Login" CommandName="Login" runat="server" Text="Login"></asp:button>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:Literal id="FailureText" runat="server"></asp:Literal></td>
                        </tr>
                    </table>
                </LayoutTemplate>
            </asp:Login>
        </form>
    </body>
</html>--%>