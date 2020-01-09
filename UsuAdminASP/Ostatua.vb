Public Class Ostatua
    'atributuak
    Private _idSignatura, _ostatuIzena, _deskribapena, _ostatuHelbidea, _marka, _ostatuEmail, _ostatuTelefonoa, _mota, _webUrl, _adiskidetsuUrl, _zipUrl, _herriKodea As String
    Private _pertsonaTot, _postaKodea As Integer
    Private _latitude, _longitude As Double

    'kontruktorea
    Public Sub New(idSignatura As String, ostatuIzena As String, deskribapena As String, ostatuHelbidea As String, marka As String,
                   ostatuEmail As String, ostatuTelefonoa As String, pertsonaTot As Integer, latitude As Double, longitude As Double,
                   mota As String, webUrl As String, adiskidetsuUrl As String, zipUrl As String, postaKodea As Integer, herriKodea As String)
        Me.IdSignatura = idSignatura
        Me.OstatuIzena = ostatuIzena
        Me.Deskribapena = deskribapena
        Me.OstatuHelbidea = ostatuHelbidea
        Me.Marka = marka
        Me.OstatuEmail = ostatuEmail
        Me.OstatuTelefonoa = ostatuTelefonoa
        Me.Mota = mota
        Me.WebUrl = webUrl
        Me.AdiskidetsuUrl = adiskidetsuUrl
        Me.ZipUrl = zipUrl
        Me.HerriKodea = herriKodea
        Me.PertsonaTot = pertsonaTot
        Me.PostaKodea = postaKodea
        Me.Latitude = latitude
        Me.Longitude = longitude
    End Sub

    Public Sub New()
    End Sub

    'propietateak
    Public Property IdSignatura As String
        Get
            Return _idSignatura
        End Get
        Set(value As String)
            _idSignatura = value
        End Set
    End Property

    Public Property OstatuIzena As String
        Get
            Return _ostatuIzena
        End Get
        Set(value As String)
            _ostatuIzena = value
        End Set
    End Property

    Public Property Deskribapena As String
        Get
            Return _deskribapena
        End Get
        Set(value As String)
            _deskribapena = value
        End Set
    End Property

    Public Property OstatuHelbidea As String
        Get
            Return _ostatuHelbidea
        End Get
        Set(value As String)
            _ostatuHelbidea = value
        End Set
    End Property

    Public Property Marka As String
        Get
            Return _marka
        End Get
        Set(value As String)
            _marka = value
        End Set
    End Property

    Public Property OstatuEmail As String
        Get
            Return _ostatuEmail
        End Get
        Set(value As String)
            _ostatuEmail = value
        End Set
    End Property

    Public Property OstatuTelefonoa As String
        Get
            Return _ostatuTelefonoa
        End Get
        Set(value As String)
            _ostatuTelefonoa = value
        End Set
    End Property

    Public Property Mota As String
        Get
            Return _mota
        End Get
        Set(value As String)
            _mota = value
        End Set
    End Property

    Public Property WebUrl As String
        Get
            Return _webUrl
        End Get
        Set(value As String)
            _webUrl = value
        End Set
    End Property

    Public Property AdiskidetsuUrl As String
        Get
            Return _adiskidetsuUrl
        End Get
        Set(value As String)
            _adiskidetsuUrl = value
        End Set
    End Property

    Public Property ZipUrl As String
        Get
            Return _zipUrl
        End Get
        Set(value As String)
            _zipUrl = value
        End Set
    End Property

    Public Property HerriKodea As String
        Get
            Return _herriKodea
        End Get
        Set(value As String)
            _herriKodea = value
        End Set
    End Property

    Public Property PertsonaTot As Integer
        Get
            Return _pertsonaTot
        End Get
        Set(value As Integer)
            _pertsonaTot = value
        End Set
    End Property

    Public Property PostaKodea As Integer
        Get
            Return _postaKodea
        End Get
        Set(value As Integer)
            _postaKodea = value
        End Set
    End Property

    Public Property Latitude As Double
        Get
            Return _latitude
        End Get
        Set(value As Double)
            _latitude = value
        End Set
    End Property

    Public Property Longitude As Double
        Get
            Return _longitude
        End Get
        Set(value As Double)
            _longitude = value
        End Set
    End Property

    ' toString
    Public Overrides Function ToString() As String
        Return MyBase.ToString()
    End Function

End Class
