<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Okaz_Library.Admin.login" %>

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

    swfobject.embedSWF('piecemaker.swf', 'piecemaker', '900', '408', '10', null, flashvars,
    params, null);

</script>

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
                
            </div> <!-- end of templatemo_menu -->
            
            <div class="cleaner"></div>
		</div>   <!-- end of header -->
        
        <div id="templatemo_main">
        	<div id="featured_project_box">
            <br/><br/><br/>
            	<div>  <!-- log-in div -->              
                    <table style="width: 100%;">
                        <tr>
                            <td style="text-align:center"> 
                                <h1><asp:Label ID="Label1" runat="server" Text="تسجيل دخول المسؤولين"></asp:Label></h1> 
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center"> 
                                <h3><asp:Label ID="Label2" runat="server" Text="البريد الالكتروني"></asp:Label></h3> 
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center"> 
                               <h3><asp:TextBox ID="TextBox1" runat="server" BackColor="#181818" ForeColor="#CCCCCC" Width="180" Height="20" TextMode="Email" ToolTip="ادخل بريدك الالكتروني"></asp:TextBox></h3>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center"> 
                                <h3><asp:Label ID="Label3" runat="server" Text="الرقم السري"></asp:Label></h3> 
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center"> 
                               <h3><asp:TextBox ID="TextBox2" runat="server" BackColor="#181818" ForeColor="#CCCCCC" Width="180" Height="20" TextMode="Password" ToolTip="ادخل رقمك السري"></asp:TextBox></h3>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center">
                                <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center"> 
                               <h3><asp:Button ID="Button1" runat="server" Text="تسجيل الدخول" BorderStyle="NotSet" EnableTheming="True" BackColor="#111111" ForeColor="#CCCCCC" Height="35" Width="80" OnClick="Button1_Click" /></h3>
                            </td>
                        </tr>
                    </table>       
                </div>  <!-- end of log-in div -->   

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
