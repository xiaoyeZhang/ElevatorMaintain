//
//  UserEntity.h
//  ElevatorMaintain
//
//  Created by 张晓烨 on 2017/9/29.
//  Copyright © 2017年 zxy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserEntity : NSObject

@property (nonatomic,strong) NSString *jsonInfo;
@property (nonatomic,strong) NSString *message;
@property (nonatomic,strong) NSString *userId;
@property (nonatomic,strong) NSString *nickName;
@property (nonatomic,strong) NSString *mobile;
@property (nonatomic,strong) NSString *orgId;
@property (nonatomic,strong) NSString *sex;
@property (nonatomic,strong) NSString *birth;
@property (nonatomic,strong) NSString *card;
@property (nonatomic,strong) NSString *iconUrl;
@property (nonatomic,strong) NSString *companyId;
@property (nonatomic,strong) NSString *timestamp;
@property (nonatomic,strong) NSString *menu;
@property (nonatomic,strong) NSString *myequipmentCode;
@property (nonatomic,strong) NSString *monthrecords;
@property (nonatomic,strong) NSString *dayrecords;

+ (id)sharedInstance;
- (instancetype)initWithAttributes:(NSDictionary *)attributes;
- (void) deepCopy:(UserEntity *)sender;
- (id)initWithCoder:(NSCoder *)decoder;
- (void)encodeWithCoder:(NSCoder *)encoder;

@end
