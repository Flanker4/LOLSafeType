//
//  PDASafeType.h
//  Pedia
//
//  Created by aboyko on 5/21/15.
//  Copyright (c) 2015 Provectus. All rights reserved.
//

#import "NSString+LOLSafeType.h"
#import "NSNumber+LOLSafeType.h"

#define LOLDynamicCast(object,classType) ([(object) isKindOfClass:[classType class]]?((classType*)object):nil)

