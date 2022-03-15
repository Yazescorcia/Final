<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Vacas.aspx.vb" Inherits="ControlVacuno1.Vacas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Página De Vacas</h1>
    <div class="row">
        <div class="col-md-4">
            <asp:Label ID="lblArete" runat="server" Text="Arete:"></asp:Label>
            <asp:TextBox ID="txtArete" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <asp:Label ID="lbtFecha" runat="server" Text="Fecha:"></asp:Label>
            <asp:TextBox ID="txtFecha" runat="server"></asp:TextBox>
            <br />
            <br />
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <asp:Label ID="lblProceso" runat="server" Text="Proceso:"></asp:Label>
            <asp:TextBox ID="txtProceso" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label1" runat="server" Text="Cemental:"></asp:Label>
            <asp:TextBox ID="txtCemental" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="row">

        <br />
        <br />

    </div>
    <div class="row">
        <div class="col-md-4">
            <asp:Button ID="btnInsertar" runat="server" Text="Insertar"  />
        </div>
        <div class="col-md-4">
            <asp:Button ID="btnModificar" runat="server" Text="Modificar" />
        </div>
        <div class="col-md-4">
            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" />
            <br />
            <br />
        </div>
     </div>
    <div class="row">
        <div class="col-md-12">
            <asp:GridView ID="gvVacas" runat="server" AutoGenerateColumns="False" DataKeyNames="arete" DataSourceID="SqlDataSourceVacas" Height="100px" Width="419px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                <Columns>
                    <asp:CommandField ShowSelectButton="True" ButtonType="Button" />
                    <asp:BoundField DataField="arete" HeaderText="Arete:" ReadOnly="True" SortExpression="arete"></asp:BoundField>
                    <asp:BoundField DataField="nombre" HeaderText="Nombre:" SortExpression="nombre"></asp:BoundField>
                    <asp:BoundField DataField="fecha" HeaderText="Fecha:" SortExpression="fecha"></asp:BoundField>
                    <asp:BoundField DataField="proceso" HeaderText="Proceso:" SortExpression="proceso"></asp:BoundField>
                    <asp:BoundField DataField="cemental" HeaderText="Cemental:" SortExpression="cemental"></asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#CCCC99"></FooterStyle>

                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Right" BackColor="#F7F7DE" ForeColor="Black"></PagerStyle>

                <RowStyle BackColor="#F7F7DE"></RowStyle>

                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#FBFBF2"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#848384"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#EAEAD3"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#575357"></SortedDescendingHeaderStyle>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSourceVacas" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT arete, nombre, fecha, proceso, cemental FROM Vacas"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
