//
//  UIImage+UIImageHandle.m
//  GZUIImageHandle
//
//  Created by armada on 2016/11/10.
//  Copyright © 2016年 com.zlot.gz. All rights reserved.
//

#import "UIImage+UIImageHandle.h"

#import <QuartzCore/QuartzCore.h>

#import <CoreGraphics/CoreGraphics.h>

@implementation UIImage (UIImageHandle)

/**
 * @等比例缩放
 */
+ (UIImage *)scaleImage:(UIImage *)image toScale:(float)scale {
    
    UIGraphicsBeginImageContext(CGSizeMake(image.size.width*scale,image.size.height*scale));
    
    [image drawInRect:CGRectMake(0, 0, image.size.width*scale, image.size.height*scale)];
    
    UIImage *scaleImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return scaleImage;
}


/**
 * @自定义长宽
 */
+ (UIImage *)reSizeImage:(UIImage *)image toSize:(CGSize)reSize {
    
    UIGraphicsBeginImageContext(CGSizeMake(reSize.width,reSize.height));
    
    [image drawInRect:CGRectMake(0, 0, reSize.width, reSize.height)];
    
    UIImage *reSizeImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return reSizeImage;
}

/**
 * @处理某个特定的View
 *可以把当前View的layer，输出到一个ImageContext中，然后利用这个ImageContext得到UIImage
 */
+ (UIImage *)captureView:(UIView *)view {
    
    CGRect rect = view.frame;
    
    UIGraphicsBeginImageContext(rect.size);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [view.layer renderInContext:context];
    
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return img;
}

/**
 * @存储图片到本地
 */
+ (void)saveToDocumentsWithImage:(UIImage *)image {
    
    //存储到app的document文件夹中
    NSString *path = [[NSHomeDirectory() stringByAppendingPathComponent:@"Documents"] stringByAppendingPathComponent:@"image.png"];
    
    [UIImagePNGRepresentation(image) writeToFile:path atomically:YES];
}



@end
