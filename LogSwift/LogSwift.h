//
//  LogSwift.h
//  LogSwift
//
//  Created by pengyucheng on 01/12/2016.
//  Copyright © 2016 PBBReader. All rights reserved.
//
#if TARGET_OS_IPHONE
#import <UIKit/UIKit.h>

//! Project version number for PBBLogSDK.
FOUNDATION_EXPORT double PBBLogSDKVersionNumber;

//! Project version string for PBBLogSDK.
FOUNDATION_EXPORT const unsigned char PBBLogSDKVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <PBBLogSDK/PublicHeader.h>
#import "LogSwift-Swift.h"

#elif TARGET_OS_MAC
#import <Cocoa/Cocoa.h>


//! Project version number for PBBLogSDK.
FOUNDATION_EXPORT double PBBLogSDKVersionNumber;

//! Project version string for PBBLogSDK.
FOUNDATION_EXPORT const unsigned char PBBLogSDKVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <PBBLogSDK/PublicHeader.h>
//#import <PBBLogSDK/PBBLogSDK-Swift.h>

#endif


