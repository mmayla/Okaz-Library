<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="messages.aspx.cs" Inherits="Okaz_Library.Admin.messages" %>

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
                        <li><a href="adminslist.aspx">المسؤولين</a></li>
                        <li><a href="messages.aspx" class="current">الرسائل</a></li>              
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
                      <table style="width: 100%;">
                          <tr>
                              <td style="text-align:center">
                                  <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="MessageDataSource" HorizontalAlign="Center">
                                      <Columns>
                                          <asp:BoundField DataField="الاسم" HeaderText="الاسم" SortExpression="الاسم" />
                                          <asp:BoundField DataField="الايميل" HeaderText="الايميل" SortExpression="الايميل" />
                                          <asp:BoundField DataField="رقم الهاتف" HeaderText="رقم الهاتف" SortExpression="رقم الهاتف" />
                                          <asp:BoundField DataField="التاريخ" HeaderText="التاريخ" SortExpression="التاريخ" />
                                          <asp:BoundField DataField="الرسالة" HeaderText="الرسالة" SortExpression="الرسالة" />
                                      </Columns>
                                      <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                      <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                      <PagerSettings Mode="NextPreviousFirstLast" />
                                      <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                      <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                      <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                      <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                      <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                      <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                      <SortedDescendingHeaderStyle BackColor="#93451F" />
                                  </asp:GridView>
                                  <asp:SqlDataSource ID="MessageDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Name AS الاسم, Email AS الايميل, Phone AS [رقم الهاتف], Mdate AS التاريخ, Message AS الرسالة FROM Message ORDER BY التاريخ DESC"></asp:SqlDataSource>
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

