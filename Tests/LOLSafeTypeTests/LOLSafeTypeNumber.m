//
//  LOLSafeTypeTests.m
//  LOLSafeTypeTests
//
//  Created by aboyko on 5/25/15.
//  Copyright (c) 2015 LOL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "LOLSafeType.h"
@interface LOLSafeTypeTests : XCTestCase

@end

@implementation LOLSafeTypeTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testFloat {
    float value = 0.2f;
    NSNumber * result = [NSNumber safeFloatNumber:@(value) default:nil];
    XCTAssertEqualWithAccuracy([result floatValue], value, 0.0001f);
}

- (void) testDouble{
    double  value = 0.2;
    NSNumber * result = [NSNumber safeDoubleNumber:@(value) default:nil];
    XCTAssertEqualWithAccuracy([result doubleValue], value, 0.0001f);
}

- (void) testInt{
    NSInteger  value = 2;
    NSNumber  *result = [NSNumber safeIntNumber:@(value) default:nil];
    XCTAssertEqual([result integerValue], value);
    
    result = [NSNumber safeNumber:@(value) default:nil];
    XCTAssertEqual([result integerValue], value);
    
    result = [NSNumber safeNumber:@(value)];
    XCTAssertEqual([result integerValue], value);
}

-(void) testString{
    NSInteger   intValue        = 4;
    float       floatValue      = 0.2f;
    double      doubleValue     = 0.4;
    
    NSNumber * result = [NSNumber safeIntNumber:[NSString stringWithFormat:@"%li", (long)intValue] default:nil];
    XCTAssertEqual([result integerValue], intValue);
    
    result = [NSNumber safeFloatNumber:[NSString stringWithFormat:@"%f", floatValue] default:nil];
    XCTAssertEqualWithAccuracy([result floatValue], floatValue, 0.0001);
    
    result = [NSNumber safeDoubleNumber:[NSString stringWithFormat:@"%f", doubleValue] default:nil];
    XCTAssertEqualWithAccuracy([result doubleValue], doubleValue,0.0001);
}

-(void) testNull{
    NSNull   *nullValue = [NSNull null];

    NSNumber *result = [NSNumber safeNumber:nullValue];
    XCTAssertNil(result);

    result = [NSNumber safeNumber:nullValue default:nil];
    XCTAssertNil(result);

    result = [NSNumber safeIntNumber:nullValue default:nil];
    XCTAssertNil(result);

    result = [NSNumber safeFloatNumber:nullValue default:nil];
    XCTAssertNil(result);
    
    result = [NSNumber safeDoubleNumber:nullValue default:nil];
    XCTAssertNil(result);
}

-(void) testReturn{
    NSNumber *returnValue       = @4;
    NSNull   *notValidNumber    = [NSNull null];

    
    NSNumber *result = [NSNumber safeNumber:notValidNumber];
    XCTAssertNil(result);
    
    result = [NSNumber safeNumber:notValidNumber default:returnValue];
    XCTAssertEqualObjects(result, returnValue);
    
    
    result = [NSNumber safeIntNumber:notValidNumber default:returnValue];
    XCTAssertEqualObjects(result, returnValue);
    
    result = [NSNumber safeFloatNumber:notValidNumber default:returnValue];
    XCTAssertEqualObjects(result, returnValue);
    
    result = [NSNumber safeDoubleNumber:notValidNumber default:returnValue];
    XCTAssertEqualObjects(result, returnValue);
}
/*- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}*/

@end
