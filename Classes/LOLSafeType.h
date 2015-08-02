//
//  PDASafeType.h
//
//  Created by aboyko on 5/21/15.
//

#import "NSString+LOLSafeType.h"
#import "NSNumber+LOLSafeType.h"

#define LOLDynamicCast(object,classType) ([(object) isKindOfClass:[classType class]]?((classType*)object):nil)

