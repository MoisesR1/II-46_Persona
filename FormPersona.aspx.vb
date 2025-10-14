Public Class FormPersona
    Inherits System.Web.UI.Page
    Public persona As New Persona()
    Protected dbHelper As New DataBaseHelper()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Btn_guardar_Click(sender As Object, e As EventArgs)
        Persona.Nombre = Txt_nombre.Text
        persona.Apellido = Txt_apellido.Text
        persona.Edad = Txt_edad.Text
        lbl_mensaje.Text = dbHelper.create(persona)

    End Sub

    Protected Sub Gv_personas_RowDeleting(sender As Object, e As GridViewDeleteEventArgs)
        Try
            Dim id As Integer = Convert.ToInt32(Gv_personas.DataKeys(e.RowIndex).Value)
            dbHelper.delete(id)
            e.Cancel = True
            Gv_personas.DataBind()
        Catch ex As Exception
            lbl_mensaje.Text = "Error al eliminar la persona: " & ex.Message

        End Try
    End Sub

    Protected Sub Gv_personas_RowCancelingEdit(sender As Object, e As GridViewCancelEditEventArgs)

    End Sub

    Protected Sub Gv_personas_RowUpdating(sender As Object, e As GridViewUpdateEventArgs)

    End Sub
End Class