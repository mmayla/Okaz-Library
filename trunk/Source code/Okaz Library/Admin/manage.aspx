<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manage.aspx.cs" Inherits="Okaz_Library.Admin.Manage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>مكتبة عكاظ</title>
<meta name="keywords" content="sandbox template, 3D slider, piecemaker, flash, html css website layout" />
<meta name="description" content="Sandbox Template is integrated with PieceMaker 3D Slider. Feel free to download, edit and use this layout for any purpose." />
<link href="../templatemo_style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="../js/swfobject.js"></script>
<script type="text/javascript">

    var flashvars = {};
    flashvars.cssSource = "../piecemaker.css";
    flashvars.xmlSource = "../piecemaker.xml";

    var params = {};
    params.play = "true";
    params.menu = "false";
    params.scale = "showall";
    params.wmode = "transparent";
    params.allowfullscreen = "true";
    params.allowscriptaccess = "always";
    params.allownetworking = "all";

    swfobject.embedSWF('../piecemaker.swf', 'piecemaker', '900', '408', '10', null, flashvars,
    params, null);

</script>

    <style type="text/css">
        .auto-style1 {
            height: 62px;
        }
    </style>

</head>
<body>
<form id="form1" runat="server">
    <div id="templatemo_outer_wrapper">

	    <div id="templatemo_wrapper">
    
    	    <div id="templatemo_header">
                <div id="site_title">
                    <a href="../index.aspx" shape="rect">شارك واستمتع</a>
                </div> <!-- end of site_title -->
            
                <div id="templatemo_menu">
                    <ul>
                        <li><a href="manage.aspx" class="current">التحكم</a></li>
                        <li><a href="information.aspx">البيانات</a></li>
                        <li><a href="adminslist.aspx">المسؤولين</a></li>
                        <li><a href="messages.aspx">الرسائل</a></li>              
                    </ul>  
                    <div><table style="width: 120px;">  
                        <tr><td> <br /><br /> </td></tr>            
                                    <tr>
                                        <td style="text-align:right">
                                            <h5><asp:Label ID="Label1" runat="server" Text=""></asp:Label></h5>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <!-- cleaner --> 
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:right">
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/login.aspx">تسجيل الخروج</asp:HyperLink>
                                        </td>   
                                    </tr>
                                 </table></div>  	
                </div> <!-- end of templatemo_menu -->
            
                <div class="cleaner"></div>
		    </div>   <!-- end of header -->
        
            <div id="templatemo_main">
        	    <div id="featured_project_box">
            
            	    <div>
                      <table style="width: 100%;">
                          <tr>
                              <td style="text-align:center">
                                  <br /> <br /> <br />  
                              </td>
                          </tr>
                          <tr>
                              <td style="text-align:center" class="auto-style1">
                                  <h1>ادخل رقم الطلب</h1>
                              </td>
                          </tr>
                          <tr>
                              <td style="text-align:center">
                                  <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="400px" Font-Bold="False" Font-Names="Forte" Font-Size="X-Large" Font-Strikeout="False" ForeColor="#333333" ToolTip="ادخل رقم الطلب هنا " style="text-align:center"></asp:TextBox>
                              </td>
                          </tr>
                          <tr>
                              <td style="text-align:center">
                                  <!-- cleaner -->
                              </td>
                          </tr>
                          <tr>
                              <td style="text-align:center">
                                  <h4><asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label></h4>
                              </td>
                          </tr>
                          <tr>
                              <td style="text-align:center">
                                  <asp:Button ID="Button1" runat="server" Text="ادخل" Height="35px" Width="150px" BackColor="#666666" BorderColor="Gray" EnableTheming="True" Font-Bold="True" ForeColor="#CCCCCC" OnClick="Button1_Click" ToolTip="موافق" />
                              </td>
                          </tr>
                      </table>
                    </div>
            	
                </div> <!-- end of featured project -->
            </div> <!-- end of main -->
        
            <div id="templatemo_content">
        
        	    <div class="content_box cb_last">
            	
                    <div class="cleaner"></div>
                </div>
        	
            </div> <!-- end of content -->
        
            <div id="templatemo_footer">

			    <a href="index.aspx" >الرئيسية</a> | <a href="Admin/login.aspx">تسجيل دخول مسؤول</a> <br /><br />
    
        	    Copyright © 2013 <a href="#">Okaz Library</a> | Designed by <a href="http://www.templatemo.com">Infinity Dream</a></div>
        
	    </div> <!-- end of wrapper -->
    </div> <!-- end of outer wrapper -->
</form>
</body>
</html>

