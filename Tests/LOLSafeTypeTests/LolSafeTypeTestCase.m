//
//  LolSafeTypeTestCase.m
//  LOLSafeType
//
//  Created by aboyko on 5/27/15.
//  Copyright (c) 2015 LOL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "LOLSafeType.h"
@interface LolSafeTypeTestCase : XCTestCase

@end

@implementation LolSafeTypeTestCase

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSuccesCast {
    NSString *string = @"Some string";
    
    id result =  LOLDynamicCast(string, NSString);
    XCTAssertEqualObjects(result, string);
}

- (void)testFailCast{
    NSString *string = @"Some string";
    
    id result =  LOLDynamicCast(string, NSNull);
    XCTAssertNil(result);

}



@end
