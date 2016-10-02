//
//  SafariScript.m
//  Kyobo
//
//  Created by Hyunjae Lee on 10/2/16.
//  Copyright © 2016 Hyunjae Lee. All rights reserved.
//

#import "SafariScript.h"

@implementation SafariScript

SafariApplication *safari;
SafariDocument *document;

- (void) run {
    
    safari = [SBApplication applicationWithBundleIdentifier:@"com.apple.Safari"];
    
    SBElementArray *documents = [safari documents];
    
    SafariDocument *newDocument = [[[safari classForScriptingClass:@"document"] alloc] init];
    [documents addObject: newDocument];
    
    document = [documents objectAtIndex: 0];
    [document setURL: @"http://www.kyobobook.co.kr/login/login.laf?retURL=http%3A//www.kyobobook.co.kr/prom/2015/book/151116_dailyCheck.jsp%3ForderClick%3Dc1j"];
    
    [self wait:100000 withJavaScript:@"document.loginForm.innerHTML"];
    
    [safari doJavaScript:@"document.loginForm.memid.value = 'guswoqkrtk'" in: (SafariTab *) document];
    [safari doJavaScript:@"document.loginForm.pw.value = '4c8cc5f13f'" in: (SafariTab *) document];
    [safari doJavaScript:@"document.loginForm.submit()" in: (SafariTab *) document];
    
    [self wait:100000 withJavaScript:@"document.eventForm.innerHTML"];
    
    [safari doJavaScript:@"goSubmit('001');" in:(SafariTab *) document];
    
    usleep(1000000);
    
    [documents removeObject: document];
    
}

- (void) wait:(unsigned int)useconds_t withJavaScript:(NSString *)script {
    
    while([safari doJavaScript: script in: (SafariTab *) document] == nil) {
        usleep(useconds_t);
    }
    
}

@end
