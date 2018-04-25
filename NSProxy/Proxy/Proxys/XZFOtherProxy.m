//
//  XZFOtherProxy.m
//  Proxy
//
//  Created by 熊中福 on 2018/4/25.
//  Copyright © 2018年 xzf. All rights reserved.
//

#import "XZFOtherProxy.h"
@interface XZFOtherProxy()
@property (nonatomic, strong) NSObject *objc;
@end

@implementation XZFOtherProxy
+ (id)proxyWithObjc:(NSObject *)objc {
    XZFOtherProxy *xzfProxy = [XZFOtherProxy alloc];
    xzfProxy.objc = objc;
    return xzfProxy;
}
/**
 初始化
 
 @param objc 传入一个objc
 */
- (void)changeObjc:(NSObject *)objc {
    self.objc = objc;
}

#pragma mark - 需要实现的方法
///1.查询该方法的方法签名,用来生成 NSInvocation
- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel {
    NSMethodSignature * mSignature = nil;
    if ([self.objc methodSignatureForSelector:sel]) {
        mSignature = [self.objc methodSignatureForSelector:sel];
    } else {
        mSignature = [super methodSignatureForSelector:sel];
    }
    
    return mSignature;
}

///2.有了方法签名，调用方法实现
-(void)forwardInvocation:(NSInvocation *)invocation {
    //在这里我们可以实现对任意对象的行为进行拦截
    if (self.objc) {
        //拦截方法的执行者为复制的对象
        [invocation setTarget:self.objc];
        
        if ([self.objc isKindOfClass:[NSClassFromString(self.className) class]]) {
            NSString *str = @"迎娶白富美，出任CEO";
            [invocation setReturnValue:&str];
        }
    }
}
@end
