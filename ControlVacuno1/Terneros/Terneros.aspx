<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Terneros.aspx.vb" Inherits="ControlVacuno1.Terneros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <h1>Página De Terneros</h1>
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
            <asp:Label ID="lblPadre" runat="server" Text="Padre:"></asp:Label>
            <asp:TextBox ID="txtPadre" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-6">
            <asp:Label ID="lblMadre" runat="server" Text="Madre:"></asp:Label>
        <asp:TextBox ID="txtMadre" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <br />
        <br />
    </div>
    <div class="row">
        <div class="col-md-4">
            <asp:Button ID="btnInsertar" runat="server" Text="Insertar" />
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
            <asp:GridView ID="gvTerneros" runat="server" AutoGenerateColumns="False" DataKeyNames="arete" DataSourceID="SqlDataSourceTerneros" Height="78px" Width="459px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                <Columns>
                    <asp:CommandField ShowSelectButton="True" ButtonType="Button" />
                    <asp:BoundField DataField="arete" HeaderText="Arete:" ReadOnly="True" SortExpression="arete"></asp:BoundField>
                    <asp:BoundField DataField="nombre" HeaderText="Nombre:" SortExpression="nombre"></asp:BoundField>
                    <asp:BoundField DataField="fecha" HeaderText="Fecha:" SortExpression="fecha"></asp:BoundField>
                    <asp:BoundField DataField="padre" HeaderText="Padre:" SortExpression="padre"></asp:BoundField>
                    <asp:BoundField DataField="madre" HeaderText="Madre:" SortExpression="madre"></asp:BoundField>
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
            <asp:SqlDataSource runat="server" ID="SqlDataSourceTerneros" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT arete, nombre, fecha, padre, madre FROM Terneros"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
