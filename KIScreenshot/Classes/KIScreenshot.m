//
//  KIScreenshot.m
//  KIAutomatedScreenshots
//
//  Created by kaiinui on 2014/09/14.
//  Copyright (c) 2014年 kaiinui. All rights reserved.
//

#import "KIScreenshot.h"

@implementation KIScreenshot

+ (UIImage *)screenshotImageFromMainStorybaordWithStoryboardIdentifier:(NSString *)identifier {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    return [self screenshotImageFromStoryboard:storyboard withStoryboardIdentifier:identifier];
}

+ (UIImage *)screenshotImageFromStoryboardWithName:(NSString *)storyboardName withStoryboardIdentifier:(NSString *)identifier {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:[NSBundle mainBundle]];
    return [self screenshotImageFromStoryboard:storyboard withStoryboardIdentifier:identifier];
}

# pragma mark - Helpers

+ (UIImage *)screenshotImageFromStoryboard:(UIStoryboard *)storyboard withStoryboardIdentifier:(NSString *)identifier {
    UIViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:identifier];
    UIView *view = viewController.view;
    
    UIGraphicsBeginImageContext(view.bounds.size);
    
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
}

@end
