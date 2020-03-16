<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="testtttt.LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
                        <%--</tr>--%>
                        <tr>
                            <td colspan="2" align="center">
                              <asp:button id="Login" OnClick="LogInSubmit"  CommandName="Login" runat="server" Text="Login"></asp:button>
                                <br />
                                <asp:Label  id="OutputLabel" runat="server"></asp:Label>
                            
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