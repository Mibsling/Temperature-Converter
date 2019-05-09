using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TemperatureConverter
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //creating the variables
            decimal Input = Convert.ToDecimal(TextBox1.Text);
            decimal Val1 = 5;
            decimal Val2 = 9;
            decimal Val3 = 32;
            decimal Val4 = 273.15M;
            decimal Val5 = 459.67M;

            //Conversion from Celsius
            if (DropDownList1.SelectedItem.Text == "CELSIUS")
            {
                if (DropDownList2.SelectedItem.Text == "CELSIUS")           /*To Celsius*/
                {
                    var output1 = Input;
                    lblOutput.Text = output1.ToString("#.##") + "°C";
                }
                else if (DropDownList2.SelectedItem.Text == "FAHRENHEIT")   /*To Fahrenheit*/
                {
                    decimal output2 = Input * (Val2 / Val1) + Val3;
                    lblOutput.Text = output2.ToString("#.##") + "°F";
                }
                else if (DropDownList2.SelectedItem.Text == "KELVIN")        /*To Kelvin*/
                {
                    decimal output3 = Input + Val4;
                    lblOutput.Text = output3.ToString("#.##") + "°K";
                }
            }

            //Conversion from Fahrenheit
            else if (DropDownList1.SelectedItem.Text == "FAHRENHEIT")
            {
                if (DropDownList2.SelectedItem.Text == "CELSIUS")            /*To Celsius*/
                {
                    decimal output4 = (Input - Val3) * (Val1 / Val2);
                    lblOutput.Text = output4.ToString("#.##") + "°C";
                }
                else if (DropDownList2.SelectedItem.Text == "FAHRENHEIT")   /*To Fahrenheit*/
                {
                    var output5 = Input;
                    lblOutput.Text = output5.ToString("#.##") + "°F";
                }
                else if (DropDownList2.SelectedItem.Text == "KELVIN")        /*To Kelvin*/
                {
                    decimal output6 = (Input + Val5) * (Val1 / Val2);
                    lblOutput.Text = output6.ToString("#.##") + "°K";
                }
            }

            //Conversion from Kelvin
            else if (DropDownList1.SelectedItem.Text == "KELVIN")
            {
                if (DropDownList2.SelectedItem.Text == "CELSIUS")           /*To Celsius*/
                {
                    decimal output7 = Input - Val4;
                    lblOutput.Text = output7.ToString("#.##") + "°C";
                }
                else if (DropDownList2.SelectedItem.Text == "FAHRENHEIT")   /*To Fahrenheit*/
                {
                    decimal output8 = (Input * (Val2 / Val1)) - Val5;
                    lblOutput.Text = output8.ToString("#.##") + "°F";
                }
                else if (DropDownList2.SelectedItem.Text == "KELVIN")        /*To Kelvin*/
                {
                    var output9 = Input;
                    lblOutput.Text = output9.ToString("#.##") + "°K";
                }
            }
        }

        //Clear Button
        protected void Button2_Click(object sender, EventArgs e)
        {
            lblOutput.Text = "";     /*Clearing the Label Box */
            TextBox1.Text = "";      /*Clearing the Input Text Box*/
            DropDownList1.ClearSelection();  /*Clearing the "FROM" dropdown list to Default*/
            DropDownList2.SelectedValue = "FAHRENHEIT";  /*Clearing the "TO" dropdown list to Default*/
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}