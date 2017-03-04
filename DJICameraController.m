//
//  DJICameraController.m
//  FYP2
//
//  Created by CHEN Liqi on 2017/3/2.
//  Copyright © 2017年 CHEN Liqi. All rights reserved.
//

#import "DJICameraController.h"
#import <DJISDK/DJISDK.h>

@implementation DJICameraController

- (void) shootPhoto
{
    __weak DJICamera* P3ACamera = ((DJIAircraft*)[DJISDKManager product]).camera;
    if(P3ACamera){
        [P3ACamera startShootPhoto:DJICameraShootPhotoModeSingle withCompletion:^(NSError * _Nullable error) {
            if (error) {
                [weakSelf showAlertViewWithTitle:@"Take Photo Error" withMessage:error.description;
            }
        }];
    }
}

@end
