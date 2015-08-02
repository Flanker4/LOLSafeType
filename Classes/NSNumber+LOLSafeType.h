//
//  NSNumber+PDANumber.h
//
//  Created by aboyko on 3/2/15.
//

#import <Foundation/Foundation.h>

@interface NSNumber (LOLSafeType)
//int
+(NSNumber*) safeNumber:(id)number;
//int
+(NSNumber*) safeNumber:(id)number default:(NSNumber*)defaultValue;
+(NSNumber*) safeIntNumber:(id)number default:(NSNumber*)defaultValue;;
+(NSNumber*) safeFloatNumber:(id)number default:(NSNumber*)defaultValue;
+(NSNumber*) safeDoubleNumber:(id)number default:(NSNumber*)defaultValue;

@end
