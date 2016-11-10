//
//  UIImage+UIImageHandle.h
//  GZUIImageHandle
//
//  Created by armada on 2016/11/10.
//  Copyright © 2016年 com.zlot.gz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (UIImageHandle)

/**
 * @等比例缩放
 */
+ (UIImage *)scaleImage:(UIImage *)image toScale:(float)scale;

/**
 * @自定义长宽
 */
+ (UIImage *)reSizeImage:(UIImage *)image toSize:(CGSize)reSize;

/**
 * @处理某个特定的View
 */
+ (UIImage *)captureView:(UIView *)view;

/**
 * @存储图片到本地
 */
+ (void)saveToDocumentsWithImage:(UIImage *)image;

@end
