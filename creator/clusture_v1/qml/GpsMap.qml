import QtQuick 2.15
import QtLocation 5.15
import QtPositioning 5.15


Rectangle{
  //  anchors.fill: parent
    color: "blue"
    Text {
        id: nameanch
        anchors.centerIn: parent
        text: qsTr("GPS Maps")
    }

    Plugin {
           id: mapPlugin
           name: "osm" // "mapboxgl"//, "esri", ...
           // specify plugin parameters if necessary
           PluginParameter {
               name: "osm.mapping.providersrepository.disabled"
               value: "http://a.tile.openstreetmap.fr/hot/"
           }
           PluginParameter {
               name: "osm.mapping.highdpi_tiles"
               value: !!1
           }
       }
//    Plugin {
//           id: mapPlugin
//           name: "mapbox" // "mapboxgl"//, "esri", ...
//           // specify plugin parameters if necessary
//           PluginParameter {
//               name: "mapbox.access_token"
//               value: "pk.eyJ1IjoibmFkZXI2MzgiLCJhIjoiY2xlb2VzaGozMDFtaTN0bzU0OTNseno4NyJ9.nbXYJZUuAqR5Df9xnZbY4g"
//           }
//           PluginParameter {
//               name: "style"
//               value: "mapbox://styles/mapbox/streets-v12"
//           }
//           PluginParameter {
//               name: "center"
//               value: "[-74.5 , 40]"
//           }
//           PluginParameter {
//               name: "container"
//               value: "map"
//           }
//           PluginParameter {
//               name: "zoom"
//               value: "14"
//           }
//       }


       Map {
           anchors.fill: parent
           plugin:    mapPlugin
           center: QtPositioning.coordinate(30.044420, 31.235712) // Oslo
           zoomLevel: 14
           activeMapType: supportedMapTypes[3]
//           //activeMapType:map_type
//           MapPolyline{
//               id:poly
//               line.width: 6
//               line.color: "deepskyblue"
////               path: [{ latitude:30.044, longitude: 31.235 },
////               { latitude: 32, longitude: 31.235},
//////               { latitude: -28, longitude: 153.5 },
//////               { latitude: -29, longitude: 153.5 }
////               ]
 //          }
        }

}




//    Plugin {
//                   id: mapPlugin
//                    //  name: "mapboxgl"
//          //            PluginParameter
//          //            {
//          //                name: "mapbox.access_token";
//          //                value: "pk.eyJ1IjoibmFkZXI2MzgiLCJhIjoiY2xlb2VzaGozMDFtaTN0bzU0OTNseno4NyJ9.nbXYJZUuAqR5Df9xnZbY4g"
//          //            }

//          //            PluginParameter
//          //            {
//          //                name: "mapboxgl.mapping.items.insert_before"
//          //                value: "road-label-small"
//          //            }
//          //            PluginParameter
//          //            {
//          //                name: "mapboxgl.mapping.use_fbo"
//          //                value: false
//          //            }
//          //            PluginParameter
//          //            {
//          //                name: "mapboxgl.mapping.additional_style_urls"
//          //                value: "mapbox://styles/nader638/cleokwiij00de01ntj2o09688"
//          //            }
//                      name: "mapboxgl"
//                                 PluginParameter {
//                                     name: "mapboxgl.access_token"
//                                     value: "pk.eyJ1IjoibWlsYWRsb3ZlYm90aCIsImEiOiJjanZiaHlrZXEwczF5NDRxZnp0cnFseG9jIn0.CZjNPyoSnkUG4NaEzvb36A"
//                                 }
//                                 PluginParameter{
//                                     name: "mapboxgl.mapping.additional_style_urls"
//                                     value: "https://api.mapbox.com/styles/v1/nader638/cleohjxli008w01o9l5pr1ql1/wmts?access_token=pk.eyJ1IjoibmFkZXI2MzgiLCJhIjoiY2xlb2VzaGozMDFtaTN0bzU0OTNseno4NyJ9.nbXYJZUuAqR5Df9xnZbY4g"
//                                 }
//                                 PluginParameter {
//                                     name: "mapboxgl.mapping.use_fbo"
//                                     value: true
//                                 }

//                                 PluginParameter {
//                                     name: "mapboxgl.mapping.items.insert_before"
//                                     value: "aerialway"
//                                 }
//                  }

