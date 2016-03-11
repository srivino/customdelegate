//
//  ViewController.m
//  customdelegate
//
//  Created by Rajarajeswaran Shanmugam on 3/10/16.
//  Copyright © 2016 janbaskclass. All rights reserved.
//

#import "ViewController.h"
#import "Mycustomview.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Mycustomview *customview1 = [[Mycustomview alloc]initWithFrame:CGRectMake(0, 0, 285, 165)];
    customview1.delegate = self;
    [self.view addSubview:customview1];
    Mycustomview *customview2 = [[Mycustomview alloc]initWithFrame:CGRectMake(0, 175, 285, 165)];
    customview2.delegate = self;
    [self.view addSubview:customview2];
    Mycustomview *customview3 = [[Mycustomview alloc]initWithFrame:CGRectMake(0, 320, 285, 165)];
    customview3.delegate = self;
    [self.view addSubview:customview3];
    
}

- (void)Mycustomdelegate:(Mycustomview *)customview changesegmentedaction:(id)segmentedaction
{
    NSLog(@"Customiew delegate methods");
    

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
