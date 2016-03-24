using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Calculator : System.Web.UI.Page
{
    Double resultValue = 0;
    String operationPerformed = "";
    bool isOperationPerformed = false;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void button_click(object sender, EventArgs e)
    {
        if(Screen.Text == "0" || isOperationPerformed ) //clears the '0' on the screen when user presses the button 
        {
            Screen.Text = "";
        }
        isOperationPerformed = true;
        Button button = (Button)sender;
        Screen.Text = Screen.Text + button.Text; //Displays the button text pressed by user on the screen
    }

    protected void operator_click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        operationPerformed = button.Text;
        resultValue = Double.Parse(Screen.Text);
        labelCurrentOperation.Text = resultValue + " " + operationPerformed;
        isOperationPerformed = true;
    }

    protected void c_btn_Click(object sender, EventArgs e)
    {
        Screen.Text = "0";
        resultValue = 0;

    }

    protected void eql_btn_Click(object sender, EventArgs e)
    {
        switch (operationPerformed)
        {
            case "+":
                Screen.Text = (resultValue + Double.Parse(Screen.Text)).ToString();
                break;
            case "-":
                Screen.Text = (resultValue - Double.Parse(Screen.Text)).ToString();
                break;
            case "×":
                Screen.Text = (resultValue * Double.Parse(Screen.Text)).ToString();
                break;
            case "÷":
                Screen.Text = (resultValue / Double.Parse(Screen.Text)).ToString();
                break;
            default:
                break;
        }
    }
}