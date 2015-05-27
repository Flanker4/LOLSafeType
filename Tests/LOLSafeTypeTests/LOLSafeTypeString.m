//
//  LOLSafeTypeString.m
//  LOLSafeType
//
//  Created by aboyko on 5/27/15.
//  Copyright (c) 2015 LOL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "LOLSafeType.h"

@interface LOLSafeTypeString : XCTestCase

@end

@implementation LOLSafeTypeString

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testEmpty{
    BOOL result =  [NSString isNotEmptyString:@"string"];
    XCTAssertTrue(result);
    
    result = [NSString isNotEmptyString:@""];
    XCTAssertFalse(result);
    
    result = [NSString isNotEmptyString:nil];
    XCTAssertFalse(result);
    
    result = [NSString isNotEmptyString:(NSString*)[NSNull null]];
    XCTAssertFalse(result);
}

- (void) testString{
    NSString* str = @"String";
    
    NSString* result = [NSString safeString:str];
    XCTAssertEqualObjects(result, str);
    
    result = [NSString safeString:result default:nil];
    XCTAssertEqualObjects(result, str);
}

- (void) testNumber{
    NSNumber *number = @(4);
    NSString* result = [NSString safeString:number];
    XCTAssertEqualObjects(result, [number stringValue]);
    
    result = [NSString safeString:number default:nil];
    XCTAssertEqualObjects(result, [number stringValue]);
}

- (void) testNull{
    NSString* result = [NSString safeString:[NSNull null]];
    XCTAssertNil(result);
    
    result = [NSString safeString:[NSNull null] default:nil];
    XCTAssertNil(result);
}

- (void)testReturn{
    NSString* defaultStr = @"Default String";
    NSString* result = [NSString safeString:[NSNull null]];
    XCTAssertNil(result);
    
    result = [NSString safeString:[NSNull null] default:defaultStr];
    XCTAssertEqualObjects(result, defaultStr);
}

@end
