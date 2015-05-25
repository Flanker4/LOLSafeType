//
//  NSString+NilOrEmpty.h
//  TRD
//
//  Created by flanker on 11.12.12.
//
//

#import <Foundation/Foundation.h>

@interface NSString (LOLSafeType)
+ (BOOL)isStringEmptyOrNil:(NSString *)string;
+ (BOOL)isNotEmptyString:(NSString*)string;
+ (NSString*) safeString:(id) value;
+ (NSString*) safeString:(id)value default:(NSString*)defaultValue;
@end
