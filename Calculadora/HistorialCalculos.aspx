<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="HistorialCalculos.aspx.cs" Inherits="Calculadora.HistorialCalculos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src ="StyleSheet.css"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="width:max-content;margin:auto;margin-top:50px;">
        <asp:Button ID="btnMotrar" runat="server" Text="Mostrar" OnClick="btnMotrar_Click" />
        <br />
        <asp:Label ID="lblMostrar" runat="server" Text="Cuenta"></asp:Label>
         <br />
         <br />
         <asp:Button ID="btnVolver" runat="server" Text="Volver a la calculadora" OnClick="btnVolver_Click" />
    </div>

</asp:Content>
