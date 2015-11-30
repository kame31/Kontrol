Kontrol for HomeKit + OSC
=========

Add-ons and examples for connecting to HomeKit via OSC.  
--------------

<br/>

Theaters, artists, musicians, education - from professionals to amateurs. Kontrol enables an easy and accessible way to create interactive lightning experiences. 

<br/>

![](http://www.kontrol-app.com/github/hk.jpg)

<br/>

Hookup apps like **VDMX, QLab, Max MSP, Super Collider, Ableton Live** etc. to **Kontrol for HomeKit**.
 
Control light installations easily in realtime via **Processing, openFrameworks, VVVV, Puredata, Arduino, Raspberry pi etc.** without having to take care of all the technics behind. 

<br/>

Take **full control** of **any HomeKit compatible lights** within minutes. 

<br/>

![](http://www.kontrol-app.com/github/app-icon.jpg)

[www.kontrol-app.com](http://www.kontrol-app.com)<br/>

<br/>

---

How to send a command?
--------------
<br/>
All lights:
<br/>

	/lights/power 						(0/1 int)
	/lights/brightness 					(0-1 float)
	/lights/hue 						(0-1 float)
	/lights/saturation 					(0-1 float)
			
Single light:

	/lights/LIGHT_NAME/power 			(0/1 int)
	/lights/LIGHT_NAME/brightness 		(0-1 float)
	/lights/LIGHT_NAME/hue 				(0-1 float)
	/lights/LIGHT_NAME/saturation 		(0-1 float)
	
Outlets:

	/outlets/OUTLET_NAME/power 			(0/1 int)
	
Scenes:

	/scenes 							(SCENE_NAME String)


<br/>

---

Setup
--------------
<br/>
###1. Download the iOS app
In order to control HomeKit devices via OSC you'll need the official Kontrol for HomeKit app, found in the AppStore:

[https://itunes.apple.com/us/app/kontrol-for-homekit](https://itunes.apple.com/us/app/kontrol-for-homekit/id1051587228?ls=1&mt=8)<br/>

>Please note: OSC support requires the 1.0.2 version currently only available for beta testers.<br/>
Join the beta group on our website: [www.kontrol-app.com](http://www.kontrol-app.com)


###2. Get the IP

Launch the iOS settings.app and navigate to Kontrol.
Activate the OSC server and launch Kontrol. Once the server is running you will see the IP of your iOS device in the settings.
<br/>
![](http://www.kontrol-app.com/github/osc-settings.jpg)

###3. Launch the app

Since HomeKit doesn't work in the background and is only available on iOS + watchOS Kontrol for HomeKit has to be running in the foreground while you use it.

<br/>



Examples
--------------
<br/>

Download the **Processing examples** to see how you can quickly program your **HomeKit lights**.
<br/>
<br/>
Setup:

	KONTROL_APP = new Kontrol();
	KONTROL_APP.setup("192.168.0.5", 9999);
	  
	  
<br/>
Draw:

	// SINUS WAVE 0-1

	float hue = (sin((float(frameCount)*.001))+1)/2;
	  
	// WITH 60 FPS DON'T SEND TOO MANY COMMANDS:
	
	if (frameCount % 15 == 1) {
		KONTROL_APP.send("/lights/hue", hue);
    }
	  
	  
<br/>
	  
	  
	  
	  
	  
	  
	  
	  