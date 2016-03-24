<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calculator.aspx.cs" Inherits="Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Calc_CSS.css" />
    <title>Scientific Calculator</title>

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />

</head>
<body>
    <form id="form1" runat="server">


        <div class="container">
            <!-- container -->


            <div class="row">
                <!-- First row -->
                <asp:Panel ID="Panel1" runat="server" Height="476px">



                    <div class="col-lg-3" >
                        <!-- Empty -->
                        
                    </div>

                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12"> 
                        <!-- First row, Second Column -->
                        <h1 class="text-center">&nbsp;</h1>
                        <p class="text-center">
                            &nbsp;</p>
                        <h1 class="text-center">&nbsp;SCIENTIFIC CALCULATOR</h1>
                        <asp:Label ID="labelCurrentOperation" class="center-block" runat="server" BorderStyle="Groove" Height="22px" Width="113px" ForeColor="Silver"></asp:Label>
                        <br />
                        <asp:TextBox class="center-block img-responsive" style="text-align:right"  Font-Size="X-Large"
                             ID="Screen" runat="server" BorderStyle="Solid" Height="38px" Width="550px">0</asp:TextBox>
                        <br />
                        <div class="col-lg-6">

                            <asp:Panel class="center-block" ID="Panel3" runat="server" Height="311px" Width="225px" BackColor="White" ForeColor="#CCFFFF">
                                <asp:Button ID="c_btn" runat="server" BorderColor="#FFCCCC" Height="36px" Text="C" Width="47px" ForeColor="Black" BackColor="White" OnClick="c_btn_Click" />

                                &nbsp;<asp:Button ID="del_btn" runat="server" BorderColor="#FFCCCC" ForeColor="Black" Height="36px" Text="Del" Width="47px" BackColor="White" />
                                &nbsp;<asp:Button ID="percent_btn" runat="server" BorderColor="#CCFFFF" ForeColor="Black" Height="36px" Text="%" Width="47px" BackColor="#CCFFFF" OnClick="operator_click" />
                                &nbsp;<asp:Button ID="divide_btn" runat="server" BorderColor="#CCFFFF" ForeColor="Black" Height="36px" Text="÷" Width="47px" BackColor="#CCFFFF" OnClick="operator_click" />
                                <br />
                                <br />
                                <asp:Button ID="seven_btn" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="7" Width="47px" OnCommand="button_click" />
                                &nbsp;<asp:Button ID="eight_btn" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="8" Width="47px" OnCommand="button_click" />
                                &nbsp;<asp:Button ID="nine_btn" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="9" Width="47px" OnCommand="button_click" />
                                &nbsp;<asp:Button ID="multiply_btn" runat="server" BorderColor="#CCFFFF" ForeColor="Black" Height="36px" Text="×" Width="47px" BackColor="#CCFFFF" OnClick="operator_click" />
                                <br />
                                <br />
                                <asp:Button ID="four_btn" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="4" Width="47px" OnCommand="button_click" />
                                &nbsp;<asp:Button ID="five_btn" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="5" Width="47px" OnCommand="button_click" />
                                &nbsp;<asp:Button ID="six_btn" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="6" Width="47px" OnCommand="button_click" />
                                &nbsp;<asp:Button ID="subtract_btn" runat="server" BorderColor="#CCFFFF" ForeColor="Black" Height="36px" Text="-" Width="47px" BackColor="#CCFFFF" OnClick="operator_click" />
                                <br />
                                <br />
                                <asp:Button ID="one_btn" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="1" Width="47px" OnClick="button_click" />
                                &nbsp;<asp:Button ID="two_btn" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="2" Width="47px" OnClick="button_click" />
                                &nbsp;<asp:Button ID="three_btn" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="3" Width="47px" OnClick="button_click" />
                                &nbsp;<asp:Button ID="add_btn" runat="server" BorderColor="#CCFFFF" ForeColor="Black" Height="36px" Text="+" Width="47px" BackColor="#CCFFFF" OnClick="operator_click" />
                                <br />
                                <br />
                                <asp:Button ID="zero_btn" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="0" Width="47px" OnClick="button_click" />
                                &nbsp;<asp:Button ID="decimal_btn" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="." Width="47px" OnClick="button_click" />
                                &nbsp;&nbsp;<asp:Button ID="eql_btn" runat="server" BorderColor="#CCFFFF" ForeColor="Black" Height="36px" Text="=" Width="102px" BackColor="#CCFFFF" OnClick="eql_btn_Click" />
                                &nbsp;
                                    <br />
                                <br />
                                &nbsp;&nbsp;
                                    <br />
                                <br />
                                &nbsp;&nbsp;&nbsp;<br />
                                <br />
                                &nbsp;&nbsp;&nbsp;<br />
                                <br />
                                &nbsp;&nbsp; &nbsp;&nbsp;<br />
                                &nbsp;<br />
                                &nbsp;
                            </asp:Panel>

                        </div>

                        <div class="col-lg-6">


                            <asp:Panel ID="Panel4" Class="center-block" runat="server" Height="294px" Width="222px" BackColor="White" ForeColor="#CCFFFF">
                                <asp:Button ID="Button112" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="Button" Width="47px" />
                                &nbsp;<asp:Button ID="Button113" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="Button" Width="47px" />
                                &nbsp;<asp:Button ID="Button114" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="Button" Width="47px" />
                                &nbsp;<asp:Button ID="Button115" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="Button" Width="47px" />
                                <br />
                                <br />
                                <asp:Button ID="Button116" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="Button" Width="47px" />
                                &nbsp;<asp:Button ID="Button117" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="Button" Width="47px" />
                                &nbsp;<asp:Button ID="Button118" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="Button" Width="47px" />
                                &nbsp;<asp:Button ID="Button119" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="Button" Width="47px" />
                                <br />
                                <br />
                                <asp:Button ID="Button120" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="Button" Width="47px" />
                                &nbsp;<asp:Button ID="Button121" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="Button" Width="47px" />
                                &nbsp;<asp:Button ID="Button122" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="Button" Width="47px" />
                                &nbsp;<asp:Button ID="Button123" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="Button" Width="47px" />
                                <br />
                                <br />
                                <asp:Button ID="Button124" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="Button" Width="47px" />
                                &nbsp;<asp:Button ID="Button125" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="Button" Width="47px" />
                                &nbsp;<asp:Button ID="Button126" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="Button" Width="47px" />
                                &nbsp;<asp:Button ID="Button127" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="Button" Width="47px" />
                                <br />
                                <br />
                                <asp:Button ID="Button128" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="Button" Width="99px" />
                                &nbsp;&nbsp;<asp:Button ID="Button130" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="Button" Width="47px" />
                                &nbsp;<asp:Button ID="Button131" runat="server" BorderColor="#66FFFF" ForeColor="Black" Height="36px" Text="Button" Width="47px" />
                                &nbsp;
                            </asp:Panel>

                        </div>


                        <br />

                        <br />





                    </div>
                    <!-- First row -->
                </asp:Panel>
            </div>
            <!-- container -->


        </div>

    </form>
</body>
</html>
