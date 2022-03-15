Imports System.Data
Imports System.Data.SqlClient
Public Class Terneros
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnInsertar_Click(sender As Object, e As EventArgs) Handles btnInsertar.Click
        Try
            Dim sqL As String = "INSERT INTO [dbo].[Terneros]([arete],[nombre],[fecha],[padre],[madre]) VALUES ('" + txtArete.Text + "','" + txtNombre.Text + "','" + txtFecha.Text + "','" + txtPadre.Text + "','" + txtMadre.Text + "')"
            Dim reader As SqlDataReader
            Dim conexion As New SqlConnection(get_ConnectionString)
            conexion.Open()
            Dim miComandoSql As New SqlCommand
            miComandoSql.CommandText = sqL
            miComandoSql.Connection = conexion
            reader = miComandoSql.ExecuteReader
            conexion.Close()
            txtArete.Text = ""
            txtNombre.Text = ""
            txtFecha.Text = ""
            txtPadre.Text = ""
            txtMadre.Text = ""
            gvTerneros.DataBind()
            SqlDataSourceTerneros.DataBind()
        Catch ex As Exception
            Response.Write(ex.ToString)
        End Try
    End Sub
    Public Function get_ConnectionString() As String
        Dim sql_conexion_string As String = "Data Source=DESKTOP-K3KI45J\SQLEXPRESS; Initial Catalog=Ganado; User ID=sa; Password=yyy"
        Return sql_conexion_string
    End Function

    Protected Sub gvVacas_SelectedIndexChanged(sender As Object, e As EventArgs) Handles gvTerneros.SelectedIndexChanged
        txtArete.Text = gvTerneros.SelectedRow.Cells(1).Text.ToString
        txtNombre.Text = gvTerneros.SelectedRow.Cells(2).Text.ToString
        txtFecha.Text = gvTerneros.SelectedRow.Cells(3).Text.ToString
        txtPadre.Text = gvTerneros.SelectedRow.Cells(4).Text.ToString
        txtMadre.Text = gvTerneros.SelectedRow.Cells(5).Text.ToString
    End Sub

    Protected Sub btnModificar_Click(sender As Object, e As EventArgs) Handles btnModificar.Click
        Try
            Dim sqL As String = "UPDATE [dbo].[Terneros] SET [nombre] = '" + txtNombre.Text + "',[fecha] = '" + txtFecha.Text + "',[padre] = '" + txtPadre.Text + "',[madre] = '" + txtMadre.Text + "' WHERE [arete]='" + txtArete.Text + "'"
            Dim reader As SqlDataReader
            Dim conexion As New SqlConnection(get_ConnectionString)
            conexion.Open()
            Dim miComandoSql As New SqlCommand
            miComandoSql.CommandText = sqL
            miComandoSql.Connection = conexion
            reader = miComandoSql.ExecuteReader
            conexion.Close()
            txtArete.Text = ""
            txtNombre.Text = ""
            txtFecha.Text = ""
            txtPadre.Text = ""
            txtMadre.Text = ""
            gvTerneros.DataBind()
            SqlDataSourceTerneros.DataBind()
        Catch ex As Exception
            Response.Write(ex.ToString)
        End Try
    End Sub

    Protected Sub btnEliminar_Click(sender As Object, e As EventArgs) Handles btnEliminar.Click
        Try
            Dim sql As String = "DELETE FROM [dbo].[Terneros] WHERE [arete] = '" + txtArete.Text + "'"
            Dim reader As SqlDataReader
            Dim conexion As New SqlConnection(get_ConnectionString)
            conexion.Open()
            Dim miComandoSql As New SqlCommand
            miComandoSql.CommandText = sql
            miComandoSql.Connection = conexion
            reader = miComandoSql.ExecuteReader
            conexion.Close()
            txtArete.Text = ""
            txtNombre.Text = ""
            txtFecha.Text = ""
            txtPadre.Text = ""
            txtMadre.Text = ""
            gvTerneros.DataBind()
            SqlDataSourceTerneros.DataBind()
        Catch ex As Exception
            Response.Write(ex.ToString)
        End Try
    End Sub
End Class