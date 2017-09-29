//
//  UserEntity.m
//  ElevatorMaintain
//
//  Created by 张晓烨 on 2017/9/29.
//  Copyright © 2017年 zxy. All rights reserved.
//

#import "UserEntity.h"

@implementation UserEntity

static UserEntity * _sharedInstance = nil;

+ (id)sharedInstance
{
    static dispatch_once_t p = 0;
    dispatch_once(&p, ^{
        
        NSData *userData=[[NSUserDefaults standardUserDefaults] objectForKey:@"UserEntity"];
        if (userData) {
            _sharedInstance = [NSKeyedUnarchiver unarchiveObjectWithData:userData];
        }else{
            _sharedInstance = [[UserEntity alloc] init];
        }
    });
    return _sharedInstance;
}

- (void) deepCopy:(UserEntity *)sender
{
    _sharedInstance.jsonInfo = [sender.jsonInfo mutableCopy];
    _sharedInstance.message = [sender.message mutableCopy];
    _sharedInstance.userId = [sender.userId mutableCopy];
    _sharedInstance.nickName = [sender.nickName mutableCopy];
    _sharedInstance.mobile = [sender.mobile mutableCopy];
    _sharedInstance.orgId = [sender.orgId mutableCopy];
    _sharedInstance.sex = [sender.sex mutableCopy];
    _sharedInstance.birth = [sender.birth mutableCopy];
    _sharedInstance.card = [sender.card mutableCopy];
    _sharedInstance.iconUrl = [sender.iconUrl mutableCopy];
    _sharedInstance.companyId = [sender.companyId mutableCopy];
    _sharedInstance.timestamp = [sender.timestamp mutableCopy];
    _sharedInstance.menu = [sender.menu mutableCopy];
    _sharedInstance.myequipmentCode = [sender.myequipmentCode mutableCopy];
    _sharedInstance.monthrecords = [sender.monthrecords mutableCopy];
    _sharedInstance.dayrecords = [sender.dayrecords mutableCopy];
}

-(void)update:(NSDictionary*)attributes
{
    NSString *jsonInfo = [attributes valueForKeyPath:@"jsonInfo"];
    self.message = [attributes valueForKeyPath:@"message"];
    
    NSDictionary *content = [attributes valueForKey:@"detailed"];
    
    if (content != nil && [self.jsonInfo isEqualToString:@"success"]) {
        self.userId = [content valueForKeyPath:@"userId"];
        self.nickName = [content valueForKeyPath:@"nickName"];
        self.mobile = [content valueForKeyPath:@"mobile"];
        self.orgId = [content valueForKeyPath:@"orgId"];
        self.sex = [content valueForKeyPath:@"sex"];
        self.birth = [content valueForKeyPath:@"birth"];
        self.card = [content valueForKeyPath:@"card"];
        self.iconUrl = [content valueForKeyPath:@"iconUrl"];
        self.companyId = [content valueForKey:@"companyId"];
        self.timestamp = [content valueForKey:@"timestamp"];
        self.menu = [content valueForKey:@"menu"];
        self.myequipmentCode = [content valueForKey:@"myequipmentCode"];
        self.monthrecords = [content valueForKey:@"monthrecords"];
        self.dayrecords = [content valueForKey:@"dayrecords"];
        
    }
}

- (instancetype)initWithAttributes:(NSDictionary *)attributes
{
    self = [super init];
    if (!self) {
        return nil;
    }
    [self update:attributes];
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder
{

    [encoder encodeObject:self.jsonInfo forKey:@"jsonInfo"];
    [encoder encodeObject:self.message forKey:@"message"];
    [encoder encodeObject:self.userId forKey:@"userId"];
    [encoder encodeObject:self.nickName forKey:@"nickName"];
    [encoder encodeObject:self.mobile forKey:@"mobile"];
    [encoder encodeObject:self.orgId forKey:@"orgId"];
    [encoder encodeObject:self.sex forKey:@"sex"];
    [encoder encodeObject:self.birth forKey:@"birth"];
    [encoder encodeObject:self.card forKey:@"card"];
    [encoder encodeObject:self.iconUrl forKey:@"iconUrl"];
    [encoder encodeObject:self.companyId forKey:@"companyId"];
    [encoder encodeObject:self.timestamp forKey:@"timestamp"];
    [encoder encodeObject:self.menu forKey:@"menu"];
    [encoder encodeObject:self.myequipmentCode forKey:@"myequipmentCode"];
    [encoder encodeObject:self.monthrecords forKey:@"monthrecords"];
    [encoder encodeObject:self.dayrecords forKey:@"dayrecords"];
}

- (id)initWithCoder:(NSCoder *)decoder
{
    
    if(self = [super init]) {
        self.jsonInfo = [decoder decodeObjectForKey:@"jsonInfo"];
        self.message = [decoder decodeObjectForKey:@"message"];
        self.userId = [decoder decodeObjectForKey:@"userId"];
        self.nickName = [decoder decodeObjectForKey:@"nickName"];
        self.mobile = [decoder decodeObjectForKey:@"mobile"];
        self.orgId = [decoder decodeObjectForKey:@"orgId"];
        self.sex = [decoder decodeObjectForKey:@"sex"];
        self.birth = [decoder decodeObjectForKey:@"birth"];
        self.card = [decoder decodeObjectForKey:@"card"];
        self.iconUrl = [decoder decodeObjectForKey:@"iconUrl"];
        self.companyId = [decoder decodeObjectForKey:@"companyId"];
        self.timestamp = [decoder decodeObjectForKey:@"timestamp"];
        self.menu = [decoder decodeObjectForKey:@"menu"];
        self.myequipmentCode = [decoder decodeObjectForKey:@"myequipmentCode"];
        self.monthrecords = [decoder decodeObjectForKey:@"monthrecords"];
        self.dayrecords = [decoder decodeObjectForKey:@"dayrecords"];
        
    }
    return  self;
}
@end
