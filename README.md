# GZUIImageHandle
UIImage Category With Core Graphics</br>
#####等比例缩放</br>
`+ (UIImage *)scaleImage:(UIImage *)image toScale:(float)scale;`</br>

####自定义长宽</br>
`+ (UIImage *)reSizeImage:(UIImage *)image toSize:(CGSize)reSize;`</br>

####处理某个特定的View</br>
`+ (UIImage *)captureView:(UIView *)view;`</br>

####存储图片到本地</br>
`+ (void)saveToDocumentsWithImage:(UIImage *)image;`
