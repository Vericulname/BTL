<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChuTest.aspx.cs" Inherits="BTL.TranChu" %>

<% List<BTL.Oject.items> itemslist = Application[BTL.Global.item] as List<BTL.Oject.items>; %>
    <!DOCTYPE html>
    <html>

    <head>
        <title>cửa hàng SangNG</title>
        <meta charset="UTF-8">
        <meta name="description" content="cửa hàng thời trang">
        <meta name="keywords" content="thời trang">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=Edge">
        <link rel="stylesheet" href="trangChu-style.css">
    </head>

    <body class="center">
        <div class="wrap">
            <header>
                <div class="small-header display-flex">
                    <div class="info display-flex"></div>
                    <div class="space"> </div>
                    <ul class="acc display-flex">
                        <li>đăng ký</li>
                        <li>giỏ hàng (0)</li>
                        <li>đăng nhập</li>
                    </ul>

                </div>

                <nav class="header display-flex">
                    <div class="header-wrap display-flex">
                        <img class="logo" src="" alt="">
                        <form class="search-bar display-flex" action="">
                            <input type="text" name="" value="tìm kiếm">
                            <button class="search">Tìm</button>
                        </form>
                    </div>
                </nav>

            </header>
            <main class="display-flex">
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
                        <a href=" " class="item display-flex" style="background-color: aqua;">
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

            </main>
        </div>
        <div class="rectangle"></div>
        <footer>
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis nulla corrupti voluptatem nisi
                dolorum qui temporibus dolorem. Itaque sed magni qui beatae autem cum sint exercitationem nisi, unde
                aspernatur. Blanditiis.</p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta, id dolor adipisci odit nulla temporibus
                libero quae ea officia quas, repellendus ad vero incidunt beatae quaerat? Non mollitia possimus vero!
            </p>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dicta saepe ipsa animi soluta? Eligendi,
                dignissimos. Eos earum, voluptate iure asperiores quia quos. Obcaecati suscipit atque iure quibusdam?
                Eos, excepturi tempora?</p>
        </footer>

    </body>

    </html>