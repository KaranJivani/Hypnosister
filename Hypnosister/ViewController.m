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
    
    //Create CGrects for frames
    CGRect screenRect = [[UIWindow alloc]init].bounds;
    CGRect bigRect = screenRect;
    
    bigRect.size.width *= 2.0;
//    bigRect.size.height *= 2.0;
    
    //Create screen sized scrollview and add it to a main view
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:screenRect];
    [self.view addSubview:scrollView];
    
    
    firstView = [[HypnosisView alloc]initWithFrame:screenRect];
    [scrollView addSubview:firstView];
    
    screenRect.origin.x += screenRect.size.width;
    
    SecondView = [[HypnosisView alloc]initWithFrame:screenRect];
//    SecondView.backgroundColor = [UIColor blueColor];
    [scrollView addSubview:SecondView];
    
    //To enable paging in scrollview so it will direct go to page 2,3 and so on but it will not stop in middle of two different page
    scrollView.pagingEnabled = YES;
    
    //Set the content size of scrollview
    scrollView.contentSize = bigRect.size;
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidLayoutSubviews {
    
    firstView.frame = [[UIWindow alloc]init].bounds;
}
@end
