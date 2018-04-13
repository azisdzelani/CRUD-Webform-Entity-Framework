<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SaveOrEditProduct.aspx.cs" Inherits="WebCRUDEF.SaveOrEditProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Save & Edit Product</title>

    <style type="text/css">
        
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>

            <tr>
                <td>ID</td>
                <td>
                    <asp:TextBox ID="txtId" runat="server" ReadOnly="True" BackColor="Silver"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Name</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Brand</td>
                <td>
                    <asp:TextBox ID="txtBrand" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>

                <td>Category</td>

                <td>

                    <asp:TextBox ID="txtCategory" runat="server"></asp:TextBox>

                </td>

            </tr>

            <tr>

                <td>Price</td>

                <td>

                    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>

                </td>

            </tr>

            <tr>

                <td>&nbsp;</td>

                <td>

                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="savebtn_Click" />

                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />

                    <asp:Button ID="Button1" runat="server" Text="Cancel" OnClick="btnCancel_Click" />

                </td>

            </tr>

        </table>
  
    </div>
    </form>
</body>
</html>
