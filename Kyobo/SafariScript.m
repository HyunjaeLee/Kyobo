//
//  SafariScript.m
//  Kyobo
//
//  Created by Hyunjae Lee on 10/2/16.
//  Copyright © 2016 Hyunjae Lee. All rights reserved.
//

#import "SafariScript.h"

@implementation SafariScript

- (void) run {
    
    SafariApplication *safari = [SBApplication applicationWithBundleIdentifier:@"com.apple.Safari"];
    SBElementArray* documents = [safari documents];
    SafariDocument* document = [documents objectAtIndex: 0];
    [document setURL: @"http://www.kyobobook.co.kr/login/login.laf?retURL=http%3A//www.kyobobook.co.kr/prom/2015/book/151116_dailyCheck.jsp%3ForderClick%3Dc1j"];
    sleep(3);
    [safari doJavaScript:@"document.getElementById('memid').value = 'guswoqkrtk'" in: (SafariTab *) document];
    [safari doJavaScript:@"document.getElementById('pw').value = '4c8cc5f13f'" in: (SafariTab *) document];
    [safari doJavaScript:@"document.getElementsByClassName('btn_submit')[0].click()" in: (SafariTab *) document];
    sleep(3);
    [safari doJavaScript:@"goSubmit('001');" in: (SafariTab *) document];
    
}

@end
