//
//  XZFOtherProxy.h
//  Proxy
//
//  Created by 熊中福 on 2018/4/25.
//  Copyright © 2018年 xzf. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XZFOtherProxy : NSProxy
@property (nonatomic, copy) NSString *className; //类名，用来过滤类
- (void)changeObjc:(NSObject *)objc; //复制对象
+ (id)proxyWithObjc:(NSObject *)objc; //初始化
@end
