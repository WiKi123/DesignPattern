//
//  SubscibeCenter.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/16.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "SubscibeCenter.h"

static NSMutableDictionary *center = nil;

@implementation SubscibeCenter

+ (void)initialize {
    if (self == [SubscibeCenter class]) {
        center = [NSMutableDictionary dictionary];
    }
}

+ (void)creatNumber:(NSString *)number {
    
    NSHashTable *hashTable = [self exitNumber:number];
    if (hashTable == nil) {
        hashTable = [NSHashTable weakObjectsHashTable];
        [center setObject:hashTable forKey:number];
    }
    
}

+ (void)removeNumber:(NSString *)number {
    NSHashTable *hashTable = [self exitNumber:number];
    if (hashTable) {
        [center removeObjectForKey:number];
    }
}

+ (void)addUser:(id <SubscibeProtocol>)user withNumber:(NSString *)number {
    NSHashTable *hashTable = [self exitNumber:number];
    [hashTable addObject:user];
}

+ (void)removeUser:(id <SubscibeProtocol>)user withNumber:(NSString *)number {
    NSHashTable *hashTable = [self exitNumber:number];
    [hashTable removeObject:user];
}

+ (void)sendMessage:(NSString *)message withNumber:(NSString *)number {
    NSHashTable *hashTable = [self exitNumber:number];
    if (hashTable) {
        NSEnumerator *enumerato = [hashTable objectEnumerator];
        id<SubscibeProtocol> object = nil;
        
        while (object = [enumerato nextObject]) {
            
            if ([object respondsToSelector:@selector(sendMessage:withSubscibeNum:)]) {
                [object sendMessage:message withSubscibeNum:number];
            }
        
        }
        
    }
}

+ (NSHashTable *)exitNumber:(NSString *)number {
    
    return [center objectForKey:number];
}


@end
