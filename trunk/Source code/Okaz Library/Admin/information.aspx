<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="information.aspx.cs" Inherits="Okaz_Library.Admin.information" %>

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
                        <li><a href="information.aspx" class="current">البيانات</a></li>
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
        	    <div id="content_title_box">
            	    <div>
                      <!-- page here -->
                        <table style="width: 100%;"><tr><td style="text-align:center">
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                                <asp:ListItem>الطلبات الحالية</asp:ListItem>
                                <asp:ListItem>السجل</asp:ListItem>
                                <asp:ListItem>المقترضين الحاليين</asp:ListItem>
                            </asp:DropDownList>
                           </td></tr></table>

                        <!-- request table -->
                        <asp:Panel ID="Panel1" runat="server">
                            <asp:ListView ID="ListView1" runat="server" DataSourceID="RequestDatasource" DataKeyNames="رقم الطلب">
                                <AlternatingItemTemplate>
                                    <tr style="background-color:#FFF8DC;">
                                        <td>
                                            <asp:Label ID="رقم_الطلبLabel" runat="server" Text='<%# Eval("[رقم الطلب]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="اسم_الكتابLabel" runat="server" Text='<%# Eval("[اسم الكتاب]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="اسم_العميلLabel" runat="server" Text='<%# Eval("[اسم العميل]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="التاريخLabel" runat="server" Text='<%# Eval("التاريخ") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="الحالةLabel" runat="server" Text='<%# Eval("الحالة") %>' />
                                        </td>
                                    </tr>
                                </AlternatingItemTemplate>
                                <EditItemTemplate>
                                    <tr style="background-color:#008A8C;color: #FFFFFF;">
                                        <td>
                                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                        </td>
                                        <td>
                                            <asp:Label ID="رقم_الطلبLabel1" runat="server" Text='<%# Eval("[رقم الطلب]") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="اسم_الكتابTextBox" runat="server" Text='<%# Bind("[اسم الكتاب]") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="اسم_العميلTextBox" runat="server" Text='<%# Bind("[اسم العميل]") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="التاريخTextBox" runat="server" Text='<%# Bind("التاريخ") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="الحالةTextBox" runat="server" Text='<%# Bind("الحالة") %>' />
                                        </td>
                                    </tr>
                                </EditItemTemplate>
                                <EmptyDataTemplate>
                                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                        <tr>
                                            <td>No data was returned.</td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <InsertItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>
                                            <asp:TextBox ID="اسم_الكتابTextBox" runat="server" Text='<%# Bind("[اسم الكتاب]") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="اسم_العميلTextBox" runat="server" Text='<%# Bind("[اسم العميل]") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="التاريخTextBox" runat="server" Text='<%# Bind("التاريخ") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="الحالةTextBox" runat="server" Text='<%# Bind("الحالة") %>' />
                                        </td>
                                    </tr>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <tr style="background-color:#DCDCDC;color: #000000;">
                                        <td>
                                            <asp:Label ID="رقم_الطلبLabel" runat="server" Text='<%# Eval("[رقم الطلب]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="اسم_الكتابLabel" runat="server" Text='<%# Eval("[اسم الكتاب]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="اسم_العميلLabel" runat="server" Text='<%# Eval("[اسم العميل]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="التاريخLabel" runat="server" Text='<%# Eval("التاريخ") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="الحالةLabel" runat="server" Text='<%# Eval("الحالة") %>' />
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <table runat="server">
                                        <tr runat="server">
                                            <td runat="server">
                                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                    <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                                        <th runat="server">رقم الطلب</th>
                                                        <th runat="server">اسم الكتاب</th>
                                                        <th runat="server">اسم العميل</th>
                                                        <th runat="server">التاريخ</th>
                                                        <th runat="server">الحالة</th>
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
                                        <td>
                                            <asp:Label ID="رقم_الطلبLabel" runat="server" Text='<%# Eval("[رقم الطلب]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="اسم_الكتابLabel" runat="server" Text='<%# Eval("[اسم الكتاب]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="اسم_العميلLabel" runat="server" Text='<%# Eval("[اسم العميل]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="التاريخLabel" runat="server" Text='<%# Eval("التاريخ") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="الحالةLabel" runat="server" Text='<%# Eval("الحالة") %>' />
                                        </td>
                                    </tr>
                                </SelectedItemTemplate>
                            </asp:ListView>
                            <asp:SqlDataSource ID="RequestDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT request.R_ID AS [رقم الطلب], book.Name AS [اسم الكتاب], request.Name AS [اسم العميل], request.Rdate AS التاريخ, request.status AS الحالة FROM book INNER JOIN request ON book.book_ID = request.book_ID INNER JOIN users ON request.U_ID = users.U_ID WHERE (request.status &lt;&gt; 'count') ORDER BY التاريخ DESC, الحالة"></asp:SqlDataSource>
                        </asp:Panel>

                         <!-- notification -->
                        <asp:Panel ID="Panel2" runat="server">
                            <asp:ListView ID="ListView2" runat="server" DataSourceID="historyds">
                                <AlternatingItemTemplate>
                                    <tr style="background-color:#FFF8DC;">
                                        <td>
                                            <asp:Label ID="اسم_العميلLabel" runat="server" Text='<%# Eval("[اسم العميل]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="رقم_الهاتفLabel" runat="server" Text='<%# Eval("[رقم الهاتف]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="الايميلLabel" runat="server" Text='<%# Eval("الايميل") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="اسم_الكتابLabel" runat="server" Text='<%# Eval("[اسم الكتاب]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="التصنيفLabel" runat="server" Text='<%# Eval("التصنيف") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="التاريخLabel" runat="server" Text='<%# Eval("التاريخ") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="الحالةLabel" runat="server" Text='<%# Eval("الحالة") %>' />
                                        </td>
                                    </tr>
                                </AlternatingItemTemplate>
                                <EditItemTemplate>
                                    <tr style="background-color:#008A8C;color: #FFFFFF;">
                                        <td>
                                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="اسم_العميلTextBox" runat="server" Text='<%# Bind("[اسم العميل]") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="رقم_الهاتفTextBox" runat="server" Text='<%# Bind("[رقم الهاتف]") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="الايميلTextBox" runat="server" Text='<%# Bind("الايميل") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="اسم_الكتابTextBox" runat="server" Text='<%# Bind("[اسم الكتاب]") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="التصنيفTextBox" runat="server" Text='<%# Bind("التصنيف") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="التاريخTextBox" runat="server" Text='<%# Bind("التاريخ") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="الحالةTextBox" runat="server" Text='<%# Bind("الحالة") %>' />
                                        </td>
                                    </tr>
                                </EditItemTemplate>
                                <EmptyDataTemplate>
                                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                        <tr>
                                            <td>No data was returned.</td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <InsertItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="اسم_العميلTextBox" runat="server" Text='<%# Bind("[اسم العميل]") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="رقم_الهاتفTextBox" runat="server" Text='<%# Bind("[رقم الهاتف]") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="الايميلTextBox" runat="server" Text='<%# Bind("الايميل") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="اسم_الكتابTextBox" runat="server" Text='<%# Bind("[اسم الكتاب]") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="التصنيفTextBox" runat="server" Text='<%# Bind("التصنيف") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="التاريخTextBox" runat="server" Text='<%# Bind("التاريخ") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="الحالةTextBox" runat="server" Text='<%# Bind("الحالة") %>' />
                                        </td>
                                    </tr>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <tr style="background-color:#DCDCDC;color: #000000;">
                                        <td>
                                            <asp:Label ID="اسم_العميلLabel" runat="server" Text='<%# Eval("[اسم العميل]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="رقم_الهاتفLabel" runat="server" Text='<%# Eval("[رقم الهاتف]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="الايميلLabel" runat="server" Text='<%# Eval("الايميل") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="اسم_الكتابLabel" runat="server" Text='<%# Eval("[اسم الكتاب]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="التصنيفLabel" runat="server" Text='<%# Eval("التصنيف") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="التاريخLabel" runat="server" Text='<%# Eval("التاريخ") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="الحالةLabel" runat="server" Text='<%# Eval("الحالة") %>' />
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <table runat="server">
                                        <tr runat="server">
                                            <td runat="server">
                                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                    <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                                        <th runat="server">اسم العميل</th>
                                                        <th runat="server">رقم الهاتف</th>
                                                        <th runat="server">الايميل</th>
                                                        <th runat="server">اسم الكتاب</th>
                                                        <th runat="server">التصنيف</th>
                                                        <th runat="server">التاريخ</th>
                                                        <th runat="server">الحالة</th>
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
                                        <td>
                                            <asp:Label ID="اسم_العميلLabel" runat="server" Text='<%# Eval("[اسم العميل]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="رقم_الهاتفLabel" runat="server" Text='<%# Eval("[رقم الهاتف]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="الايميلLabel" runat="server" Text='<%# Eval("الايميل") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="اسم_الكتابLabel" runat="server" Text='<%# Eval("[اسم الكتاب]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="التصنيفLabel" runat="server" Text='<%# Eval("التصنيف") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="التاريخLabel" runat="server" Text='<%# Eval("التاريخ") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="الحالةLabel" runat="server" Text='<%# Eval("الحالة") %>' />
                                        </td>
                                    </tr>
                                </SelectedItemTemplate>
                            </asp:ListView>
                            <asp:SqlDataSource ID="historyds" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT User_book.Name AS [اسم العميل], users.[Phone Number] AS [رقم الهاتف], users.Email AS الايميل, book.Name AS [اسم الكتاب], book.Category AS التصنيف, User_book.S_date AS التاريخ, User_book.status AS الحالة FROM book INNER JOIN User_book ON book.book_ID = User_book.book_ID INNER JOIN users ON User_book.U_ID = users.U_ID ORDER BY التاريخ DESC, الحالة"></asp:SqlDataSource>
                        </asp:Panel>

                        <!-- history -->
                        <asp:Panel ID="Panel3" runat="server">
                            <asp:ListView ID="ListView3" runat="server" DataSourceID="borrowds">
                                <AlternatingItemTemplate>
                                    <tr style="background-color:#FFF8DC;">
                                        <td>
                                            <asp:Label ID="اسم_المقترضLabel" runat="server" Text='<%# Eval("[اسم المقترض]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="رقم_الهاتفLabel" runat="server" Text='<%# Eval("[رقم الهاتف]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="الايميلLabel" runat="server" Text='<%# Eval("الايميل") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="اسم_الكتابLabel" runat="server" Text='<%# Eval("[اسم الكتاب]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="التصنيفLabel" runat="server" Text='<%# Eval("التصنيف") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="التاريخLabel" runat="server" Text='<%# Eval("التاريخ") %>' />
                                        </td>
                                    </tr>
                                </AlternatingItemTemplate>
                                <EditItemTemplate>
                                    <tr style="background-color:#008A8C;color: #FFFFFF;">
                                        <td>
                                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="اسم_المقترضTextBox" runat="server" Text='<%# Bind("[اسم المقترض]") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="رقم_الهاتفTextBox" runat="server" Text='<%# Bind("[رقم الهاتف]") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="الايميلTextBox" runat="server" Text='<%# Bind("الايميل") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="اسم_الكتابTextBox" runat="server" Text='<%# Bind("[اسم الكتاب]") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="التصنيفTextBox" runat="server" Text='<%# Bind("التصنيف") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="التاريخTextBox" runat="server" Text='<%# Bind("التاريخ") %>' />
                                        </td>
                                    </tr>
                                </EditItemTemplate>
                                <EmptyDataTemplate>
                                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                        <tr>
                                            <td>No data was returned.</td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <InsertItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="اسم_المقترضTextBox" runat="server" Text='<%# Bind("[اسم المقترض]") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="رقم_الهاتفTextBox" runat="server" Text='<%# Bind("[رقم الهاتف]") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="الايميلTextBox" runat="server" Text='<%# Bind("الايميل") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="اسم_الكتابTextBox" runat="server" Text='<%# Bind("[اسم الكتاب]") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="التصنيفTextBox" runat="server" Text='<%# Bind("التصنيف") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="التاريخTextBox" runat="server" Text='<%# Bind("التاريخ") %>' />
                                        </td>
                                    </tr>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <tr style="background-color:#DCDCDC;color: #000000;">
                                        <td>
                                            <asp:Label ID="اسم_المقترضLabel" runat="server" Text='<%# Eval("[اسم المقترض]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="رقم_الهاتفLabel" runat="server" Text='<%# Eval("[رقم الهاتف]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="الايميلLabel" runat="server" Text='<%# Eval("الايميل") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="اسم_الكتابLabel" runat="server" Text='<%# Eval("[اسم الكتاب]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="التصنيفLabel" runat="server" Text='<%# Eval("التصنيف") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="التاريخLabel" runat="server" Text='<%# Eval("التاريخ") %>' />
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <table runat="server">
                                        <tr runat="server">
                                            <td runat="server">
                                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                    <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                                        <th runat="server">اسم المقترض</th>
                                                        <th runat="server">رقم الهاتف</th>
                                                        <th runat="server">الايميل</th>
                                                        <th runat="server">اسم الكتاب</th>
                                                        <th runat="server">التصنيف</th>
                                                        <th runat="server">التاريخ</th>
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
                                        <td>
                                            <asp:Label ID="اسم_المقترضLabel" runat="server" Text='<%# Eval("[اسم المقترض]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="رقم_الهاتفLabel" runat="server" Text='<%# Eval("[رقم الهاتف]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="الايميلLabel" runat="server" Text='<%# Eval("الايميل") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="اسم_الكتابLabel" runat="server" Text='<%# Eval("[اسم الكتاب]") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="التصنيفLabel" runat="server" Text='<%# Eval("التصنيف") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="التاريخLabel" runat="server" Text='<%# Eval("التاريخ") %>' />
                                        </td>
                                    </tr>
                                </SelectedItemTemplate>
                            </asp:ListView>
                            <asp:SqlDataSource ID="borrowds" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT request.Name AS [اسم المقترض], users.[Phone Number] AS [رقم الهاتف], users.Email AS الايميل, book.Name AS [اسم الكتاب], book.Category AS التصنيف, request.Rdate AS التاريخ FROM book INNER JOIN request ON book.book_ID = request.book_ID INNER JOIN users ON request.U_ID = users.U_ID ORDER BY التاريخ DESC"></asp:SqlDataSource>
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

