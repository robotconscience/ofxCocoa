/*
 *  ofxCocoaWindowEvents.cpp
 *  MouseTracker
 *
 *  Created by Brett Renfer on 8/1/11.
 *  Copyright 2011 Robotconscience. All rights reserved.
 *
 */

#include "Events.h"


MSA::ofxCocoa::Events cocoaEvents;

namespace MSA {
	namespace ofxCocoa {
               
        void notifyMouseMovedOutside( int x, int y ){
            static ofMouseEventArgs	mouseEventArgs;
            mouseEventArgs.x = x;
            mouseEventArgs.y = y;
            
            ofNotifyEvent(cocoaEvents.mouseMovedOutsideEvent, mouseEventArgs); 
        }

        void notifyMousePressedOutside( int x, int y, int button ){
            static ofMouseEventArgs	mouseEventArgs;
            mouseEventArgs.x = x;
            mouseEventArgs.y = y;
            mouseEventArgs.button = button;
            
            ofNotifyEvent(cocoaEvents.mousePressedOutsideEvent, mouseEventArgs); 
        }

        void notifyMouseDraggedOutside( int x, int y, int button ){
            static ofMouseEventArgs	mouseEventArgs;
            mouseEventArgs.x = x;
            mouseEventArgs.y = y;
            mouseEventArgs.button = button;
            
            ofNotifyEvent(cocoaEvents.mouseDraggedOutsideEvent, mouseEventArgs); 
        }

        void notifyMouseReleasedOutside( int x, int y, int button ){
            static ofMouseEventArgs	mouseEventArgs;
            mouseEventArgs.x = x;
            mouseEventArgs.y = y;
            mouseEventArgs.button = button;
            
            ofNotifyEvent(cocoaEvents.mouseReleasedOutsideEvent, mouseEventArgs); 
        }
    }
};


