<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminslist.aspx.cs" Inherits="Okaz_Library.Admin.adminslist" %>

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
                        <li><a href="manage.aspx" >التحكم</a></li>
                        <li><a href="information.aspx">البيانات</a></li>
                        <li><a href="adminslist.aspx" class="current">المسؤولين</a></li>
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
        	    <div id="content_title_box">
            	    <div>
                      <!-- page here -->
                        
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

