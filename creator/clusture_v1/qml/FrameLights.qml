import QtQuick 2.15
//import Qt5Compat.GraphicalEffects


Item {
    objectName: "frameLights"
    property string fcolor: "#f01616"
    property string fcolor2: "#ffffff"
    property var curr_opacity: 100
    property var state: 0
    property bool up_to_down: true
    property bool en_flash1: false
    property bool en_flash2: false
    property bool midUp: false
    property var ctr: 0
    Timer {
        id:flasher_slow
        objectName: "FrameLights0"
           interval: 8500; running: false; repeat: true
           onTriggered:
           {
              if(en_flash1==true)
              {

                  mid_down_l_animate.duration=2500;
                  mid_down_r_animate.duration=2500;
                  left_down_animate.duration=2500;
                  left_right_up_animate.duration=2500;
                  left_right_down_animate.duration=2500;
                  left_up_animate.duration=2500;
                  right_down_animate.duration=2500;
                  right_up_animate.duration=2500;
                  right_left_down_animate.duration=2500;
                  right_left_up_animate.duration=2500;
                  mid_up_l_animate.duration=2500;
                  mid_up_r_animate.duration=2500;

                  mid_down_l_animate2.duration=2500;
                  mid_down_r_animate2.duration=2500;
                  left_down_animate2.duration=2500;
                  left_right_up_animate2.duration=2500;
                  left_right_down_animate2.duration=2500;
                  left_up_animate2.duration=2500;
                  right_down_animate2.duration=2500;
                  right_up_animate2.duration=2500;
                  right_left_down_animate2.duration=2500;
                  right_left_up_animate2.duration=2500;
                  mid_up_l_animate2.duration=2500;
                  mid_up_r_animate2.duration=2500;


                  mid_down_l_animate.start();
                  mid_down_r_animate.start();
                  left_down_animate.start();
                  left_right_up_animate.start();
                  left_right_down_animate.start();
                  left_up_animate.start();
                  right_down_animate.start();
                  right_up_animate.start();
                  right_left_down_animate.start();
                  right_left_up_animate.start();
                  mid_up_l_animate.start();
                  mid_up_r_animate.start();

              }


           }
    }
    Timer {
        id:flasher_fast
        objectName: "FrameLights1"
           interval: 1020; running: false; repeat: true
           onTriggered:
           {
              if(en_flash2==true)
              {

                  mid_down_l_animate.duration=500;
                  mid_down_r_animate.duration=500;
                  left_down_animate.duration=500;
                  left_right_up_animate.duration=500;
                  left_right_down_animate.duration=500;
                  left_up_animate.duration=500;
                  right_down_animate.duration=500;
                  right_up_animate.duration=500;
                  right_left_down_animate.duration=500;
                  right_left_up_animate.duration=500;
                  mid_up_l_animate.duration=500;
                  mid_up_r_animate.duration=500;

                  mid_down_l_animate2.duration=500;
                  mid_down_r_animate2.duration=500;
                  left_down_animate2.duration=500;
                  left_right_up_animate2.duration=500;
                  left_right_down_animate2.duration=500;
                  left_up_animate2.duration=500;
                  right_down_animate2.duration=500;
                  right_up_animate2.duration=500;
                  right_left_down_animate2.duration=500;
                  right_left_up_animate2.duration=500;
                  mid_up_l_animate2.duration=500;
                  mid_up_r_animate2.duration=500;


                  mid_down_l_animate.start();
                  mid_down_r_animate.start();
                  left_down_animate.start();
                  left_right_up_animate.start();
                  left_right_down_animate.start();
                  left_up_animate.start();
                  right_down_animate.start();
                  right_up_animate.start();
                  right_left_down_animate.start();
                  right_left_up_animate.start();
                  mid_up_l_animate.start();
                  mid_up_r_animate.start();

              }


           }
    }
    //main frame timer 1
    Timer {
        id:tmr2
        objectName: "FrameLights2"
           interval: 1; running: false; repeat: true
           onTriggered:
           {


//               //upper mid right
//               if(mid_up_r.width<261)
//               {
//                   let x=mid_up_r.width;x++;
//                   mid_up_r.width=x;

//               }
//               else
//               {
//                   //right_left_up
//                   if(right_left_up.height<170)
//                   {
//                       let x=right_left_up.height;x++;
//                       right_left_up.height=x;

//                   }
//                   else
//                   {
//                       //right_left_down
//                       if(right_left_down.height<23)
//                       {
//                           let x=right_left_down.height;x++;
//                           right_left_down.height=x;

//                       }

//                   }
//               }

//               //upper mid left
//               if(mid_up_l.width<252)
//               {
//                   let x=mid_up_l.width;x++;
//                   let y=mid_up_l.x;y--;
//                   mid_up_l.width=x;
//                   mid_up_l.x=y;

//               }
//               else
//               {
//                   //left_right_up
//                   if(left_right_up.height<153)
//                   {
//                       let x=left_right_up.height;x++;
//                       left_right_up.height=x;

//                   }
//                   else
//                   {
//                       //left_right_down
//                       if(left_right_down.height<135)
//                       {
//                           let x=left_right_down.height;x++;
//                           left_right_down.height=x;



//                       }

//                   }
//               }


           }
       }
   //main frame timer 2
    Timer {
        id:tmr1
           interval:1; running: false; repeat: true
           objectName: "FrameLights3"
           onTriggered:
           {



//               if(mid_down_l.width<164)
//               {
//                   let x=mid_down_l.width;x++;
//                   let y=mid_down_l.x;y--;
//                   mid_down_l.width=x;
//                   mid_down_l.x=y;
//                   mid_down_r.width=x+4;
//               }
//               else{

//                   //right speedometer frame
//                   if(right_down.width<341)
//                   {
//                       let x=right_down.width;x++;
//                       right_down.width=x;

//                   }
//                   else
//                   {
//                       if(right_up.width<260)
//                       {
//                           let x=right_up.width;x++;
//                          let y=right_up.x;y--;
//                           right_up.width=x;
//                           right_up.x=y;

//                       }
//                   }

//                   //left speedometer frame
//                   if(left_down.width<340)
//                   {
//                       let x=left_down.width;x++;
//                       let y=left_down.x;y--;
//                       left_down.width=x;
//                       left_down.x=y;

//                   }
//                   else
//                   {
//                       if(left_up.width<244)
//                       {
//                           let x=left_up.width;x++;
//                           left_up.width=x;

//                       }
//                       else
//                       {
//                  //         en_flash1=true

//                       }
//                   }
//               }


           }
       }
    //for the mid down
    Timer {
        id:tmr3
        objectName: "FrameLights4"
           interval:70; running: false; repeat: true
           onTriggered:
           {
             switch(state)
             {
             case 0:
                 mid_down1.color=fcolor
                 mid_down2.color=fcolor
                 mid_down3.color=fcolor
                 state++
                 break;
              case 1:
                  mid_down1.color="#000000"
                  mid_down4.color=fcolor
                  state++
                  break;
              case 2:
                  mid_down2.color="#000000"
                  mid_down5.color=fcolor
                  state++
                  break;
              case 3:
                  mid_down3.color="#000000"
                  mid_down6.color=fcolor
                  state++
                  break;
              case 4:
                  mid_down4.color="#000000"
                  mid_down7.color=fcolor
                  state++
                  break;
              case 5:
                  mid_down5.color="#000000"
                  mid_down8.color=fcolor
                  state++
                  break;
              case 6:
                  mid_down6.color="#000000"
                  state++
                  break;
              case 7:
                  mid_down7.color="#000000"
                  state++
                  break;
              case 8:
                  mid_down8.color="#000000"
                  midUp=true
                  break;

             }
           }

    }
    //for the mid up
    Timer {
        id:tmr4
           interval:8; running: false; repeat: true
           objectName: "FrameLights5"
           onTriggered:
           {
             if(midUp==true)
             {
                 if(mid_up1_ll.width<146)
                 {
                     let x=mid_up1_ll.width;x++;
                     let y=mid_up1_ll.x;y--;
                     mid_up1_ll.width=x;
                     mid_up1_ll.x=y

                 }
                 if(mid_up1_r.width<131)
                 {
                     let x=mid_up1_r.width;x++;
                     mid_up1_r.width=x;
                     mid_up1_r2.width=x;
                     mid_up1_r3.width=x;


                 }
                 else
                 {
                     mid_up1_ll.color=fcolor2
                     mid_up1_r.color=fcolor2
                     mid_up1_r2.color=fcolor2
                     mid_up1_r3.color=fcolor2

                     mid_up1_ll.width=0
                     mid_up1_ll.x=349+146
                     mid_up1_r.width=0
                     mid_up1_r2.width=0
                     mid_up1_r3.width=0
//                    flare1_animate2.start()


                     if(ctr>0)
                     {

                         tmr4.stop()
                     }
                     else
                     {
                          F1Animation.startFlare1Animation()
                          fcolor="#14e1d5"
                         //here i can set color in custom
                     }

                     ctr++;
                  //   midUp=false
                 }
             }
           }
    }




    Rectangle {
        id: mid_up1_ll
        x: 349+146
        y: 115
        width: 0
        height: 42
        color: fcolor
    }

    Rectangle {
        id: mid_up1_r
        x: 526
        y: 140
        width: 0
        height: 14
        color: fcolor
        rotation: 7.92
    }

    Rectangle {
        id: mid_up1_r2
        x: 532
        y: 128
        width: 0
        height: 14
        color: fcolor
        rotation: 7.92
    }

    Rectangle {
        id: mid_up1_r3
        x: 537
        y: 120
        width: 0
        height: 14
        color: fcolor
        rotation: 7.92
    }



    /*******************************************************/
    Rectangle {
        id: mid_down1
        x: 341
        y: 296
        width: 330
        height: 12
        color: "#000000"
    }

    Rectangle {
        id: mid_down2
        x: 365
        y: 287
        width: 287
        height: 9
        color: "#000000"
    }

    Rectangle {
        id: mid_down3
        x: 372
        y: 254
        width: 274
        height: 33
        color: "#000000"
    }

    Rectangle {
        id: mid_down4
        x: 391
        y: 242
        width: 231
        height: 12
        color: "#000000"
    }

    Rectangle {
        id: mid_down5
        x: 397
        y: 229
        width: 231
        height: 14
        color: "#000000"
    }

    Rectangle {
        id: mid_down6
        x: 397
        y: 217
        width: 231
        height: 14
        color: "#000000"
    }

    Rectangle {
        id: mid_down7
        x: 397
        y: 204
        width: 231
        height: 14
        color: "#000000"
    }

    Rectangle {
        id: mid_down8
        x: 397
        y: 187
        width: 231
        height: 18
        color: "#000000"


//        ColorAnimation on color{
//            id:mid_down8_animator1

//            from: "#000000"
//            to: "#f70009"
//            duration: 100
//        }
    }
/*******************************************************/
    Rectangle {
        id: left_right_down
        objectName: "lrd"
        x: 350
        y: 155
        width: 25
       // height: 132
        height: 0
        color: fcolor
        rotation: 0

        PropertyAnimation on opacity {
            id:left_right_down_animate
            duration: 0
            from: 1
            to: 0
            onFinished: left_right_down_animate2.start()
        }
        PropertyAnimation on opacity {
            id:left_right_down_animate2
            duration: 0
            from: 0
            to: 1
        }

    }

    Rectangle {
        id: left_right_up
        objectName: "lru"
        x: 273
        y: 88
        width: 77
        //height: 153
        height: 0
        color: fcolor
        rotation: 0


        PropertyAnimation on opacity {
            id:left_right_up_animate
            duration: 0
            from: 1
            to: 0
            onFinished: left_right_up_animate2.start()
        }
        PropertyAnimation on opacity {
            id:left_right_up_animate2
            duration: 0
            from: 0
            to: 1
        }

    }

    Rectangle {
        id: right_left_up
        objectName: "rlu"
        x: 650
        y: 101
        width: 82
       // height: 170
        height: 0
        color: fcolor
        rotation: 25.094

        PropertyAnimation on opacity {
            id:right_left_up_animate
            duration: 0
            from: 1
            to: 0
            onFinished: right_left_up_animate2.start()
        }
        PropertyAnimation on opacity {
            id:right_left_up_animate2
            duration: 0
            from: 0
            to: 1
        }
    }
    Rectangle {
        id: right_left_down
        objectName: "rld"
        x: 639
        y: 262
        width: 24
       // height: 36
        height: 0
        color: fcolor
        rotation: 27.371
        PropertyAnimation on opacity {
            id:right_left_down_animate
            duration: 0
            from: 1
            to: 0
            onFinished: right_left_down_animate2.start()
        }
        PropertyAnimation on opacity {
            id:right_left_down_animate2
            duration: 0
            from: 0
            to: 1
        }
    }

    Rectangle {
        id: mid_down_l
        objectName: "mdl"
        x: 341+165
        y: 306
        rotation: 360
        width: 0
        height: 21
        color: fcolor
        PropertyAnimation on opacity {
            id:mid_down_l_animate
            duration: 0
            from: 1
            to: 0
            onFinished: mid_down_l_animate2.start()
        }
        PropertyAnimation on opacity {
            id:mid_down_l_animate2
            duration: 0
            from: 0
            to: 1
        }

    }



    Rectangle {
        id: mid_down_r
        objectName: "mdr"
        x: 506
        y: 306
        width: 0
        height: 21
        color: fcolor
        PropertyAnimation on opacity {
            id:mid_down_r_animate
            duration: 0
            from: 1
            to: 0
            onFinished: mid_down_r_animate2.start()
        }
        PropertyAnimation on opacity {
            id:mid_down_r_animate2
            duration: 0
            from: 0
            to: 1
        }
    }

    Rectangle {
        id: left_down
        objectName: "ld"
        x: 1+341
        y: 234
        width: 0
        height: 188

        color: fcolor
        PropertyAnimation on opacity {
            id:left_down_animate
            duration: 0
            from: 1
            to: 0
            onFinished: left_down_animate2.start()
        }
        PropertyAnimation on opacity {
            id:left_down_animate2
            duration: 0
            from: 0
            to: 1
        }
    }

    Rectangle {
        id: left_up
        objectName: "lu"
        x: 0
        y: 58
        width: 0
        height: 177
        color: fcolor
        rotation: -179.723

        PropertyAnimation on opacity {
            id:left_up_animate
            duration: 0
            from: 1
            to: 0
            onFinished: left_up_animate2.start()
        }
        PropertyAnimation on opacity {
            id:left_up_animate2
            duration: 0
            from: 0
            to: 1
        }
    }

    Rectangle {
        id: mid_up_l
        objectName: "mul"
        x: 246+250
        y: 68
        width: 0
        height: 21
        color: fcolor
        PropertyAnimation on opacity {
            id:mid_up_l_animate
            duration: 0
            from: 1
            to: 0
            onFinished: mid_up_l_animate2.start()
        }
        PropertyAnimation on opacity {
            id:mid_up_l_animate2
            duration: 0
            from: 0
            to: 1
        }
    }

    Rectangle {
        id: mid_up_r
        objectName: "mur"
        x: 496
        y: 65
       // width: 261
        width: 0
        height: 21
        color: fcolor
        PropertyAnimation on opacity {
            id:mid_up_r_animate
            duration: 0
            from: 1
            to: 0
            onFinished: mid_up_r_animate2.start()
        }
        PropertyAnimation on opacity {
            id:mid_up_r_animate2
            duration: 0
            from: 0
            to: 1
        }
    }



    Rectangle {
        id: right_down
        objectName: "rd"
        x: 674
        y: 230
        //width: 341
        width: 0
        height: 177
        color: fcolor
        PropertyAnimation on opacity {
            id:right_down_animate
            duration: 0
            from: 1
            to: 0
            onFinished: right_down_animate2.start()
        }
        PropertyAnimation on opacity {
            id:right_down_animate2
            duration: 0
            from: 0
            to: 1
        }
    }
    Rectangle {
        id: right_up
        objectName: "ru"
        x: 755+260
        y: 38
      //  width: 260
        width: 0
        height: 188
        color: fcolor
        PropertyAnimation on opacity {
            id:right_up_animate
            duration: 0
            from: 1
            to: 0
            onFinished: right_up_animate2.start()
        }
        PropertyAnimation on opacity {
            id:right_up_animate2
            duration: 0
            from: 0
            to: 1
        }
        rotation: -178.185
    }

    Rectangle {
        id: hide1
        x: 368
        y: 281
        width: 7
        height: 9
        color: "#000000"
        rotation: 0
    }

    Rectangle {
        id: hide2
        x: 637
        y: 271
        width: 7
        height: 9
        color: "#000000"
        rotation: 25.884
    }


}
