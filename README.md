# BSYDownloadPicture
图片下载工具，还未做图片的缓存处理，后面会有具体的完善，还希望大家多多支持

使用方法：pod search BSYDownloadPicture 然后在你的podfile文件中添加   pod 'BSYDownloadPicture', '~> 1.0.0'后
执行pod install.

具体的使用它：
  [[BSYDownloadPicture shareDownloadPicture] bsy_DownloadPictureWithUrl:mode.url succeedCallBack:^(UIImage *image) {
                //成功回掉
                self.icon.image = image;

            } failCallBack:^{

                 //失败处理
            }];
