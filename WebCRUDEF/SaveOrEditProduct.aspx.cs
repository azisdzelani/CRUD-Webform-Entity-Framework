using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCRUDEF
{
    public partial class SaveOrEditProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["id"] != null)
                {
                    FormDataBind();
                }
            }
        }

        public void FormDataBind()
        {
            ViewState["id"] = Session["id"];

            Session.Remove("id");

            using (LatihanEntities context = new LatihanEntities())
            {
                int id = Convert.ToInt32(ViewState["id"]);

                Product product = context.Products.First(x => x.Id == id);

                if (product != null)

                {

                    txtId.Text = Convert.ToString(product.Id);

                    txtName.Text = Convert.ToString(product.Name);

                    txtBrand.Text = Convert.ToString(product.Brand);

                    txtCategory.Text = Convert.ToString(product.Category);

                    txtPrice.Text = Convert.ToString(product.Price);

                }
            }
        }

        protected void savebtn_Click(object sender, EventArgs e)

        {

            using (LatihanEntities context = new LatihanEntities())

            {

                if (ViewState["id"] != null)

                {

                    int id = Convert.ToInt32(ViewState["id"]);

                    Product product = context.Products.First(x => x.Id == id);

                    product.Name = Convert.ToString(txtName.Text);

                    product.Brand = Convert.ToString(txtBrand.Text);

                    product.Category = Convert.ToString(txtCategory.Text);

                    product.Price = Convert.ToDecimal(txtPrice.Text);

                    context.SaveChanges();

                }

                else

                {

                    Product product = new Product();

                    product.Name = Convert.ToString(txtName.Text);

                    product.Brand = Convert.ToString(txtBrand.Text);

                    product.Category = Convert.ToString(txtCategory.Text);

                    product.Price = Convert.ToDecimal(txtPrice.Text);

                    context.Products.Add(product);

                    context.SaveChanges();

                }

            }

            Response.Redirect("ProductInformation.aspx");

        }

        protected void btnCancel_Click(object sender, EventArgs e)

        {

            Response.Redirect("ProductInformation.aspx");

        }

    }
}