//
//  ViewController.m
//  Hypnosister
//
//  Created by Karan Jivani on 7/12/16.
//  Copyright © 2016 Karan Jivani. All rights reserved.
//

#import "ViewController.h"
#import "HypnosisView.h"

@interface ViewController ()
{
HypnosisView *firstView;
HypnosisView *SecondView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGRect firstFrame = [[UIWindow alloc]init].bounds;
    
    firstView = [[HypnosisView alloc]initWithFrame:firstFrame];
//    firstView.backgroundColor = [UIColor redColor];
    
    CGRect secondFrame = CGRectMake(10, 10, 30, 30);
    
    SecondView = [[HypnosisView alloc]initWithFrame:secondFrame];
    SecondView.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:firstView];
//    [self.view addSubview:SecondView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidLayoutSubviews {
    
    firstView.frame = [[UIWindow alloc]init].bounds;
}
@end
