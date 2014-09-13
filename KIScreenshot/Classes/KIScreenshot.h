//
//  KIScreenshot.h
//  KIAutomatedScreenshots
//
//  Created by kaiinui on 2014/09/14.
//  Copyright (c) 2014年 kaiinui. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KIScreenshot : NSObject

+ (UIImage *)screenshotImageFromMainStorybaordWithStoryboardIdentifier:(NSString *)identifier;
+ (UIImage *)screenshotImageFromStoryboardWithName:(NSString *)storyboardName withStoryboardIdentifier:(NSString *)identifier;

@end
