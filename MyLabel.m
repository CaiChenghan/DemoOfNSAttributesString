//
//  MyLabel.m
//  DemoOfNSAttributes
//
//  Created by 蔡成汉 on 15/3/11.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "MyLabel.h"

@interface MyLabel ()
{
    UILabel *myLabel;
}
@end

@implementation MyLabel

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self initiaMyLabel];
    }
    return self;
}

-(void)initiaMyLabel
{
    myLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    myLabel.backgroundColor = [UIColor lightGrayColor];
    [self addSubview:myLabel];
}

-(void)setAttributedText:(NSAttributedString *)attributedText
{
    [myLabel setAttributedText:attributedText];
}

-(void)setNumberOfLines:(NSInteger)numberOfLines
{
    myLabel.numberOfLines = numberOfLines;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint touchPoint = [touch locationInView:self];
    NSLog(@"began%@",NSStringFromCGPoint(touchPoint));
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint touchPoint = [touch locationInView:self];
    NSLog(@"move%@",NSStringFromCGPoint(touchPoint));
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint touchPoint = [touch locationInView:self];
    NSLog(@"end%@",NSStringFromCGPoint(touchPoint));
}

-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
