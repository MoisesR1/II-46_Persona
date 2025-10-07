Public Class Persona
    Private _nombre As String
    Private _apellido As String
    Private _edad As Integer

    Public Property Nombre As String
        Get
            Return Nombre
        End Get
        Set(value As String)
            nombre = value
        End Set
    End Property

    Public Property Apellido As String
        Get
            Return Apellido
        End Get
        Set(value As String)
            apellido = value
        End Set
    End Property

    Public Property Edad As Integer
        Get
            Return Edad
        End Get
        Set(value As Integer)
            edad = value
        End Set
    End Property

    Public Sub New()
        'Constructor por defecto
        Me.nombre = "No hay nombre"
    End Sub

    Public Sub New(edad As Integer)
        Me.edad = edad
    End Sub

    Public Sub New(nombre As String, apellido As String, edad As Integer)
        Me.Nombre = nombre
        Me.Apellido = apellido
        Me.Edad = edad
    End Sub
End Class
