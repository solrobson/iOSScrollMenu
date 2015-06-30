//
//  MenuSlider.m
//  ScrollMenu
//
//  Created by Sol on 8/18/13.
//  Copyright (c) 2013 Sol. All rights reserved.
//

#import "MenuSlider.h"

@implementation MenuSlider

-(void) MenuSlider
{
    
}

-(void)addImageButton:(NSString *) path :(int) pos
{
    UIImage *btnImg = [UIImage imageWithContentsOfFile: path];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    button.frame = CGRectMake( 30*pos,10, 30.0, 80.0);
    [button setBackgroundImage:btnImg forState:UIControlStateNormal];
    [self addSubview:button];
    
}
-(id) initWithFrame: (CGRect)frame
{
    self = [super initWithFrame: frame];
    if(self)
    {
        [self addImageButton: @"/Users/Sol/Desktop/Programming/iOS/ScrollMenu/ScrollMenu/images/black.png" :0];
        [self addImageButton: @"/Users/Sol/Desktop/Programming/iOS/ScrollMenu/ScrollMenu/images/black.png" :1];
        [self addImageButton: @"/Users/Sol/Desktop/Programming/iOS/ScrollMenu/ScrollMenu/images/black.png" :2];
        [self addImageButton: @"/Users/Sol/Desktop/Programming/iOS/ScrollMenu/ScrollMenu/images/black.png" :3];
        [self addImageButton: @"/Users/Sol/Desktop/Programming/iOS/ScrollMenu/ScrollMenu/images/black.png" :4];
        [self addImageButton: @"/Users/Sol/Desktop/Programming/iOS/ScrollMenu/ScrollMenu/images/black.png" :5];
        [self addImageButton: @"/Users/Sol/Desktop/Programming/iOS/ScrollMenu/ScrollMenu/images/black.png" :6];
        self.btnWghtWide = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.btnWghtWide.frame = CGRectMake(7*30+10, 10, 90, 30);
        [self addSubview: self.btnWghtWide];
        self.btnWghtMid = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.btnWghtMid.frame = CGRectMake(7*30+10, 50, 90, 20);
        [self addSubview: self.btnWghtMid];
        self.btnWghtNar = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.btnWghtNar.frame = CGRectMake(7*30+10, 80, 90, 10);
        [self addSubview: self.btnWghtNar];
        
    }
    return self;
}
@end
