//
//  BSYDownloadPicture.m
//  downloadImageDemo
//
//  Created by 白仕云 on 2018/5/15.
//  Copyright © 2018年 BSY.com. All rights reserved.
//
#import "BSYDownloadPicture.h"
@implementation BSYDownloadPicture


//单利
+(BSYDownloadPicture *)shareDownloadPicture
{
    static BSYDownloadPicture * s_instance_dj_singleton = nil ;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (s_instance_dj_singleton == nil) {
            s_instance_dj_singleton = [[BSYDownloadPicture alloc] init];
        }
    });
    return (BSYDownloadPicture *)s_instance_dj_singleton;

    
}
/**
 传入 imageUrl地址 下载图片
 @param imageUrl 图片地址
 @param succeedCallBack 下载成功以后回掉
  @param failCallBack 下载失败以后回掉
 */
-(void)bsy_DownloadPictureWithUrl:(NSString *)imageUrl succeedCallBack:(void(^)(UIImage *image))succeedCallBack    failCallBack:(void(^)(void))failCallBack
{
    if ([imageUrl isKindOfClass:[NSString class]]&&[imageUrl length]>0) {
        [self existimageUrl:imageUrl succeedCallBack:^(UIImage *image) {
            if (succeedCallBack) {
                succeedCallBack(image);
            }
        } failCallBack:^{
            if (failCallBack) {
                failCallBack();
            }
        }];
    }else{
        if (failCallBack) {
            failCallBack();
        }

    }
}


/**
 存在图片地址
 @param imageUrl 图片地址
 @param succeedCallBack 下载成功以后回掉
 @param failCallBack 下载失败以后回掉
 */
-(void)existimageUrl:(NSString *)imageUrl succeedCallBack:(void(^)(UIImage *image))succeedCallBack    failCallBack:(void(^)(void))failCallBack
{

        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            [self downloadImageWithimageUrl:imageUrl succeedCallBack:^(UIImage *image) {
                if (succeedCallBack) {
                    succeedCallBack(image);
                }
            } failCallBack:^{
                if (failCallBack) {
                    failCallBack();
                }
            }];
        });
}



/**
 下载图片的具体实现
 @param imageUrl 图片地址
 @param succeedCallBack 下载成功以后回掉
 @param failCallBack 下载失败以后回掉
 */
-(void)downloadImageWithimageUrl:(NSString *)imageUrl succeedCallBack:(void(^)(UIImage *image))succeedCallBack    failCallBack:(void(^)(void))failCallBack
{

    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:imageUrl]];
    UIImage *image = [UIImage imageWithData:data];
    dispatch_async(dispatch_get_main_queue(), ^{

        if (image) {
            if (succeedCallBack) {
                succeedCallBack(image);
            }
        }else{
            if (failCallBack) {
                failCallBack();
            }
        }

    });

}
@end
