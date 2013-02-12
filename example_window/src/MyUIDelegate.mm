//
//  MyUIDelegate.m
//  ofxCocoa demo
//
//  Created by Memo Akten on 30/10/2010.
//  Copyright 2010 MSA Visuals Ltd. All rights reserved.
//

#include "testApp.h"

#import "MyUIDelegate.h"


@implementation MyUIDelegate


-(void)awakeFromNib {
	NSLog(@"MyUIDelegate::awakeFromNib");
}

-(IBAction) theSliderChanged:(id)sender {
	NSLog(@"MyUIDelegate::theSliderChanged %@", sender);
	testApp *app = (testApp*)ofGetAppPtr();
	app->lineWidth = [sender floatValue];
}

-(IBAction) backgroundColorChanged:(id)sender {
	NSLog(@"MyUIDelegate::backgroundColorChanged %@", sender);
	
	NSColor *nsColor = [sender color];
	float r, g, b, a;
	[nsColor getRed:&r green:&g blue:&b alpha:&a];
	ofBackground(r * 255, g * 255, b * 255);
}

-(IBAction) foregroundColorChanged:(id)sender {
	NSLog(@"MyUIDelegate::foregroundColorChanged %@", sender);
	
	NSColor *nsColor = [sender color];
	//ofColor c;
	//[nsColor getRed:&c.r green:&c.g blue:&c.b alpha:&c.a];
	float r, g, b, a;
	[nsColor getRed:&r green:&g blue:&b alpha:&a];
	glColor3f(r, g, b);
}





@end
