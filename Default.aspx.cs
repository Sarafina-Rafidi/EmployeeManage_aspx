using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeManage_aspx
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetEmployeeList();
            }
        }

        SqlConnection connection = new SqlConnection("Data Source=.;Initial Catalog=aspx_crud_operation;Integrated Security=True");


        protected void Insert_Click(object sender, EventArgs e)
        {
            int empId = int.Parse(TextBox1.Text);
            string empName = TextBox2.Text,
                   age = TextBox3.Text,
                   city = DropDownList1.SelectedValue,
                   sex = RadioButtonList1.SelectedValue;
            DateTime jDate = DateTime.Parse(TextBox4.Text);


            connection.Open();
            SqlCommand cmd = new SqlCommand("Insert into EmployeeSetup values ('" + empId + "','" + empName + "','" + age + "','" + city + "','" + sex + "','" + jDate + "')", connection);
            cmd.ExecuteNonQuery();
            connection.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully saved');", true);
            GetEmployeeList();
        }


        void GetEmployeeList ()
        {
            SqlCommand cmd = new SqlCommand("Select empId as 'Employee Id', empName as 'Employee Name', age as 'Age', city as 'City', sex as 'Sex', joiningDate as 'Joining Date' from EmployeeSetup order by empId ASC", connection);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            int empId = int.Parse(TextBox1.Text);
            string empName = TextBox2.Text,
                   age = TextBox3.Text,
                   city = DropDownList1.SelectedValue,
                   sex = RadioButtonList1.SelectedValue;
            DateTime jDate = DateTime.Parse(TextBox4.Text);


            connection.Open();
            SqlCommand cmd = new SqlCommand("Update EmployeeSetup set empId = '" +empId+ "', empName = '" +empName+ "', age = '" +age+ "', city = '" +city+ "', sex = '" +sex+ "', joiningDate = '" +jDate+ "' ", connection);
            cmd.ExecuteNonQuery();
            connection.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully updated');", true);
            GetEmployeeList();
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            int empId = int.Parse(TextBox1.Text);
            
            connection.Open();
            SqlCommand cmd = new SqlCommand("Delete EmployeeSetup where empId = '" + empId + "' ", connection);
            cmd.ExecuteNonQuery();
            connection.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully deleted');", true);
            GetEmployeeList();
        }

        protected void Get_Click(object sender, EventArgs e)
        {
            int empId = int.Parse(TextBox1.Text);

            SqlCommand cmd = new SqlCommand("Select empId as 'Employee Id', empName as 'Employee Name', age as 'Age', city as 'City', sex as 'Sex', joiningDate as 'Joining Date' from EmployeeSetup where empId = '" + empId + "' ", connection);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Load_Click(object sender, EventArgs e)
        {
            GetEmployeeList();
        }
    }
}