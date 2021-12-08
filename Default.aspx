<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmployeeManage_aspx._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="padding:15px">

        <table class="nav-justified">
            <tr>
                <td colspan="2" align="center" style="font-size:xx-large">Employee Info Management System&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" align="center" style="font-size:xx-large">&nbsp;</td>
            </tr>
            <tr>
                <td style="font-size:medium; font-weight:bold">Employee Id&nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="White" BorderColor="#CCCCCC" Font-Size="Medium" ForeColor="Black" Width="250px"></asp:TextBox>
&nbsp;
                    <asp:Button ID="Get" runat="server" Font-Bold="True" Font-Size="Medium" Text="Get" Width="100px" OnClick="Get_Click" />
                </td>
            </tr>
            <tr>
                <td style="font-size:medium; font-weight:bold">Employee Name&nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" BackColor="White" BorderColor="#CCCCCC" Font-Size="Medium" ForeColor="Black" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-size:medium; font-weight:bold">Age&nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" BackColor="White" BorderColor="#CCCCCC" Font-Size="Medium" ForeColor="Black" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-size:medium; font-weight:bold">City&nbsp;</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium">
                        <asp:ListItem>Los Angeles</asp:ListItem>
                        <asp:ListItem>New York</asp:ListItem>
                        <asp:ListItem>Seattle</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="font-size:medium; font-weight:bold">Sex &nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Size="Medium" RepeatDirection="Horizontal" Width="192px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td style="font-size:medium; font-weight:bold">Joining Date&nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" BackColor="White" BorderColor="#CCCCCC" Font-Size="Medium" ForeColor="Black" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Insert" runat="server" Font-Bold="True" Font-Size="Medium" OnClick="Insert_Click" Text="Insert" Width="100px" />
&nbsp;
                    <asp:Button ID="Update" runat="server" Font-Bold="True" Font-Size="Medium" Text="Update" Width="100px" OnClick="Update_Click" />
&nbsp;
                    <asp:Button ID="Delete" runat="server" Font-Bold="True" Font-Size="Medium" Text="Delete" Width="100px" OnClick="Delete_Click" />
&nbsp;
                    <asp:Button ID="Load" runat="server" Font-Bold="True" Font-Size="Medium" Text="Load" Width="100px" OnClick="Load_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" Width="1179px">
                        <HeaderStyle BackColor="#666666" ForeColor="White" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>

</asp:Content>
