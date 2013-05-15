<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="booklist.aspx.cs" Inherits="Okaz_Library.booklist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>مكتبة عكاظ</title>
<meta name="keywords" content="sandbox template, gallery, html css, free website layout" />
<meta name="description" content="Sandbox Template - Gallery Page" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<!--////// CHOOSE ONE OF THE 3 PIROBOX STYLES  \\\\\\\-->
<link href="css_pirobox/white/style.css" media="screen" title="shadow" rel="stylesheet" type="text/css" />
<!--<link href="css_pirobox/white/style.css" media="screen" title="white" rel="stylesheet" type="text/css" />
<link href="css_pirobox/black/style.css" media="screen" title="black" rel="stylesheet" type="text/css" />-->
<!--////// END  \\\\\\\-->

<!--////// INCLUDE THE JS AND PIROBOX OPTION IN YOUR HEADER  \\\\\\\-->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/piroBox.1_2.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $().piroBox({
            my_speed: 600, //animation speed
            bg_alpha: 0.5, //background opacity
            radius: 4, //caption rounded corner
            scrollImage: false, // true == image follows the page, false == image remains in the same open position
            pirobox_next: 'piro_next', // Nav buttons -> piro_next == inside piroBox , piro_next_out == outside piroBox
            pirobox_prev: 'piro_prev',// Nav buttons -> piro_prev == inside piroBox , piro_prev_out == outside piroBox
            close_all: '.piro_close',// add class .piro_overlay(with comma)if you want overlay click close piroBox
            slideShow: 'slideshow', // just delete slideshow between '' if you don't want it.
            slideSpeed: 4 //slideshow duration in seconds(3 to 6 Recommended)
        });
    });
</script>
<!--////// END  \\\\\\\-->

    <style type="text/css">
        .auto-style1
        {
            font-size: xx-large;
        }
    </style>

</head>
<body>

    <form id="form1" runat="server">

