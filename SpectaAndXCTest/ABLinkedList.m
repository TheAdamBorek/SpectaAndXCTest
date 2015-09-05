//
//  ABLinkedList.m
//  SpectaAndXCTest
//
//  Created by Adam Borek on 05.09.2015.
//  Copyright (c) 2015 Adam Borek. All rights reserved.
//

#import "ABLinkedList.h"

@interface ABElement : NSObject
@property (nonatomic, strong) id value;
@property (nonatomic, strong) ABElement *nextElement;
@property (nonatomic, strong) ABElement *previousElement;
-(instancetype)initWithValue:(id)value;
@end

@interface ABLinkedList()
@property (nonatomic, strong) ABElement *rootElement;
@end

@implementation ABLinkedList

- (instancetype)init{
    if(self = [super init]){
        [self initializeRootElement];
    }
    
    return self;
}

- (void)initializeRootElement{
    self.rootElement = [[ABElement alloc] init];
    self.rootElement.nextElement = self.rootElement;
    self.rootElement.previousElement = self.rootElement;
}

- (instancetype)initWithArray:(NSArray*)array{
    if(self = [super init]){
        [self initializeRootElement];
        for(id value in array){
            [self addObject:value];
        }
    }
    
    return self;
}

- (id)objectAtIndex:(NSUInteger)index{
    return [[self elementAtIndex:index] value];
}

- (ABElement*)elementAtIndex:(NSUInteger)index{
    ABElement* element = self.rootElement;
    NSUInteger currentIndex = 0;
    while(element && currentIndex < index+1){
        element = element.nextElement;
        currentIndex++;
    }
    
    return element;
}


- (void)addObject:(id)object{
    ABElement *lastElelemnt = self.rootElement.previousElement;
    ABElement *newElement = [[ABElement alloc] initWithValue:object];
    lastElelemnt.nextElement = newElement;
    newElement.previousElement = lastElelemnt;
    self.rootElement.previousElement = newElement;
}

- (void)dealloc{
    self.rootElement.previousElement = nil;
    self.rootElement.nextElement = nil;
}

@end

@implementation ABElement

- (instancetype)initWithValue:(id)value{
    if(self = [super init]){
        _value = value;
    }
    
    return self;
}

@end