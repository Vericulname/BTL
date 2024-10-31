<%@ Page Title="" Language="C#" MasterPageFile="~/head.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="BTL.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <link rel="stylesheet" href="CSSstyle/trangChu-style.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <% List<BTL.Oject.items> itemslist = Application[BTL.Global.item] as List<BTL.Oject.items>; %>
    

             <!-- <div class="home-banner display-flex "> -->
             <div class="home-banner-wrap display-flex ">
                 <div class="banner"></div>

                 <!-- </div> -->

             </div>

             <!-- <div class="category center"> -->
             <div class="category-wrap display-flex ">
                 <div class="title">Danh mục</div>
                 <div class="category-list-wrap">
                     <ul class="category-list display-flex">
                         <li class="category-item">
                             <img src="img/category/ao-nam.jpg" alt="" class="category-pic" />
                             <p class="category-name">Áo nam</p>
                         </li>
                         <li class="category-item">
                             <img src="img/category/ao-nu.jpg" alt="" class="category-pic" />
                             <p class="category-name">Áo nữ</p>
                         </li>
                         <li class="category-item">
                             <img src="img/category/dien-thoai.jpg" alt="" class="category-pic" />
                             <p class="category-name">điện thoại</p>
                         </li>
                         <li class="category-item">
                             <img src="img/category/may-anh.jpg" alt="" class="category-pic" />
                             <p class="category-name">máy ảnh</p>
                         </li>
                         <li class="category-item">
                             <img src="img/category/thiet-bi-dien-tu.jpg" alt="" class="category-pic" />
                             <p class="category-name">Thiết bị điện tử</p>
                         </li>
                         <li class="category-item">
                             <img src="img/category/thiet-bi-gia-dung.jpg" alt="" class="category-pic" />
                             <p class="category-name">Thiết bị gia dụng</p>
                         </li>

                     </ul>

                 </div>
             </div>
             <!-- </div> -->
             <div class="product">
                 <div class="title display-flex">
                     <p style="font-size: 25px;">Sản phẩm</p>
                     <div class="rectangle"></div>
                 </div>


                 <div class="item-list display-flex">
                     <% foreach (BTL.Oject.items i in itemslist)
                         {

                        %>
                     <a href="item.aspx?id=<%=i.id %>" class="item display-flex" style="background-color: aqua;">
                         <img src="<%=i.ImgURL %>" alt="">

                         <div class="item-info display-flex">
                             <p class="item-name"><%=i.name %></p>
                             <div class="item-price-n-sale display-flex">
                                 <p class="price"><%=i.price %>đ</p>
                                 <p class="sale-count">Số lượng <%=i.SL %></p>
                             </div>

                         </div>
                     </a>
                     <%} %>
                 </div>



                 <!-- 
         <div class="offer">
             <div class="offer-banner1">
                 <div class="blur1">
                     <div class="row1">
                         <img src="img/70.png" alt="">
                         <img src="img/off.png" alt="">
                     </div>
                     <img id="img1" src="img/tao_kinben_na.png" alt="">
                     <img id="img2" src="img/triangle.png" alt="">
                 </div>

             </div>
             <div class="offer-banner2">
                 <div class="blur2">

                     <img src="img/triangle_copy.png" alt="">
                     <div class="row2">
                         <img src="img/amr_chehara_kharap_na.png" alt="">
                         <img src="img/chehara_dia_ki_hoy.png" alt="">

                     </div>


                 </div>
             </div>

         </div> -->
             </div>

     
 
     
</asp:Content>
