//
//  ViewController.m
//  IOSProgrammerTest
//
//  Created by Justin LeClair on 12/15/14.
//  Copyright (c) 2014 AppPartner. All rights reserved.
//

#import "MainMenuViewController.h"
#import "ChatSectionViewController.h"
#import "LoginSectionViewController.h"
#import "AnimationSectionViewController.h"

#define UIColorFromRGBWithAlpha(rgbValue,a) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:a]

@interface MainMenuViewController ()

@end

@implementation MainMenuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
 //Properties for navigation bar.
    [[self navigationController] setNavigationBarHidden:NO animated:YES];
    
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:UIColorFromRGBWithAlpha(0xffffff, 1.0),
       NSFontAttributeName:[UIFont fontWithName:@"Machinato-Light" size:20]}];
    
    self.navigationItem.title = @"Coding Tasks";
    self.navigationController.navigationBar.barTintColor = UIColorFromRGBWithAlpha(0x2c4556, 0.9);
    
// Setting Backgroung Image.
        UIImage *backgroundImage = [UIImage imageNamed:@"bg_main_menu.png"];
        UIImageView *backgroundImageView=[[UIImageView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
        backgroundImageView.image=backgroundImage;
        [self.view insertSubview:backgroundImageView atIndex:0];
    
    
    
   
    
    
    
       

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tableSectionAction:(id)sender
{
    ChatSectionViewController *tableSectionViewController = [[ChatSectionViewController alloc] init];
    [self.navigationController pushViewController:tableSectionViewController animated:YES];
}
- (IBAction)apiSectionAction:(id)sender
{
    LoginSectionViewController *apiSectionViewController = [[LoginSectionViewController alloc] init];
    [self.navigationController pushViewController:apiSectionViewController animated:YES];
}
- (IBAction)animationSectionAction:(id)sender
{
    AnimationSectionViewController *animationSectionViewController = [[AnimationSectionViewController alloc] init];
    [self.navigationController pushViewController:animationSectionViewController animated:YES];
}
@end
