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
@property (nonatomic, strong) ABLinkedList *subjectUnderTest;
@end

@implementation ABLinkedListXCTests

- (void)setUp {
    [super setUp];
    self.subjectUnderTest = [[ABLinkedList alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testAddingElementToEmptyList{
    [self.subjectUnderTest addObject:@1];
    XCTAssertEqualObjects([self.subjectUnderTest objectAtIndex:0], @1);
}

- (void)testAddingToNonEmptyList{
    [self.subjectUnderTest addObject:@0];
    [self.subjectUnderTest addObject:@1];
    [self.subjectUnderTest addObject:@2];
    XCTAssertEqualObjects([self.subjectUnderTest objectAtIndex:0], @0);
    XCTAssertEqualObjects([self.subjectUnderTest objectAtIndex:1], @1);
    XCTAssertEqualObjects([self.subjectUnderTest objectAtIndex:2], @2);
}

@end
