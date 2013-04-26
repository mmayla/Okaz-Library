<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="Okaz_Library.contactus" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>مكتبة عكاظ</title>
<meta name="keywords" content="sandbox template, contact form, html css, free website layout" />
<meta name="description" content="Sandbox Template is provided by templatemo.com for free of charge. Feel free to download, edit and use this layout." />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
    </style>
</head>
<body>

<div id="templatemo_outer_wrapper">

	<div id="templatemo_wrapper">
    
    	<div id="templatemo_header">
            <div id="site_title">
                <a href="index.aspx">شارك واستمتع</a>
            </div> <!-- end of site_title -->
            
            <div id="templatemo_menu">
                <ul>
                    <li><a href="index.aspx">الرئيسية</a></li>
                    <li><a href="booklist.aspx">المكتبة</a></li>
                    <li><a href="uploading.aspx">اقراض</a></li>
                    <li><a href="aboutus.aspx">من نحن</a></li>
                    <li><a href="contactus.aspx" class="current">تواصل معنا</a></li>
                </ul>    	
            </div> <!-- end of templatemo_menu -->
            
            <div class="cleaner"></div>
		</div>   <!-- end of header -->
        
        <div id="templatemo_main">
        	<div id="content_title_box">
            	<h1>Contact Information</h1>
               	<p>place to deliver the books ...etc</p>
            </div> <!-- end of featured project -->
        </div> <!-- end of main -->
        
        <div id="templatemo_content">
        
        	<div class="content_box cb_last">
            
            	<div class="col_w300 col_first">
                
                	<h3>منطقة تواجدنا الاولى</h3>
                
                    هندسة القاهرة - الجبلاية<br />
                    من الساغة 12الي 4 يوميا<br />
                    <br />
                    Tel: 020-010-7400<br />
                    Fax: 020-010-9200
                    
                    <div class="cleaner h40"></div>
                    
                    <h3>منطقة تواجدنا الثانية</h3>
                    هندسة القاهرة - بجانب مبنى اعدادي<br />
                    من الساعة 9 الي 12 يوميا<br />
                    <br />
                    Tel: 010-080-4200<br />
                    Fax: 010-080-2400
                    
                </div>
                
                <div class="col_w640 col_last">
                
                	<div id="contact_form">
                    
                        <h3>تواصل معنا</h3>
                        
                        <form id="form1" runat="server">
                        
                            <label for="author">الاسم:</label>
                            <asp:TextBox ID="TextBox1" runat="server" BackColor="#181818" Width="360px" ForeColor="#CCCCCC" Height="20px"></asp:TextBox>
&nbsp;<div class="cleaner h10"></div>
                            <label for="email">الايميل:</label><asp:TextBox ID="TextBox2" runat="server" BackColor="#181818" Width="360px" ForeColor="#CCCCCC" Height="20px" TextMode="Email"></asp:TextBox>
                            <div class="cleaner h10"></div>
                            
                            <label for="phone">الهاتف:</label>
                            <asp:TextBox ID="TextBox3" runat="server" BackColor="#181818" Width="360px" ForeColor="#CCCCCC" Height="20px" TextMode="Phone"></asp:TextBox>
&nbsp;<div class="cleaner h10"></div>
            
                            <label for="text">الرسالة:</label>
                            <asp:TextBox ID="TextBox4" runat="server" BackColor="#181818" Width="360px" ForeColor="#CCCCCC" TextMode="MultiLine"></asp:TextBox>

                            <div class="cleaner h10"></div>
                            <asp:Label ID="Label1" runat="server" Font-Size="Medium"></asp:Label>
                            <span class="auto-style1">
                            <br />
                            </span>
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" BackColor="#111111" ForeColor="#CCCCCC" Height="40px" OnClick="Button1_Click" Text="ارسل" Width="70px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" BackColor="#111111" ForeColor="#CCCCCC" Height="40px" OnClick="Button2_Click" Text="مسح الخانات" Width="70px" />
                            
                        </form>
                        
					</div>
                    	
                </div>
                
                
                
                <div class="cleaner"></div>
            </div>
        	
        </div> <!-- end of content -->
        
        <div id="templatemo_footer">

			<a href="index.aspx" class="current">Home</a> | <a href="aboutus.aspx">About Us</a> | <a href="contactus.aspx">Contact Us</a><br /><br />
    
        	Copyright © 2013 <a href="#">Okaz Library</a> | Designed by <a href="http://www.templatemo.com" target="_parent">Infinity Dream</a>
            
	    </div>
        
	</div> <!-- end of wrapper -->
</div> <!-- end of outer wrapper -->
</body>
</html>
