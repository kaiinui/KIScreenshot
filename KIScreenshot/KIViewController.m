//
//  KIViewController.m
//  KIScreenshot
//
//  Created by kaiinui on 2014/09/14.
//  Copyright (c) 2014年 kaiinui. All rights reserved.
//

#import "KIViewController.h"

#import "KIScreenshot.h"

@interface KIViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;
@property (weak, nonatomic) IBOutlet UIImageView *imageView3;
@property (weak, nonatomic) IBOutlet UIImageView *imageView4;

@end

@implementation KIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.imageView1.image = [KIScreenshot screenshotImageFromMainStorybaordWithStoryboardIdentifier:@"ImageViewController"];
    self.imageView2.image = [KIScreenshot screenshotImageFromMainStorybaordWithStoryboardIdentifier:@"LabelViewController"];
    self.imageView3.image = [KIScreenshot screenshotImageFromMainStorybaordWithStoryboardIdentifier:@"BackgroundViewController"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
