# Fancy-Automotive-Instrumental-Clusture

this project aims to design basic automotive instrumental clusture with some fancy animation

also in this project we introduce some baisic features that makes your project fancy and easy to use

like controlling kmh speedometer and rpm speedometer using c++ also you can use these c++ cod in

the qml thanks to the integration of qml integration with c++ provided by qt ,for more details visit https://doc.qt.io/qt-5/qtqml-cppintegration-topic.html

baisicly this cluster is reverse engineered and inispired by this project review introduced in the following link : https://www.youtube.com/watch?v=U-tNUyxL0r4&list=PLGTczECne-Uiv0o_QzESWRH_srKfA_Cxw&index=46&ab_channel=ContinentalAutomotiveGlobal

thats it lets get started



last update :4-3-2023 




## Table of Contents
1. [ OverView And Outlook ](#overview)
2. [ Getting Started ](#two)
3. [ Qt Configuration  ](#three) 
4. [ project structure ](#four) 
4. [  How to use Graphic services  ](#five) 
	1. [ Initializing the splash animations  ](#six)  
	2. [ Controlling KMH speedometer ](#seven)
	3. [ Controlling RPM speedometer ](#eight)  
	4. [ Cotrolling Frame Lights ](#nine)  
	5. [ Controlling the Menu ](#ten)  
	6. [ Controlling The Uis ](#eleven)  
	7. [ Controlling Music Player ](#twelve)  
	8. [ Controlling Caller Uis ](#therteen) 
	9. [ Controlling The Weather ui ](#fourteen)  	
4. [ References ](#fifteen)





<a name="overview"></a>
## OverView and OutLook :

the project initaly open in this screen 
![1](https://user-images.githubusercontent.com/77461625/222870015-f67c0d8d-de25-4ebb-b04c-79c70cea46cc.png)


you can switch between uis using this menu 
![2](https://user-images.githubusercontent.com/77461625/222870031-8dd7b867-cfaa-47f4-9a9d-ff762df65a2f.png)


onerview on the Music player Ui 
![3](https://user-images.githubusercontent.com/77461625/222870035-5666ff27-e926-44ca-b19b-7feb3f5bdd68.png)


overview on caller ui
![5](https://user-images.githubusercontent.com/77461625/222870042-8d1b3b58-b2f6-4718-a917-906f08da93fd.png)


the whole system animation 


https://user-images.githubusercontent.com/77461625/222870260-510d9739-6043-4807-80d0-f488410776b5.mp4


https://user-images.githubusercontent.com/77461625/222870280-96b6f913-a7db-449b-8ff7-9a54b7308e6f.mp4



https://user-images.githubusercontent.com/77461625/222870295-2ee0f002-f0d3-48a4-9307-18138407cb3d.mp4



https://user-images.githubusercontent.com/77461625/222870300-0e1edb4d-a2a5-4ca8-9d85-157950cefbdc.mp4

the overall is here https://youtu.be/UKjrYiGlApY



<a name="two"></a>
## Getting Started 

first of all you can run this project on any target device and any opereating system because
qt framework is cross platform ,we used in this project the qt 5.15.5 version because it is stable and LTS (long term support) and also has some features currently not available in version 6 like the qml Map item ,
initialy the project has control buttons to simulate our system

you can download and install qt from their website : https://www.qt.io/download
or you can cross compile the qt framework for any embedded linux device by following the steps 
in the following video : https://www.youtube.com/watch?v=1M4qFrfuh5s&ab_channel=remnumremnum
or you can use yocto project you are free to use any method .

<a name="three"></a>
## on configuring qt :

 make sure you have installed qtmultimedia , qtlocation libraries 
  





<a name="four"></a>
## project structure :
 
 the project follow this structure illustrated in the image  below:
 
 //img
 
 qml layer                 : this layer is responsible for displaying all gui components 
 
 graphics services layer   : responsible for controlling the gui elements and animation 



<a name="five"></a>
##  How to use Graphic services :

graphic services contain two classes 

1- Splash animator : this class responsible for some animations that occure in the splash

2- System Graphics : this is the most important class to control the whole gui 




<a name="six"></a>
### Initializing the splash animations 

the splash animation is initialized by these lines of code on the main.cpp file and these are already added

```c
   SplashAnimator * MyAnimator=new SplashAnimator(obj);
   SystemGraphics * myGraphics=new SystemGraphics(obj);
   QQmlApplicationEngine *eng=&engine;
   eng->rootContext()->setContextProperty("F1Animation",MyAnimator);
   eng->rootContext()->setContextProperty("GraphicsController",myGraphics);
```

you can also stop the animation using this slot function

```c
   MyAnimator->stopEngine();
```
you can use the previous function either in cpp or qml because it is a public slot





<a name="seven"></a>
### Controlling KMH speedometer :

using this public slot like this 

```c
   myGraphics->setKmhValue(200); // kmh will go to 200 km/h 
```




<a name="eight"></a>
### Controlling RPM speedometer :

using this public slot like this 

```c
    myGraphics->setRpmValue(5); // kmh will go to 5 rpm *10000 
```




<a name="nine"></a>
### Cotrolling Frame Lights :

we can select the frame color and the flashing mode

selecting color like this :

```c
    myGraphics->setLightColor("#ff0000"); 
```

for selecting the flash mode we have this enum to select one of its values

```c
    typedef enum
    {

        NoFlashing=0,
        SlowFading=1,
        FastAlert=2
    }Flashing_t;
```
at the end use it like this

```c 
   SystemGraphics::Flashing_t flash = SystemGraphics::NoFlashing;
   myGraphics->setFrameFlashSpeed(flash); // no flashing 
```





<a name="ten"></a>
### Controlling the Menu :

the menu is a simple path view that enable us to switch between 4 ui throught 
stack view 

to open the Menu

```c 
    myGraphics->openMenu();            // will open the menu
```

to move up or down 

```c 
    myGraphics->menuMoovUp();        // will move the menu up 
    myGraphics->menuMoovDown();      //will move the menu down
```

to select the current item 

```c 
    myGraphics->menuSelectCurrItem();  // will selevt the current item
```



<a name="eleven"></a>
### Controlling The Uis :

we have this enum to select one ui between all the values inside  
```c 
       typedef enum
    {
        MusicPlayer=2,
        GpsMaps=1,
        WeatherForecast=0,
        EngineStatus=3,
        CallAnswering=4
    }uis_t;
```

to open any of these uis use this 

```c 
   SystemGraphics::uis_t myui = SystemGraphics::MusicPlayer;
   myGraphics->openUI(myui);  
```

and close it like this 

```c 
  myGraphics->closeUis();
```



<a name="twelve"></a>
### Controlling Music Player :

we can change the workspace of the music like this 

```c 
     myGraphics->setMusicPath("C:/Users/Nader/Desktop/music");
```

to be honest this is not the good practice because we give absolute path but you can use an relative path as agood practice



<a name="therteen"></a>
### Controlling Caller Uis :

we can select the caller image and name on every call like this 

```c 
     myGraphics->setCaller("qrc:/images/calls.png","Nader");
```



<a name="fourteen"></a>
### Controlling The Weather ui :

here you can use one of the following functions 

```c 
      void setWeather(weather_t wthr);   
```

or 

```c 
     void setWeather(int weather,QString w_Img,QString w_country,QString w_city,QString w_info,float w_rainPercent); 
```

but the first function uses this structure to set your configurations

```c 
    typedef struct
    {
        int weather;
        float rainPercent;
        QString img,Country,City,info;
		
    }weather_t;
```




### Note 

the date and time is automaticely controlled by the system clock

that is all the technical stuff 

Thank you gor your time 



<a name="fifteen"></a>
## Resources :

https://doc.qt.io/qt-6/qml-qtquick-pathview.html

https://doc.qt.io/qt-6/qml-qtquick-controls2-stackview.html

https://doc.qt.io/qt-6/qtimer.html

https://doc.qt.io/qt-5/qml-qtlocation-map.html

https://wiki.openstreetmap.org/wiki/API_v0.6

https://rapidapi.com/blog/directory/openstreetmap

https://www.mapbox.com/

https://www.youtube.com/watch?v=U-tNUyxL0r4&ab_channel=ContinentalAutomotiveGlobal

https://www.youtube.com/watch?v=1M4qFrfuh5s&t=1s&ab_channel=remnumremnum

https://www.youtube.com/watch?v=DQi3ojkGi3g&t=15s&ab_channel=QtGroup

https://www.youtube.com/watch?v=VAhLnJc5iEY&list=PLGTczECne-Uiv0o_QzESWRH_srKfA_Cxw&index=33&t=489s&ab_channel=QtGroup

https://www.youtube.com/watch?v=2u5wnrx6J-E&list=PLGTczECne-Uiv0o_QzESWRH_srKfA_Cxw&index=39&ab_channel=QtGroup

https://www.youtube.com/watch?v=0hAt23osdpU&list=PLGTczECne-Uiv0o_QzESWRH_srKfA_Cxw&index=40&ab_channel=QtGroup

https://www.youtube.com/watch?v=Tq-E6lqO6tM&list=PLGTczECne-Uiv0o_QzESWRH_srKfA_Cxw&index=22&t=927s&ab_channel=MontyTheSoftwareEngineer




## Achievements

1- animation of rpm and kmh needle when mooving

2- animation on start on middle and on the clusture frame

3- control the clusture frame flashing mode (no flashing-slow flash-fast flash)

4- control the clusture frame clolor 

5- control the rpm and kmh indicator 

6- Path view act as Navigator to switch between the stackview uis

7- fancy music player that can change path and play/stop music

8- added  whether displayer   

9- music progress bar

10- gps indicator map sponsered by OSM (open street maps) 

11- call answering ui to answer incomming calls



## Future Working 

2- control fuel and battery indicators

5- find out why mapbox plugin didnt work ??

6- combie all qml files in one directory








