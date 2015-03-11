//
//  ViewController.m
//  DemoOfNSAttributes
//
//  Created by 蔡成汉 on 15/3/11.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "ViewController.h"
#import "MyLabel.h"

@interface ViewController ()
{
    UILabel *myLable;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self initiaNav];
    self.view.userInteractionEnabled = YES;
    
    myLable = [[UILabel alloc]initWithFrame:CGRectMake((self.view.frame.size.width - 300)/2, 100, 300, 300)];
    myLable.numberOfLines = 0;
    
    NSString *tpSourceString = @"孟子曰：“舜发于畎亩之中，傅说举于版筑之间，胶鬲举于鱼盐之中，管夷吾举于土，孙叔敖举于海，百里奚举于市。故天将降大任于是人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能。人恒过，然后能改；困于心，衡于虑，而后作；征于色，发于声，而后喻。入则无法家拂士，出则无敌国外患者，国恒亡。然后知生于忧患而死于安乐也。”";
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]initWithString:tpSourceString];
    
    //构建attributes字典
    NSMutableDictionary *attributesDic = [NSMutableDictionary dictionary];
    [attributesDic setObject:[UIColor redColor] forKey:NSForegroundColorAttributeName];
    [attributesDic setObject:[UIFont systemFontOfSize:15] forKey:NSFontAttributeName];
    
    [attributedString addAttributes:attributesDic range:NSMakeRange(0, 2)];
    
    
    //给文字定义颜色
    [attributedString addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:NSMakeRange(5, 1)];
    
    //给文字定义大小
    [attributedString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:20] range:NSMakeRange(8, 2)];
    
    //给文字添加背景颜色
    [attributedString addAttribute:NSBackgroundColorAttributeName value:[UIColor greenColor] range:NSMakeRange(13, 9)];
    
    //
    [attributedString addAttribute:NSLigatureAttributeName value:[NSNumber numberWithInteger:0.1] range:NSMakeRange(23, 1)];
    
    
    //文字对齐方式
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc]init];
    paragraphStyle.alignment = NSTextAlignmentCenter;
    
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(25, 10)];
    [attributedString addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(25, 10)];
    
    
    //删除线
    [attributedString addAttribute:NSStrikethroughStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle]  range:NSMakeRange(38, 6)];
    [attributedString addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(38, 6)];
    
    //下划线
    [attributedString addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleDouble] range:NSMakeRange(45, 6)];
    [attributedString addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:NSMakeRange(45, 6)];
    
    //下划线的颜色
    [attributedString addAttribute:NSUnderlineColorAttributeName value:[UIColor redColor] range:NSMakeRange(45, 6)];
    
    
    [attributedString addAttribute:NSStrokeColorAttributeName value:[UIColor redColor] range:NSMakeRange(52, 10)];
    [attributedString addAttribute:NSStrokeWidthAttributeName value:[NSNumber numberWithInteger:1] range:NSMakeRange(52, 10)];
    [attributedString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:35] range:NSMakeRange(52, 10)];
    
    [attributedString addAttribute:NSLinkAttributeName value:@"" range:NSMakeRange(63, 6)];
    
    
    [myLable setAttributedText:attributedString];
    
    [self.view addSubview:myLable];
    
}


-(void)initiaNav
{
    self.navigationItem.title = @"ANAttributes";
    NSMutableDictionary *attributesDic = [NSMutableDictionary dictionary];
    [attributesDic setObject:[UIColor redColor] forKey:NSForegroundColorAttributeName];
    [attributesDic setObject:[UIFont systemFontOfSize:18] forKey:NSFontAttributeName];
    [self.navigationController.navigationBar setTitleTextAttributes:attributesDic];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
