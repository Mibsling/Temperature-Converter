<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TemperatureConverter.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<%--head--%>
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>

<%--body--%>
<body>
    <div class="container jumbotron">
        <div>
            <h1 class="d-flex justify-content-center">Temperature Converter</h1>
            <h1 class="d-flex justify-content-center">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/tempConverter.png" />
            </h1>
        </div>

        <form id="form1" runat="server">
            <asp:Panel ID="Panel4" runat="server">

                <%--Textbox--%>
                <div class="d-flex justify-content-center ">
                    <div class="form-group col-md-20">
                        <asp:Label ID="Label1" runat="server" Text="INPUT TEMPERATURE"></asp:Label>
                        <br />
                        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </div>
                </div>

                <%--Conversion Table--%>
                <asp:Panel ID="Panel3" runat="server">
                    <div class="d-flex justify-content-center">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <table class="table">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text="FROM"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text="TO"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                                <asp:ListItem Selected="True">CELSIUS</asp:ListItem>
                                                <asp:ListItem>FAHRENHEIT</asp:ListItem>
                                                <asp:ListItem>KELVIN</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList2" runat="server">
                                                <asp:ListItem>CELSIUS</asp:ListItem>
                                                <asp:ListItem Selected="True">FAHRENHEIT</asp:ListItem>
                                                <asp:ListItem>KELVIN</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </asp:Panel>
            </asp:Panel>

            <%--Conversion and clear button--%>
            <div class="d-flex justify-content-center">
                <div class=" btn-info btn-lg active">
                    <asp:Button ID="Button1" runat="server" Text="CONVERT" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="CLEAR" OnClick="Button2_Click" />
                </div>
            </div>
            <div class="d-flex justify-content-center">
                <asp:Label ID="Label2" runat="server" Text="OUTPUT TEMPERATURE:  " ForeColor="Black"></asp:Label>                
                <asp:Label ID="lblOutput" runat="server"></asp:Label>
            </div>

            <%--Range and Required field Validator--%>
            <div class="form-group d-flex justify-content-center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="This is a Required Field " ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1" EnableClientScript="False" ErrorMessage="Enter a Number between -1000 and 1000" ForeColor="#FF3300" MaximumValue="1000" MinimumValue="-1000" Type="Integer"></asp:RangeValidator>
            </div>
        </form>

    </div>

</body>
</html>
