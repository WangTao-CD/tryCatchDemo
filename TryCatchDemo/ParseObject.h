//
//  ParseObject.h
//  TryCatchDemo
//
//  Created by Tao, Wang on 2021/4/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ParseObject : NSObject

- (void)asyncThrowException:(void(^)(BOOL success))responseBlock;

- (void)syncThrowException:(void(^)(BOOL success))responseBlock;

@end

NS_ASSUME_NONNULL_END
