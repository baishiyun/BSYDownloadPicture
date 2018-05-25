# BSYDownloadPicture
图片下载工具，已经做了缓存处理，后面会有具体的完善，还希望大家多多支持，多多Star

使用方法：pod search BSYDownloadPicture 然后在你的podfile文件中添加   pod 'BSYDownloadPicture', '~> 1.1.0'后
执行pod install。

使用场景：UITableView /UICollectionView加载大量图片，这个时候，需要对网络下载做优化，已经下载的图片不在下载，为缓存的图片进行缓存！再也不用SDWebImage那么大一个库啦😄😄😄😄😄😄😄😄！ BSYDownloadPicture体积小，使用非常简单，就是一个方法回掉，其他一概不管就可以了。希望对大家有用。谢谢！

1、下载图片具体的使用它：

  [[BSYDownloadPicture shareDownloadPicture] bsy_DownloadPictureWithUrl:mode.url succeedCallBack:^(UIImage *image) {
  
                //成功回掉
                
                self.icon.image = image;
                
            } failCallBack:^{

                 //失败处理
            }];


2.删除所有图片缓存
/**

 删除所有缓存的图片
 
 @param succeedCallBack 删除成功
 
 @param failCallBack 删除失败
 
 */
 
-(void)bsy_removeDownloadPictureSucceedCallBack:(void(^)(BOOL removeBool))succeedCallBack    failCallBack:(void(^)(BOOL removeBool))failCallBack
{


}
