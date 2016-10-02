//
//  SafariScript.m
//  Kyobo
//
//  Created by Hyunjae Lee on 10/2/16.
//  Copyright © 2016 Hyunjae Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ScriptingBridge/ScriptingBridge.h>
#import "Safari.h"

@interface SafariScript : NSObject

- (void) run;
- (void) wait:(unsigned int)useconds_t withJavaScript:(NSString*)script;

@end
