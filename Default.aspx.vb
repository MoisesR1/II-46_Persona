Public Class _Default
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Dim p1 As New Persona()
        Dim p2 As Persona(25)
        Dim p3 As Persona("Juan", "Perez", 30)
    End Sub
End Class