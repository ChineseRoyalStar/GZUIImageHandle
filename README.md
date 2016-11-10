# GZUIImageHandle
UIImage Category With Core Graphics

/**
 * @等比例缩放
 */
`+ (UIImage *)scaleImage:(UIImage *)image toScale:(float)scale;`

/**
 * @自定义长宽
 */
`+ (UIImage *)reSizeImage:(UIImage *)image toSize:(CGSize)reSize;`

/**
 * @处理某个特定的View
 */
`+ (UIImage *)captureView:(UIView *)view;`

/**
 * @存储图片到本地
 */
`+ (void)saveToDocumentsWithImage:(UIImage *)image;`
