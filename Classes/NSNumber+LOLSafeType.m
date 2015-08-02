//
//  NSNumber+PDANumber.m
//
//  Created by aboyko on 3/2/15.
//

#import "NSNumber+LOLSafeType.h"

@implementation NSNumber (LOLSafeType)

+(NSNumber*) safeNumber:(id)number{
    return [self safeIntNumber:number default:nil];
}

+(NSNumber*) safeNumber:(id)number default:(NSNumber*)defaultValue;{
    return [self safeIntNumber:number default:defaultValue];
}

+(NSNumber*) safeIntNumber:(id)number default:(NSNumber*)defaultValue{
    if ([number isKindOfClass:[NSNumber class]]) {
        return number;
    }
    if (([number isKindOfClass:[NSString class]])||([number respondsToSelector:@selector(integerValue)])) {
        return @([number integerValue]);
    }
    return defaultValue;
}

+(NSNumber*) safeFloatNumber:(id)number default:(NSNumber*)defaultValue{
    if ([number isKindOfClass:[NSNumber class]]) {
        return number;
    }
    if (([number isKindOfClass:[NSString class]])||([number respondsToSelector:@selector(floatValue)])) {
        return @([number floatValue]);
    }
    return defaultValue;
}

+(NSNumber*) safeDoubleNumber:(id)number default:(NSNumber*)defaultValue{
    if ([number isKindOfClass:[NSNumber class]]) {
        return number;
    }
    if (([number isKindOfClass:[NSString class]])||([number respondsToSelector:@selector(doubleValue)])) {
        return @([number doubleValue]);
    }
    return defaultValue;
}
@end
