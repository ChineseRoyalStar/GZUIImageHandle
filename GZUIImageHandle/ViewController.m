//
//  ViewController.m
//  GZUIImageHandle
//
//  Created by armada on 2016/11/10.
//  Copyright © 2016年 com.zlot.gz. All rights reserved.
//

#import "ViewController.h"

#import "UIImage+UIImageHandle.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //原始图片
    UIImage *origin = [UIImage imageNamed:@"apple_logo"];
    NSLog(@"width:%f,height:%f",origin.size.width,origin.size.height);
  
    //二倍缩放
    UIImage *scaleImage = [UIImage scaleImage:origin toScale:2];
    NSLog(@"width:%f,height:%f",scaleImage.size.width,scaleImage.size.height);
    
    //自定义宽高
    UIImage *resizeImage = [UIImage reSizeImage:origin toSize:CGSizeMake(100, 200)];
    NSLog(@"width:%f,height:%f",resizeImage.size.width,resizeImage.size.height);
    
    //照片存储
    [UIImage saveToDocumentsWithImage:scaleImage];
    NSLog(@"%@",NSHomeDirectory());
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
