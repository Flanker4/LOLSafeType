//
//  PDASafeType.h
//
//  Created by aboyko on 5/21/15.
//

#import "NSString+LOLSafeType.h"
#import "NSNumber+LOLSafeType.h"

#define LOLDynamicCast(object,classType) ([(object) isKindOfClass:[classType class]]?((classType*)object):nil)

#define _cast(classType,object) LOLDynamicCast(object, classType)

#define _if_let(classType, var, object) \
    classType* var = _cast(classType,object);\
    if  (var)


#define _guard(predicate)\
    if (predicate){}

#define _guard_let(classType, var, object)\
    classType* var = _cast(classType,object);\
    _guard(var)

#define _safe_block(block,...)  if (block) {block(__VA_ARGS__);}

#define _ui(code) dispatch_async(dispatch_get_main_queue(), ^{ code; });
#define _ui_block(block,...) _ui( _safe_block(block,__VA_ARGS__) );

