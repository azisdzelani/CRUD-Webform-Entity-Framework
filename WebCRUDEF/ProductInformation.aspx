<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductInformation.aspx.cs" Inherits="WebCRUDEF.ProductInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product</title>
</head>
<body>
    <h3>CRUD Operation in ASP.Net using Entity</h3> 
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="ProductGrid" runat="server" AutoGenerateColumns="false" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="Product_RowCommand">
            <AlternatingRowStyle BackColor="White" />

            <Columns>
                <%--code for bind GridView column with particular database table column--%>
                <asp:TemplateField HeaderText="No."> <%--code for row count--%>
                    <ItemTemplate>
                        <%# Container.DataItemIndex +1 %>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:BoundField HeaderText="ID" DataField="Id" />
                <asp:BoundField HeaderText="Name" DataField="Name" />
                <asp:BoundField HeaderText="Brand" DataField="Brand" />
                <asp:BoundField HeaderText="Category" DataField="Category" />
                <asp:BoundField HeaderText="Price" DataField="Price" />

                <asp:TemplateField HeaderText="Update Data">
                    <ItemTemplate>
                        <asp:Button ID="editBtn" runat="server" Text="Edit" CommandName="editcmd" CommandArgument='<%# Eval("Id") %>' />
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Remove Data">
                    <ItemTemplate>
                        <asp:Button ID="deletebtn" runat="server" Text="Delete" CommandName="deletecmd" CommandArgument='<%# Eval("Id") %>' />
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>

            <FooterStyle BackColor="#990000" Font-Bold="true" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="true" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="true" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>

        <br />

        <asp:Button ID="addbtn" runat="server" Text="Add Product" OnClick="addbtn_Click" />
    </div>
    </form>
</body>
</html>
