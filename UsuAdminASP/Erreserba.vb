Public Class Erreserba
    'atributuak
    Private _dataAmaiera, _dataHasiera, _erreserbaPrezioa, _signaturaId, _erabilNan As String
    Private _idErreserba, _pertsonaKant As Integer

    'kontruktorea
    Public Sub New(idErreserba As Integer, dataAmaiera As String, dataHasiera As String, erreserbaPrezioa As String, pertsonaKant As Integer, signaturaId As String, erabilNan As String)
        _dataAmaiera = dataAmaiera
        _dataHasiera = dataHasiera
        _erreserbaPrezioa = erreserbaPrezioa
        _signaturaId = signaturaId
        _erabilNan = erabilNan
        _idErreserba = idErreserba
        _pertsonaKant = pertsonaKant
    End Sub
    'propietateak
    Public Property DataAmaiera As String
        Get
            Return _dataAmaiera
        End Get
        Set(value As String)
            _dataAmaiera = value
        End Set
    End Property

    Public Property DataHasiera As String
        Get
            Return _dataHasiera
        End Get
        Set(value As String)
            _dataHasiera = value
        End Set
    End Property

    Public Property ErreserbaPrezioa As String
        Get
            Return _erreserbaPrezioa
        End Get
        Set(value As String)
            _erreserbaPrezioa = value
        End Set
    End Property

    Public Property SignaturaId As String
        Get
            Return _signaturaId
        End Get
        Set(value As String)
            _signaturaId = value
        End Set
    End Property

    Public Property ErabilNan As String
        Get
            Return _erabilNan
        End Get
        Set(value As String)
            _erabilNan = value
        End Set
    End Property

    Public Property IdErreserba As Integer
        Get
            Return _idErreserba
        End Get
        Set(value As Integer)
            _idErreserba = value
        End Set
    End Property

    Public Property PertsonaKant As Integer
        Get
            Return _pertsonaKant
        End Get
        Set(value As Integer)
            _pertsonaKant = value
        End Set
    End Property

    ' toString
    Public Overrides Function ToString() As String
        Return MyBase.ToString()
    End Function
End Class
