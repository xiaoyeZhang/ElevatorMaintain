//
//  CommonService.h
//  ElevatorMaintain
//
//  Created by 张晓烨 on 2017/9/29.
//  Copyright © 2017年 zxy. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UserEntity;

@interface CommonService : NSObject

- (void)loginWithPassword:(NSDictionary *)param Successed:(void(^)(UserEntity *entity)) successed Failed:(void(^)(int errorCode ,NSString *message))failed;


- (void)getNetWorkData:(NSDictionary *)param andNetWorkUrl:(NSString *)URL Successed:(void(^)(id entity)) successed Failed:(void(^)(int errorCode ,NSString *message))failed;


@end
