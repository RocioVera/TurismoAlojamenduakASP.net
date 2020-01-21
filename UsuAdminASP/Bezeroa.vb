Public Class Bezeroa
    'atributuak
    Private _izena, _abizenak, _email, _nan, _telefonoa As String
    Private _baimena As Integer

    'kontruktorea
    Public Sub New(nan As String, izena As String, abizenak As String, baimena As Integer, email As String, telefonoa As String)
        Me._nan = nan
        Me._izena = izena
        Me._abizenak = abizenak
        Me._baimena = baimena
        Me._email = email
        Me._telefonoa = telefonoa
    End Sub

    Public Sub New(nan As String, izena As String)
        Me._nan = nan
        Me._izena = izena

    End Sub
    Public Sub New(nan As String)
        Me._nan = nan
    End Sub

    Public Sub New()
    End Sub

    'propietateak
    Public Property erabil_izena As String
        Get
            Return _izena
        End Get
        Set(value As String)
            _izena = value
        End Set
    End Property

    Public Property abizenak As String
        Get
            Return _abizenak
        End Get
        Set(value As String)
            _abizenak = value
        End Set
    End Property

    Public Property email As String
        Get
            Return _email
        End Get
        Set(value As String)
            _email = value
        End Set
    End Property

    Public Property nan As String
        Get
            Return _nan
        End Get
        Set(value As String)
            _nan = value
        End Set
    End Property

    Public Property baimena As Integer
        Get
            Return _baimena
        End Get
        Set(value As Integer)
            _baimena = value
        End Set
    End Property

    Public Property telefonoa As String
        Get
            Return _telefonoa
        End Get
        Set(value As String)
            _telefonoa = value
        End Set
    End Property

    ' toString
    Public Overrides Function ToString() As String
        Return MyBase.ToString()
    End Function
End Class
