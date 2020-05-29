<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="calculadora.aspx.cs" Inherits="Calculadora.calculadora" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <span id="span"><asp:DropDownList ID="listaAcciones" runat="server">
            <asp:ListItem>Sumar</asp:ListItem>
            <asp:ListItem>Restar</asp:ListItem>
            <asp:ListItem>Multiplicar</asp:ListItem>
            <asp:ListItem>Dividir</asp:ListItem>
        </asp:DropDownList>
            </span>
    <div id="calculadora">
    <div>
       <label><asp:Label ID="lblNum1" runat="server" Text="Número 1"></asp:Label></label>
    </div>

    <div>
        <asp:TextBox ID="txtNum1" CssClass="form-control" runat="server" onkeypress="return event.charCode >= 48 && event.charCode <= 57"></asp:TextBox>
    </div>

    <div>
        <label><asp:Label ID="lblNum2" runat="server" Text="Número 2"></asp:Label></label>
    </div>

    <div>
        <asp:TextBox ID="txtNum2" CssClass="form-control" runat="server" onkeypress="return event.charCode >= 48 && event.charCode <= 57"></asp:TextBox>
    </div>
        <br />
    <div>
        <asp:Button ID="btnTotal" runat="server" Text="Calcular" OnClick="btnTotal_Click" />
        <br />
        <asp:Label ID="lblObligatorio" runat="server" Text="Ambos campos son obligarios*" ForeColor="Black" Visible="False"></asp:Label>
    </div>

    <div>
        <label><asp:Label ID="lblResultado" runat="server" Text="Resultado"></asp:Label></label>
        <br />
        <asp:TextBox ID="txtResultado" runat="server" ReadOnly="True"></asp:TextBox>
    </div>
        </div>
    <br />
    <div style="width:max-content; margin:auto;">
    <asp:Button ID="btnForm2" runat="server" Text="Ir a otro formulario" OnClick="btnForm2_Click" />
    </div>
</asp:Content>
