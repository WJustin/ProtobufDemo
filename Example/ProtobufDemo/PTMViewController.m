//
//  PTMViewController.m
//  ProtobufDemo
//
//  Created by Justin.Wang on 01/20/2017.
//  Copyright (c) 2017 Justin.Wang. All rights reserved.
//

#import "PTMViewController.h"
#import <ProtobufDemo/SignMessage.pbobjc.h>

@interface PTMViewController ()

@end

@implementation PTMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    PTMUserSignUpRequest *request = [[PTMUserSignUpRequest alloc] init];
    request.osVersion = @"mmm";
    NSLog(@"%@",request);
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
