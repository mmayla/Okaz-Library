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
            	<h1> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style1">المكتبة</span> &nbsp;</h1>
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
               

 
                <div>
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                        <AlternatingItemTemplate>
                            <li style="background-color: #FFF8DC;">Name:
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                <br />
                                Book_Cover:
                                <asp:Label ID="Book_CoverLabel" runat="server" Text='<%# Eval("Book_Cover") %>' />
                                <br />
                                Category:
                                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                                <br />
                                Available:
                                <asp:Label ID="AvailableLabel" runat="server" Text='<%# Eval("Available") %>' />
                                <br />
                                Details:
                                <asp:Label ID="DetailsLabel" runat="server" Text='<%# Eval("Details") %>' />
                                <br />
                            </li>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <li style="background-color: #008A8C;color: #FFFFFF;">Name:
                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                <br />
                                Book_Cover:
                                <asp:TextBox ID="Book_CoverTextBox" runat="server" Text='<%# Bind("Book_Cover") %>' />
                                <br />
                                Category:
                                <asp:TextBox ID="CategoryTextBox" runat="server" Text='<%# Bind("Category") %>' />
                                <br />
                                Available:
                                <asp:TextBox ID="AvailableTextBox" runat="server" Text='<%# Bind("Available") %>' />
                                <br />
                                Details:
                                <asp:TextBox ID="DetailsTextBox" runat="server" Text='<%# Bind("Details") %>' />
                                <br />
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </li>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            No data was returned.
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <li style="">Name:
                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                <br />Book_Cover:
                                <asp:TextBox ID="Book_CoverTextBox" runat="server" Text='<%# Bind("Book_Cover") %>' />
                                <br />Category:
                                <asp:TextBox ID="CategoryTextBox" runat="server" Text='<%# Bind("Category") %>' />
                                <br />Available:
                                <asp:TextBox ID="AvailableTextBox" runat="server" Text='<%# Bind("Available") %>' />
                                <br />Details:
                                <asp:TextBox ID="DetailsTextBox" runat="server" Text='<%# Bind("Details") %>' />
                                <br />
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            </li>
                        </InsertItemTemplate>
                        <ItemSeparatorTemplate>
<br />
                        </ItemSeparatorTemplate>
                        <ItemTemplate>
                            <li style="background-color: #DCDCDC;color: #000000;">Name:
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                <br />
                                Book_Cover:
                                <asp:Label ID="Book_CoverLabel" runat="server" Text='<%# Eval("Book_Cover") %>' />
                                <br />
                                Category:
                                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                                <br />
                                Available:
                                <asp:Label ID="AvailableLabel" runat="server" Text='<%# Eval("Available") %>' />
                                <br />
                                Details:
                                <asp:Label ID="DetailsLabel" runat="server" Text='<%# Eval("Details") %>' />
                                <br />
                            </li>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <li runat="server" id="itemPlaceholder" />
                            </ul>
                            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </div>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">Name:
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                <br />
                                Book_Cover:
                                <asp:Label ID="Book_CoverLabel" runat="server" Text='<%# Eval("Book_Cover") %>' />
                                <br />
                                Category:
                                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                                <br />
                                Available:
                                <asp:Label ID="AvailableLabel" runat="server" Text='<%# Eval("Available") %>' />
                                <br />
                                Details:
                                <asp:Label ID="DetailsLabel" runat="server" Text='<%# Eval("Details") %>' />
                                <br />
                            </li>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Book_Cover], [Category], [Available], [Details] FROM [book]"></asp:SqlDataSource>
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
    
        	Copyright © 2013 <a href="#">Okaz Library</a> | Designed by <a href="http://www.templatemo.com" target="_parent">Infinity Dream</a>
            
	    </div>
        
	</div> <!-- end of wrapper -->
</div> <!-- end of outer wrapper -->
    </form>
</body>
</html>
