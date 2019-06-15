<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Harrycontractorswebsite.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>&nbsp;</h2>
    <h2>Our Customers are our Priority</h2>
    <p>
       <mark> Harry Contractors is a Lawn mowing business that all based upon the customers demands and needs .We offer very reliable customer service along with affordable prices.</mark>
   </p>
    
    <div class="center" style="max-width:100%">
        <img src="images/lawn1.jpg"  class="myimage" style="width:50%;display: block; margin-left: auto; margin-right: auto;"/>
        <img src="images/image5.jpg"  class="myimage" style="width:50%; display: block; margin-left: auto; margin-right: auto;"/>
        <img src="images/image6.jpg"  class="myimage" style="width:50%; display: block; margin-left: auto; margin-right: auto;"/>
        <img src="images/image7.jpg"  class="myimage" style="width:50%; display: block; margin-left: auto; margin-right: auto;"/>
        <img src="images/image8.jpg"  class="myimage" style="width:50%; display: block; margin-left: auto; margin-right: auto;"/>
         
    </div>
    <script>
        var index = 0;
        carousel();
        function carousel() {
            var i;
            var x = document.getElementsByClassName("myimage");
            for (i = 0; i < x.length; i++) { x[i].style.display = "none"; }
            index++;
            if (index > x.length) { index = 1; }
            x[index - 1].style.display = "block";
            setTimeout(carousel, 2000);

        }
    </script>
</asp:Content>
