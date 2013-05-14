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

    <style type="text/css">
        .auto-style1 {
            height: 34px;
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
                        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:ListView ID="ListView1" runat="server" DataKeyNames="كود المسؤول" DataSourceID="Manager" style="margin-left: 310px" HorizontalAlign="Center">
                                <AlternatingItemTemplate>
                                    <tr style="background-color:#FFF8DC;">
                                        <td style="text-align:center">
                                            <asp:Label ID="الصلاحيةLabel" runat="server" Text='<%# Eval("الصلاحية") %>' />
                                        </td>
                                        <td style="text-align:center">
                                            <asp:Label ID="رقم_الهاتفLabel" runat="server" Text='<%# Eval("[رقم الهاتف]") %>' />
                                        </td>
                                        <td style="text-align:center">
                                            <asp:Label ID="الايميلLabel" runat="server" Text='<%# Eval("الايميل") %>' />
                                        </td>
                                        <td style="text-align:center">
                                            <asp:Label ID="الاسمLabel" runat="server" Text='<%# Eval("الاسم") %>' />
                                        </td>
                                        <td style="text-align:center">
                                            <asp:Label ID="كود_المسؤولLabel" runat="server" Text='<%# Eval("[كود المسؤول]") %>' />
                                        </td>
                                    </tr>
                                </AlternatingItemTemplate>
                                <EditItemTemplate>
                                    <tr style="background-color:#008A8C;color: #FFFFFF;">
                                        <td style="text-align:center">
                                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                        </td>
                                        <td style="text-align:center">
                                            <asp:TextBox ID="الصلاحيةTextBox" runat="server" Text='<%# Bind("الصلاحية") %>' />
                                        </td>
                                        <td style="text-align:center">
                                            <asp:TextBox ID="رقم_الهاتفTextBox" runat="server" Text='<%# Bind("[رقم الهاتف]") %>' />
                                        </td>
                                        <td style="text-align:center">
                                            <asp:TextBox ID="الايميلTextBox" runat="server" Text='<%# Bind("الايميل") %>' />
                                        </td>
                                        <td style="text-align:center">
                                            <asp:TextBox ID="الاسمTextBox" runat="server" Text='<%# Bind("الاسم") %>' />
                                        </td>
                                        <td style="text-align:center">
                                            <asp:Label ID="كود_المسؤولLabel1" runat="server" Text='<%# Eval("[كود المسؤول]") %>' />
                                        </td>
                                    </tr>
                                </EditItemTemplate>
                                <EmptyDataTemplate>
                                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                        <tr>
                                            <td style="text-align:center">No data was returned.</td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <InsertItemTemplate>
                                    <tr style="">
                                        <td style="text-align:center">
                                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                        </td>
                                        <td style="text-align:center">
                                            <asp:TextBox ID="الصلاحيةTextBox" runat="server" Text='<%# Bind("الصلاحية") %>' />
                                        </td>
                                        <td style="text-align:center">
                                            <asp:TextBox ID="رقم_الهاتفTextBox" runat="server" Text='<%# Bind("[رقم الهاتف]") %>' />
                                        </td>
                                        <td style="text-align:center">
                                            <asp:TextBox ID="الايميلTextBox" runat="server" Text='<%# Bind("الايميل") %>' />
                                        </td>
                                        <td style="text-align:center">
                                            <asp:TextBox ID="الاسمTextBox" runat="server" Text='<%# Bind("الاسم") %>' />
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <tr style="background-color:#DCDCDC;color: #000000;">
                                        <td style="text-align:center">
                                            <asp:Label ID="الصلاحيةLabel" runat="server" Text='<%# Eval("الصلاحية") %>' />
                                        </td>
                                        <td style="text-align:center">
                                            <asp:Label ID="رقم_الهاتفLabel" runat="server" Text='<%# Eval("[رقم الهاتف]") %>' />
                                        </td>
                                        <td style="text-align:center">
                                            <asp:Label ID="الايميلLabel" runat="server" Text='<%# Eval("الايميل") %>' />
                                        </td>
                                        <td style="text-align:center">
                                            <asp:Label ID="الاسمLabel" runat="server" Text='<%# Eval("الاسم") %>' />
                                        </td>
                                        <td style="text-align:center">
                                            <asp:Label ID="كود_المسؤولLabel" runat="server" Text='<%# Eval("[كود المسؤول]") %>' />
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <table runat="server">
                                        <tr runat="server">
                                            <td runat="server" style="text-align:center">
                                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                    <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                                        <th runat="server">الصلاحية</th>
                                                        <th runat="server">رقم الهاتف</th>
                                                        <th runat="server">الايميل</th>
                                                        <th runat="server">الاسم</th>
                                                        <th runat="server">كود المسؤول</th>
                                                    </tr>
                                                    <tr id="itemPlaceholder" runat="server">
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr runat="server">
                                            <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                                <asp:DataPager ID="DataPager1" runat="server">
                                                    <Fields>
                                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                                    </Fields>
                                                </asp:DataPager>
                                            </td>
                                        </tr>
                                    </table>
                                </LayoutTemplate>
                                <SelectedItemTemplate>
                                    <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                                        <td style="text-align:center">
                                            <asp:Label ID="الصلاحيةLabel" runat="server" Text='<%# Eval("الصلاحية") %>' />
                                        </td>
                                        <td style="text-align:center">
                                            <asp:Label ID="رقم_الهاتفLabel" runat="server" Text='<%# Eval("[رقم الهاتف]") %>' />
                                        </td>
                                        <td style="text-align:center">
                                            <asp:Label ID="الايميلLabel" runat="server" Text='<%# Eval("الايميل") %>' />
                                        </td>
                                        <td style="text-align:center">
                                            <asp:Label ID="الاسمLabel" runat="server" Text='<%# Eval("الاسم") %>' />
                                        </td>
                                        <td style="text-align:center">
                                            <asp:Label ID="كود_المسؤولLabel" runat="server" Text='<%# Eval("[كود المسؤول]") %>' />
                                        </td>
                                    </tr>
                                </SelectedItemTemplate>
                            </asp:ListView>
                            <asp:SqlDataSource ID="Manager" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT admin AS الصلاحية, [Phone Number] AS [رقم الهاتف], Email AS الايميل, Name AS الاسم, M_ID AS [كود المسؤول] FROM manager"></asp:SqlDataSource>
                        </asp:Panel>

                        <!-- admin panel -->
                        <asp:Panel ID="Panel2" runat="server">
                            <table style="width: 100%;">
                                <tr><td style="text-align:center"> <h2>قائمة تحكم المدير</h2> </td></tr>
                                <tr><td style="text-align:center"> <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="100px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem Value="add">اضافة</asp:ListItem>
                                    <asp:ListItem Value="edit">تعديل</asp:ListItem>
                                    <asp:ListItem Value="delete">مسح</asp:ListItem>
                                    </asp:DropDownList> </td></tr>
                            </table>

                             <!-- delete panel -->
                            <asp:Panel ID="Panel4" runat="server">
                                <table style="width: 100%;">
                                    <tr><td style="text-align:center" class="auto-style1">كود المسؤول</td></tr>
                                    <tr><td style="text-align:center"><asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="ManagerDropbox" DataTextField="M_ID" DataValueField="M_ID" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"></asp:DropDownList>
                                        <asp:SqlDataSource ID="ManagerDropbox" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [M_ID] FROM [manager]"></asp:SqlDataSource>
                                        </td></tr>
                                </table>
                            </asp:Panel>

                             <!-- add or edite panel -->
                            <asp:Panel ID="Panel3" runat="server">
                                <table style="width: 100%;"><tr>
                                    <td>
                                        <table style="width: 100%;">
                                            <tr><td style="text-align:center">الصلاحيات</td></tr>
                                            <tr><td style="text-align:center"><asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="100px">
                                                <asp:ListItem>admin</asp:ListItem>
                                                <asp:ListItem>manager</asp:ListItem>
                                                </asp:DropDownList></td></tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table style="width: 100%;">
                                            <tr><td style="text-align:center">رقم الهاتف</td></tr>
                                            <tr><td style="text-align:center"><asp:TextBox ID="TextBox3" runat="server" TextMode="Phone"></asp:TextBox></td></tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table style="width: 100%;">
                                            <tr><td style="text-align:center">الايميل</td></tr>
                                            <tr><td style="text-align:center"><asp:TextBox ID="TextBox2" runat="server" TextMode="Email"></asp:TextBox></td></tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table style="width: 100%;">
                                            <tr><td style="text-align:center">الاسم</td></tr>
                                            <tr><td style="text-align:center"><asp:TextBox ID="TextBox1" runat="server" dir="rtl"></asp:TextBox></td></tr>
                                        </table>
                                    </td>
                                </tr></table>
                            </asp:Panel>  

                            <table style="width: 100%;">
                                <tr><td style="text-align:center"><asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label></td></tr>
                                <tr><td style="text-align:center"><asp:Button ID="Button1" runat="server" Text="تأكـــــــــــيد" Height="30px" OnClick="Button1_Click" Width="100px" PostBackUrl="~/Admin/adminslist.aspx" /></td></tr>
                            </table>
                        </asp:Panel>
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

