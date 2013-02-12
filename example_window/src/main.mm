#include "ofMain.h"
#include "testApp.h"

#include "ofxCocoa.h"
#include <Cocoa/Cocoa.h>



//========================================================================
int main()
{
	
	
	MSA::ofxCocoa::InitSettings			initSettings;
	
	initSettings.isOpaque				= true;
	initSettings.windowLevel			= NSMainMenuWindowLevel + 1;
	initSettings.hasWindowShadow		= false;
	initSettings.numFSAASamples			= true;
	initSettings.initRect.size.width	= 100;
	initSettings.initRect.size.height	= 100;
	initSettings.windowMode				= OF_WINDOW;
	
	// to go fullscreen across all windows:
	//initSettings.windowStyle			= NSBorderlessWindowMask;
	//initSettings.initRect				= MSA::ofxCocoa::rectForMainScreen();
	initSettings.initRect				= MSA::ofxCocoa::rectForAllScreens();
	
	MSA::ofxCocoa::setSyncToDisplayLink(true);
	MSA::ofxCocoa::AppWindow		cocoaWindow(initSettings);
	
	ofSetupOpenGL(&cocoaWindow, 0, 0, OF_WINDOW);
	
    // this kicks off the running of my app
    // can be OF_WINDOW or OF_FULLSCREEN
    // pass in width and height too:	
	ofRunApp( new testApp() );
	
}
