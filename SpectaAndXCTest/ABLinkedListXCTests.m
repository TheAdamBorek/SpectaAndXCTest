//
//  ABLinkedListXCTests.m
//  SpectaAndXCTest
//
//  Created by Adam Borek on 05.09.2015.
//  Copyright (c) 2015 Adam Borek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ABLinkedList.h"

@interface ABLinkedListXCTests : XCTestCase
@property (nonatomic, strong) ABLinkedList *systemUnderTests;
@end

@implementation ABLinkedListXCTests

- (void)setUp {
    [super setUp];
    self.systemUnderTests = [[ABLinkedList alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testAddingElementToEmptyList{
    [self.systemUnderTests addObject:@1];
    XCTAssertEqualObjects([self.systemUnderTests objectAtIndex:0], @1);
}

- (void)testAddingToNonEmptyList{
    [self.systemUnderTests addObject:@0];
    [self.systemUnderTests addObject:@1];
    [self.systemUnderTests addObject:@2];
    XCTAssertEqualObjects([self.systemUnderTests objectAtIndex:0], @0);
    XCTAssertEqualObjects([self.systemUnderTests objectAtIndex:1], @1);
    XCTAssertEqualObjects([self.systemUnderTests objectAtIndex:2], @2);
}

@end
