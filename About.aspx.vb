Public Class About
    Inherits Page
    Public persona As New Persona()


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Dim p1 As New Persona
        Dim p2 As New Persona(25)
        Dim p3 As New Persona("Juan", "Perez", 30)
    End Sub

    Protected Sub Btn_guardar_Click(sender As Object, e As EventArgs)
        persona.Nombre = Txt_nombre.Text
        persona.Apellido = Txt_apellido.Text
        lbl_mensaje.Text = persona.Nombre + " " + persona.Apellido
    End Sub
End Class