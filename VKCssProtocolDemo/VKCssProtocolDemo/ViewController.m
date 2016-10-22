//
//  ViewController.m
//  CSSKitDemo
//
//  Created by Awhisper on 2016/10/10.
//  Copyright © 2016年 baidu. All rights reserved.
//

#import "ViewController.h"
#import "VKCssProtocol.h"
#import "VKCssHotReloader.h"
@interface ViewController ()

@end

@implementation ViewController

-(void)initCss{
    //playground调试
    //JS测试包的本地绝对路径
    NSString *rootPath = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"projectPath"];;
    
    NSString *cssPath = [NSString stringWithFormat:@"%@%@", rootPath, @"/cssClass.css"];
    
    [VKCssHotReloader hotReloaderListenCssPath:cssPath];
    [VKCssHotReloader startHotReloader];
    
    
//    @defCssClass(defName(@"标准工具栏样式"),
//                 defStyles(@"background-color:yellow"));
//    
//    @defCssClass(defName(@"标准配字"),
//                 defStyles(defStyle(@"color",@"black"),
//                           defStyle(@"font-size",@"30")));
//    
//    @loadCssFile(@"cssClass");
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self initCss];
    
    UIButton *btabc = [[UIButton alloc]initWithFrame:CGRectMake(0, 140, self.view.bounds.size.width, 40)];
    btabc.cssClass = @"commenBar commenText commenImage";
    [self.view addSubview:btabc];
    
    UILabel *lbabc = [[UILabel alloc]initWithFrame:CGRectMake(0, 240, self.view.bounds.size.width, 40)];
    lbabc.cssClass = @"commenBar commenText";
    lbabc.text = @"aaaaabbbbb";
    [self.view addSubview:lbabc];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dealloc{
    [VKCssHotReloader endHotReloader];
}

@end
