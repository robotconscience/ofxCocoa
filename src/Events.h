/*
 *  Events.h
 *  ofxCocoa
 *
 *  Created by Brett Renfer on 7/31/11.
 *  Copyright 2011 Robotconscience. All rights reserved.
 *
 */
#pragma once

#include "ofMain.h"

namespace MSA {
	namespace ofxCocoa {

    class Events {
    public:
        ofEvent<ofMouseEventArgs> 	mouseMovedOutsideEvent;
        ofEvent<ofMouseEventArgs> 	mousePressedOutsideEvent;
        ofEvent<ofMouseEventArgs> 	mouseDraggedOutsideEvent;
        ofEvent<ofMouseEventArgs> 	mouseReleasedOutsideEvent;
    };

    void notifyMouseMovedOutside( int x, int y );
    void notifyMousePressedOutside( int x, int y, int button );
    void notifyMouseDraggedOutside( int x, int y, int button );
    void notifyMouseReleasedOutside( int x, int y, int button );
    };
};

extern MSA::ofxCocoa::Events cocoaEvents;

template<class ListenerClass>
void ofRegisterMouseOutside(ListenerClass * listener){
	ofAddListener(cocoaEvents.mouseDraggedOutsideEvent,listener,&ListenerClass::mouseDraggedOutside);
	ofAddListener(cocoaEvents.mouseMovedOutsideEvent,listener,&ListenerClass::mouseMovedOutside);
	ofAddListener(cocoaEvents.mousePressedOutsideEvent,listener,&ListenerClass::mousePressedOutside);
	ofAddListener(cocoaEvents.mouseReleasedOutsideEvent,listener,&ListenerClass::mouseReleasedOutside);
}

template<class ListenerClass>
void ofUnregisterMouseOutside(ListenerClass * listener){
	ofRemoveListener(cocoaEvents.mouseDraggedOutsideEvent,listener,&ListenerClass::mouseDraggedOutside);
	ofRemoveListener(cocoaEvents.mouseMovedOutsideEvent,listener,&ListenerClass::mouseMovedOutside);
	ofRemoveListener(cocoaEvents.mousePressedOutsideEvent,listener,&ListenerClass::mousePressedOutside);
	ofRemoveListener(cocoaEvents.mouseReleasedOutsideEvent,listener,&ListenerClass::mouseReleasedOutside);
}