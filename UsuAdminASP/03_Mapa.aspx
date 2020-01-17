<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="03_Mapa.aspx.vb" Inherits="UsuAdminASP.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style type="text/css">
        #ostatuenDetaileak {
            height: 51px;
            width: 651px;
        }
            .auto-style1 {
                width: 71%;
                height: 629px;
                margin-left: 200px;
            }
    </style>
</head>
<body style ="background-image:url(Argazkiak/mapaLurra.jpg); background-repeat: no-repeat; background-attachment: fixed; background-position: center; background-size: cover;">
    <form id="form1" runat="server">
        <div>
   
<meta name="viewport" content="initial-scale=1.0, width=device-width" />

 <link rel="stylesheet" type="text/css" href="https://js.api.here.com/v3/3.0/mapsjs-ui.css?dp-version=1542186754" />
<script type="text/javascript" src="https://js.api.here.com/v3/3.0/mapsjs-core.js"></script>
<script type="text/javascript" src="https://js.api.here.com/v3/3.0/mapsjs-service.js"></script>
<script type="text/javascript" src="https://js.api.here.com/v3/3.0/mapsjs-ui.js"></script>
<script type="text/javascript" src="https://js.api.here.com/v3/3.0/mapsjs-mapevents.js"></script>
            <br />
            <asp:ImageButton ID="imgBtnAtzera" runat="server" Height="33px" ImageUrl="~/Argazkiak/atzera.png" Width="49px" />
        <br />
        <br />

            </div>

        <div id="datuak_erakutsi" style="width: 44%; height: 451px; display:none ">
              
            <asp:GridView ID="GridView1" runat="server" >
            </asp:GridView>

        </div>

    <div id="map" style="text-align: center;" class="auto-style1" />
        <script  type="text/javascript" charset="UTF-8" >

            /**
             * Creates a new marker and adds it to a group
             * @param {H.map.Group} group       The group holding the new marker
             * @param {H.geo.Point} coordinate  The location of the marker
             * @param {String} html             Data associated with the marker
             */
            function addMarkerToGroup(group, coordinate, html) {
               var marker = new H.map.Marker(coordinate);
                // add custom data to the marker
                marker.setData(html);             
                group.addObject(marker);
            }

            /**
             * Add two markers showing the position of Liverpool and Manchester City football clubs.
             * Clicking on a marker opens an infobubble which holds HTML content related to the marker.
             * @param  {H.Map} map      A HERE Map instance within the application
             */
            function addInfoBubble(map) {
                var group = new H.map.Group();
                map.addObject(group);

                // add 'tap' event listener, that opens info bubble, to the group
                group.addEventListener('tap', function (evt) {
                    // event target is the marker itself, group is a parent event target
                    // for all objects that it contains
                    var bubble = new H.ui.InfoBubble(evt.target.getPosition(), {
                        // read custom data
                        content: evt.target.getData()
                    });
        
                    // show info bubble
                    ui.addBubble(bubble);
                }, false);
             
                //Datu guztien atal ezberdinak igaro eta bakoitza aldagarri batean gorde
                for (i = 1; i <= document.getElementById('GridView1').rows.length; i++) {
                    var nombre = (document.getElementById('GridView1').rows[i].cells[0].innerHTML);
                    var latitudea = parseFloat(document.getElementById('GridView1').rows[i].cells[1].innerHTML);
                    var longitudea = parseFloat(document.getElementById('GridView1').rows[i].cells[2].innerHTML);
                    var Lurralde_izena = (document.getElementById('GridView1').rows[i].cells[3].innerHTML);
                    var mota = (document.getElementById('GridView1').rows[i].cells[4].innerHTML);
                    var web = (document.getElementById('GridView1').rows[i].cells[5].innerHTML);
                    //markatzaile bat sortu i posizioko puntuan, i puntuko aldagarri ezberdinekin
                    addMarkerToGroup(group, { lat: latitudea, lng: longitudea }, '<div><a style="color:#FFFFFF;" target="_blank" href=' + web + '>Izena: ' + nombre + '</a><br><br> Mota: ' + mota + '</div>');
                }
            }
 
            /**
             * Boilerplate map initialization code starts below:
             */

            // initialize communication with the platform
            var platform = new H.service.Platform({
                app_id: 'devportal-demo-20180625',
                app_code: '9v2BkviRwi9Ot26kp2IysQ',
                useHTTPS: true
            });
            var pixelRatio = window.devicePixelRatio || 1;
            var defaultLayers = platform.createDefaultLayers({
                tileSize: pixelRatio === 1 ? 256 : 512,
                ppi: pixelRatio === 1 ? undefined : 320
            });

            // initialize a map - this map is centered over Europe
            var map = new H.Map(document.getElementById('map'),
              defaultLayers.normal.map, {
                  center: { lat: 42.9562, lng: -2.1419 },
                  zoom: 9,
                  pixelRatio: pixelRatio
              });

            // MapEvents enables the event system
            // Behavior implements default interactions for pan/zoom (also on mobile touch environments)
            var behavior = new H.mapevents.Behavior(new H.mapevents.MapEvents(map));

            // create default UI with layers provided by the platform
            var ui = H.ui.UI.createDefault(map, defaultLayers);

            // Now use the map as required...
            addInfoBubble(map);
   
     </script> 
        
    </form>
      
    </body>

</html>
