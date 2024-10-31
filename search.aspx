<%@ Page Title="" Language="C#" MasterPageFile="~/head.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="BTL.search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="CSSstyle/search.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%  List<BTL.Oject.items> itemslist = Application[BTL.Global.item] as List<BTL.Oject.items>;
        string search_name = Request.Form["search-box"];
        %>
    <nav class="nav-bar display-flex" >
        <span>sắp xếp</span>
        <button>giá</button>
       
    </nav>
    <div class="item-list display-flex">
    <% foreach (BTL.Oject.items i in itemslist)
        {
            //if (i.name.Contains(search_name))
            //            {


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
    <% //}
        } %>
</div>
</asp:Content>
