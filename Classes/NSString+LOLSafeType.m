//
//  NSString+NilOrEmpty.m
//  TRD
//
//  Created by flanker on 11.12.12.
//
//

#import "NSString+LOLSafeType.h"

@implementation NSString (LOLSafeType)
+ (BOOL)isStringEmptyOrNil:(NSString *)string{
    if (((NSNull *) string == [NSNull null]) || (string == nil) ){
        return YES;
    }
    string = [string stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    if ([string isEqualToString:@""]) {
        return YES;
    }
    return NO;
}

+ (BOOL) isNotEmptyString:(NSString*)string{
    if (([string isKindOfClass:[NSString class]])&&(string.length>0)){
        return YES;
    }
    return NO;
}

+ (NSString*) safeString:(id) value{
    return [self safeString:value default:nil];
}

+(NSString*) safeString:(id)value default:(NSString*)defaultValue{
    NSString *result = defaultValue;
    if ([value isKindOfClass:[NSString class]]){
        result=value;
    }
    if ([value respondsToSelector:@selector(stringValue)]){
        result=[value stringValue];
    }
    return result;
}
@end
