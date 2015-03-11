//
//  MyLabel.h
//  DemoOfNSAttributes
//
//  Created by 蔡成汉 on 15/3/11.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyLabel : UIView

@property(nonatomic,copy)   NSAttributedString *attributedText;

@property(nonatomic) NSInteger numberOfLines;

@end
