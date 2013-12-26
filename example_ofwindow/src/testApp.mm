#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){
    ofBackground(0);
}

//--------------------------------------------------------------
void testApp::update(){
    easedMouse = easedMouse * .9 + ofPoint(mouseX, mouseY) * .1;
}

//--------------------------------------------------------------
void testApp::draw(){
    ofSetColor(ofClamp( easedMouse.distance(ofPoint(mouseX, mouseY)), 0, 255));
    ofCircle(easedMouse, 100);
    ofSetColor(255);
    ofRect(mouseX - 50, mouseY - 50, 100, 100);
}

//--------------------------------------------------------------
void testApp::keyPressed(int key){

}

//--------------------------------------------------------------
void testApp::keyReleased(int key){

}

//--------------------------------------------------------------
void testApp::mouseMoved(int x, int y ){

}

//--------------------------------------------------------------
void testApp::mouseDragged(int x, int y, int button){

}

//--------------------------------------------------------------
void testApp::mousePressed(int x, int y, int button){

}

//--------------------------------------------------------------
void testApp::mouseReleased(int x, int y, int button){

}

//--------------------------------------------------------------
void testApp::windowResized(int w, int h){

}

//--------------------------------------------------------------
void testApp::gotMessage(ofMessage msg){

}

//--------------------------------------------------------------
void testApp::dragEvent(ofDragInfo dragInfo){ 

}
