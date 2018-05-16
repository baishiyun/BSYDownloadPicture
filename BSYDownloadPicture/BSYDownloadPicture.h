//
//  BSYDownloadPicture.h
//  downloadImageDemo
//
//  Created by 白仕云 on 2018/5/15.
//  Copyright © 2018年 BSY.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface BSYDownloadPicture : NSObject

//单利
+(BSYDownloadPicture *)shareDownloadPicture;
/**
 传入 imageUrl地址 下载图片

 @param imageUrl 图片地址
 @param succeedCallBack 下载成功以后回掉
 @param failCallBack 下载失败以后回掉
 */
-(void)bsy_DownloadPictureWithUrl:(NSString *)imageUrl succeedCallBack:(void(^)(UIImage *image))succeedCallBack    failCallBack:(void(^)(void))failCallBack;
@end
