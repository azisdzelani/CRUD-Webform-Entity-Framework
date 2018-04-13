using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCRUDEF
{
    public partial class ProductInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // jika tidak ada aktifitas ke server, tampilkan data dari function bindGrid()
            if(!IsPostBack)
            {
                bindGrid();
            }
        }

        public void bindGrid() //function to bind gridView(Read Operation)
        {
            using (LatihanEntities context = new LatihanEntities())
            {
                ProductGrid.DataSource = (from product in context.Products
                                           select new
                                           {
                                               Id = product.Id,
                                               Name = product.Name,
                                               Brand = product.Brand,
                                               Category = product.Category,
                                               Price = product.Price 
                                           }).ToList();

                ProductGrid.DataBind();
            }

        }

        protected void addbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("SaveOrEditProduct.aspx");
        }

        protected void Product_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "editcmd") //code for edit button
            {
                Session["id"] = e.CommandArgument;
                Response.Redirect("SaveOrEditProduct.aspx");
            }

            if (e.CommandName == "deletecmd") //code for delete button
            {
                using (LatihanEntities context = new LatihanEntities())
                {
                    int id = Convert.ToInt32(e.CommandArgument);
                    context.Products.Remove(context.Products.First(X => X.Id == id));
                    context.SaveChanges();
                }

                Response.Redirect("SaveOrEditProduct.aspx");
            }
        }
    }
}