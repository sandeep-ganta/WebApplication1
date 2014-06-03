<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="courseinformation.aspx.cs" Inherits="WebApplication1.courseinformation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1 {
            width: 100%;
        }
    </style>
</head>
<body style="font-size: medium; font-style: italic; font-weight: 700">
    <form id="form1" runat="server">
    <div>
        <center><asp:Label ID="Label1" runat="server" Text="CourseInformation" 
            
                style="font-style: italic; font-size: x-large; color: #CC0066; font-weight: 700;"></asp:Label></center>
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" style="font-size: medium" 
                        Text="CourseName"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" style="font-size: medium" 
                        Text="Description"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="*" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="DurationInMonth "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="*" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Price"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="*" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ErrorMessage="RangeValidator" ControlToValidate="TextBox4"  Type="Double" MaximumValue="200000"  MinimumValue="1"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnsubmit" runat="server" Text="submit" 
                        onclick="btnsubmit_Click" />
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <center><asp:Label ID="Label7" runat="server" Text="Courseinformation" 
            style="font-size: x-large; color: #660033; font-family: 'Times New Roman', Times, serif"></asp:Label></center>
    
       <center> <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
               BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
               CellSpacing="2" EnableModelValidation="True">
           <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
           <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
           <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
           <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
           <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:GridView></center>


    </div>

    </form>
</body>
</html>