<div id="templatemo_outer_wrapper">

	<div id="templatemo_wrapper">
    
    	<div id="templatemo_header">
            <div id="site_title">
                <a href="index.aspx">شارك واستمتع</a>
            </div> <!-- end of site_title -->
            
            <div id="templatemo_menu">
                <ul>
                    <li><a href="index.aspx">الرئيسية</a></li>
                    <li><a href="booklist.aspx" class="current">المكتبة</a></li>
                    <li><a href="uploading.aspx">اقراض</a></li>
                    <li><a href="aboutus.aspx">من نحن</a></li>
                    <li><a href="contactus.aspx">تواصل معنا</a></li>
                </ul>    	
            </div> <!-- end of templatemo_menu -->
            
            <div class="cleaner"></div>
		</div>   <!-- end of header -->
        
        <div id="templatemo_main">
        	<div id="content_title_box">
                <table style="width: 100%;"><tr><td style="text-align:center"><h1><span class="auto-style1">المكتبة</span></h1></td></tr></table>                 	
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                <p>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="80px" Width="176px">
                        <asp:ListItem>أدب</asp:ListItem>
                        <asp:ListItem>اقتصاد و اعمال</asp:ListItem>
                        <asp:ListItem>تاريخ</asp:ListItem>
                        <asp:ListItem>تعليمية</asp:ListItem>
                        <asp:ListItem>تكنولوجيا</asp:ListItem>
                        <asp:ListItem>دينية</asp:ListItem>
                        <asp:ListItem>رواية</asp:ListItem>
                        <asp:ListItem>سياسة</asp:ListItem>
                        <asp:ListItem>شعر و فنون</asp:ListItem>
                        <asp:ListItem>علوم طبيعية</asp:ListItem>
                        <asp:ListItem>علم نفس</asp:ListItem>
                        <asp:ListItem>فكر و فلسفة</asp:ListItem>
                        <asp:ListItem>فلك</asp:ListItem>
                        <asp:ListItem>مذكرات</asp:ListItem>
                        <asp:ListItem>مراة وأسرة</asp:ListItem>
                    </asp:DropDownList>
                </p>
                <p>
                    <asp:Button ID="Button1" runat="server" Height="41px" OnClick="Button1_Click" style="font-weight: 700; font-size: large" Text="بحث" Width="101px" />
                </p>
                <p>&nbsp;</p>
               </asp:Panel>

 
                <div>
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="3" DataKeyNames="كود الكتاب">
                        <AlternatingItemTemplate>
                            <td runat="server" style="background-color:#FFF8DC;">كود الكتاب:
                                <asp:Label ID="كود_الكتابLabel" runat="server" Text='<%# Eval("[كود الكتاب]") %>' />
                                <br />
                                الاسم:
                                <asp:Label ID="الاسمLabel" runat="server" Text='<%# Eval("الاسم") %>' />
                                <br />
                                التصنيف:
                                <asp:Label ID="التصنيفLabel" runat="server" Text='<%# Eval("التصنيف") %>' />
                                <br />
                                معلومات:
                                <asp:Label ID="معلوماتLabel" runat="server" Text='<%# Eval("معلومات") %>' />
                                <br />
                            </td>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">كود الكتاب:
                                <asp:Label ID="كود_الكتابLabel1" runat="server" Text='<%# Eval("[كود الكتاب]") %>' />
                                <br />
                                الاسم:
                                <asp:TextBox ID="الاسمTextBox" runat="server" Text='<%# Bind("الاسم") %>' />
                                <br />
                                التصنيف:
                                <asp:TextBox ID="التصنيفTextBox" runat="server" Text='<%# Bind("التصنيف") %>' />
                                <br />
                                معلومات:
                                <asp:TextBox ID="معلوماتTextBox" runat="server" Text='<%# Bind("معلومات") %>' />
                                <br />
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <br />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                <br />
                            </td>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                <tr>
                                    <td>No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <EmptyItemTemplate>
                            <td runat="server" />
                        </EmptyItemTemplate>
                        <GroupTemplate>
                            <tr id="itemPlaceholderContainer" runat="server">
                                <td id="itemPlaceholder" runat="server"></td>
                            </tr>
                        </GroupTemplate>
                        <InsertItemTemplate>
                            <td runat="server" style="">الاسم:
                                <asp:TextBox ID="الاسمTextBox" runat="server" Text='<%# Bind("الاسم") %>' />
                                <br />
                                التصنيف:
                                <asp:TextBox ID="التصنيفTextBox" runat="server" Text='<%# Bind("التصنيف") %>' />
                                <br />
                                معلومات:
                                <asp:TextBox ID="معلوماتTextBox" runat="server" Text='<%# Bind("معلومات") %>' />
                                <br />
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <br />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                <br />
                            </td>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <td runat="server" style="background-color:#DCDCDC;color: #000000;">كود الكتاب:
                                <asp:Label ID="كود_الكتابLabel" runat="server" Text='<%# Eval("[كود الكتاب]") %>' />
                                <br />
                                الاسم:
                                <asp:Label ID="الاسمLabel" runat="server" Text='<%# Eval("الاسم") %>' />
                                <br />
                                التصنيف:
                                <asp:Label ID="التصنيفLabel" runat="server" Text='<%# Eval("التصنيف") %>' />
                                <br />
                                معلومات:
                                <asp:Label ID="معلوماتLabel" runat="server" Text='<%# Eval("معلومات") %>' />
                                <br />
                            </td>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr id="groupPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                        <asp:DataPager ID="DataPager1" runat="server" PageSize="9">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                            </Fields>
                                        </asp:DataPager>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">كود الكتاب:
                                <asp:Label ID="كود_الكتابLabel" runat="server" Text='<%# Eval("[كود الكتاب]") %>' />
                                <br />
                                الاسم:
                                <asp:Label ID="الاسمLabel" runat="server" Text='<%# Eval("الاسم") %>' />
                                <br />
                                التصنيف:
                                <asp:Label ID="التصنيفLabel" runat="server" Text='<%# Eval("التصنيف") %>' />
                                <br />
                                معلومات:
                                <asp:Label ID="معلوماتLabel" runat="server" Text='<%# Eval("معلومات") %>' />
                                <br />
                            </td>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT book_ID AS [كود الكتاب], Name AS الاسم, Category AS التصنيف, Details AS معلومات FROM book WHERE (Available &lt;&gt; 0)"></asp:SqlDataSource>
                </div>
               
                <asp:Panel ID="Panel2" runat="server">
                    <table style="width: 100%;">
                        <tr><td style="text-align:center"><asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="book_ID" DataValueField="book_ID" ToolTip="اختر كتاب لتقترضه"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [book_ID] FROM [book]"></asp:SqlDataSource>
                            </td></tr>
                        <tr><td style="text-align:center"><asp:Button ID="Button2" runat="server" Text="اقترض" Height="40px" OnClick="Button2_Click" Width="80px" /></td></tr>
                    </table>

                </asp:Panel>
 
            </div> <!-- end of featured project -->
        </div> <!-- end of main -->
        
        <div id="templatemo_content">
        
        	<div class="content_box cb_last">
            	
                <div class="cleaner"></div>
            </div>
        	
        </div> <!-- end of content -->
        
        <div id="templatemo_footer">

			<a href="index.aspx" >الرئيسية</a> | <a href="Admin/login.aspx">تسجيل دخول مسؤول</a> <br /><br />
    
        	Copyright © 2013 <a href="#">Okaz Library</a> | Designed by <a href="http://www.templatemo.com" target="_parent">Infinity Dream</a>
            
	    </div>
        
	</div> <!-- end of wrapper -->
</div> <!-- end of outer wrapper -->
    </form>
</body>
</html>
