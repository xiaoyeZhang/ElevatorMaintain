//
//  CommonService.m
//  ElevatorMaintain
//
//  Created by 张晓烨 on 2017/9/29.
//  Copyright © 2017年 zxy. All rights reserved.
//

#import "CommonService.h"
#import <AFNetworking.h>
#import "UserEntity.h"

@implementation CommonService

- (void)loginWithPassword:(NSDictionary *)param Successed:(void(^)(UserEntity *entity)) successed Failed:(void(^)(int errorCode ,NSString *message))failed
{
    
    AFHTTPSessionManager *loginManager = [[AFHTTPSessionManager alloc]initWithBaseURL:[[NSURL alloc]initWithString:BASEURL]];

    loginManager.responseSerializer.acceptableContentTypes = [loginManager.responseSerializer.acceptableContentTypes setByAddingObject:@"text/html"];
    [loginManager POST:USERURL parameters:param progress:^(NSProgress * _Nonnull uploadProgress) {
        
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        UserEntity *entity = [[UserEntity alloc] init];
        entity = [entity initWithAttributes:responseObject];
        UserEntity *userEntity = [UserEntity sharedInstance];
        [userEntity deepCopy:entity];
        successed(entity);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"===--===%@",error);
    }];
    
}

- (void)getNetWorkData:(NSDictionary *)param andNetWorkUrl:(NSString *)URL Successed:(void (^)(id))successed Failed:(void (^)(int, NSString *))failed{
    
    AFHTTPSessionManager *client = [[AFHTTPSessionManager alloc]initWithBaseURL:[[NSURL alloc]initWithString:BASEURL]];
    //    AFHTTPSessionManager *client = [AFHTTPSessionManager manager];
    
    [client POST:URL parameters:param progress:^(NSProgress * _Nonnull uploadProgress) {
        
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        successed(responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"===--===%@",error);
    }];
}

@end
