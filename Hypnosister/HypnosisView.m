//
//  HypnosisView.m
//  Hypnosister
//
//  Created by Karan Jivani on 7/12/16.
//  Copyright © 2016 Karan Jivani. All rights reserved.
//

#import "HypnosisView.h"

@implementation HypnosisView

-(instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    //All Hypnosis view start with clear background color
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGRect Bounds = [[UIWindow alloc]init].bounds;
    
    //figure out the center of the bounds rectangle
    
    CGPoint center;
    
    center.x = Bounds.origin.x + Bounds.size.width/2.0;
    center.y = Bounds.origin.y + Bounds.size.height/2.0;
    
    /*//The circle will be the largest that will fit in the view
    float radius = MIN(Bounds.size.width, Bounds.size.height)/2;*/
    
    //The largets circle will circumscribe the view
    float maxRadius = hypot(Bounds.size.width, Bounds.size.height)/2.0;
    
    UIBezierPath *path = [[UIBezierPath alloc]init];
    
    /*//Add and arc to path at center with radius of radius from 0 to 2*PI radians(a circle)
    [path addArcWithCenter:center radius:radius startAngle:0.0 endAngle:M_PI*2.0 clockwise:YES];*/
    
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius = currentRadius-20) {
        
        //Move point to correct spot for each circle
        [path moveToPoint:CGPointMake(center.x+currentRadius, center.y)];
        
        [path addArcWithCenter:center radius:currentRadius startAngle:0.0 endAngle:M_PI*2.0 clockwise:YES];

    }
    
    //configure the drawing color to light gray
    [[UIColor lightGrayColor]setStroke];
    
    //Configure line width to 10 points
    path.lineWidth = 10;
    
    //Draw the line
    [path stroke];
    
    //Bronze challange 
    UIImage *logoImage = [UIImage imageNamed:@"logo.png"];
    
    CGRect imageRect = CGRectMake(self.bounds.origin.x,self.bounds.origin.y,self.bounds.size.width,self.bounds.size.height);
    
    [logoImage drawInRect:imageRect];
}



@end
