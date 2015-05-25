//
//  NSNumber+PDANumber.h
//  Pedia
//
//  Created by aboyko on 3/2/15.
//  Copyright (c) 2015 Provectus. All rights reserved.
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
