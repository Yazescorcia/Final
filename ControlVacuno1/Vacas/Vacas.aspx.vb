Imports System.Data
Imports System.Data.SqlClient

Public Class Vacas
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnInsertar_Click(sender As Object, e As EventArgs) Handles btnInsertar.Click
        Try
            Dim sqL As String = "INSERT INTO [dbo].[Vacas]([arete],[nombre],[fecha],[proceso],[cemental]) VALUES ('" + txtArete.Text + "','" + txtNombre.Text + "','" + txtFecha.Text + "','" + txtProceso.Text + "','" + txtCemental.Text + "')"
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
            txtProceso.Text = ""
            txtCemental.Text = ""
            gvVacas.DataBind()
            SqlDataSourceVacas.DataBind()
        Catch ex As Exception
            Response.Write(ex.ToString)
        End Try
    End Sub
    Public Function get_ConnectionString() As String
        Dim sql_conexion_string As String = "Data Source=DESKTOP-K3KI45J\SQLEXPRESS; Initial Catalog=Ganado; User ID=sa; Password=yyy"
        Return sql_conexion_string
    End Function

    Protected Sub gvVacas_SelectedIndexChanged(sender As Object, e As EventArgs) Handles gvVacas.SelectedIndexChanged
        txtArete.Text = gvVacas.SelectedRow.Cells(1).Text.ToString
        txtNombre.Text = gvVacas.SelectedRow.Cells(2).Text.ToString
        txtFecha.Text = gvVacas.SelectedRow.Cells(3).Text.ToString
        txtProceso.Text = gvVacas.SelectedRow.Cells(4).Text.ToString
        txtCemental.Text = gvVacas.SelectedRow.Cells(5).Text.ToString
    End Sub

    Protected Sub btnModificar_Click(sender As Object, e As EventArgs) Handles btnModificar.Click
        Try
            Dim sqL As String = "UPDATE [dbo].[Vacas] SET [nombre] = '" + txtNombre.Text + "',[fecha] = '" + txtFecha.Text + "',[proceso] = '" + txtProceso.Text + "',[cemental] = '" + txtCemental.Text + "' WHERE [arete]='" + txtArete.Text + "'"
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
            txtProceso.Text = ""
            txtCemental.Text = ""
            gvVacas.DataBind()
            SqlDataSourceVacas.DataBind()
        Catch ex As Exception
            Response.Write(ex.ToString)
        End Try
    End Sub

    Protected Sub btnEliminar_Click(sender As Object, e As EventArgs) Handles btnEliminar.Click
        Try
            Dim sql As String = "DELETE FROM [dbo].[Vacas] WHERE [arete] = '" + txtArete.Text + "'"
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
            txtProceso.Text = ""
            txtCemental.Text = ""
            gvVacas.DataBind()
            SqlDataSourceVacas.DataBind()
        Catch ex As Exception
            Response.Write(ex.ToString)
        End Try
    End Sub
End Class