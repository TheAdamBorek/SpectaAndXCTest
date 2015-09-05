//
//  ABLinkedListSpectaTests.m
//  SpectaAndXCTest
//
//  Created by Adam Borek on 05.09.2015.
//  Copyright (c) 2015 Adam Borek. All rights reserved.
//
#import "SpectaDSL.h"
#import "SPTSpec.h"
#import "Specta.h"
#import "Expecta.h"

#import "ABLinkedList.h"
SpecBegin(ABLinkedListTestsSpec)

describe(@"ABLinkedList", ^{
    __block ABLinkedList *subjectUnderTests;

    beforeEach(^{
        subjectUnderTests = [[ABLinkedList alloc] init];
    });

    afterEach(^{
        subjectUnderTests = nil;
    });

    describe(@"adding and reciving object form list",^{
        describe(@"addObject:", ^{
            context(@"list is empty",^{
                it(@"should add object at index 0",^{
                    [subjectUnderTests addObject:@0];
                    expect([subjectUnderTests objectAtIndex:0]).to.equal(@0);
                });
            });

            context(@"when list is not empty",^{
                before(^{
                    [subjectUnderTests addObject:@0];
                    [subjectUnderTests addObject:@1];
                });

                it(@"should add object at index 2", ^{
                    [subjectUnderTests addObject:@2];
                    expect([subjectUnderTests objectAtIndex:2]).to.equal(@2);
                });
            });
        });
    });
});

SpecEnd
