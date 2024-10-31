<%@ Page Title="" Language="C#" MasterPageFile="~/head.Master" AutoEventWireup="true" CodeBehind="item.aspx.cs" Inherits="BTL.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="CSSstyle/item.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="item">   
            <%
        int itemsID = Convert.ToInt32("0"+Request.QueryString["id"]);
        BTL.Oject.items displayItem = null;
        if(itemsID > 0)
        {
            List<BTL.Oject.items> itemslist = Application[BTL.Global.item] as List<BTL.Oject.items>;
            displayItem = itemslist.Find(
                    p => p.id.Equals(itemsID));

        }
        if(displayItem != null)
            {
                    
          
        %>
        <div class="item-img">
              <img src="<%=displayItem.ImgURL %>"/>
        </div>
      
        <div class="item-info">
            <p><%=displayItem.name %> </p>
            <p><%=displayItem.price %>đ</p>
            <div class="button-wrap">
                 <button>Thêm vào giỏ hàng</button>
                 <button>mua ngay</button>
            </div>

        </div>
    </div>
    <div class="description">
        <p class="title2">Mô tả sản phẩm</p>
       <%=displayItem.description %>
    </div>
    <%  } %>
</asp:Content>
