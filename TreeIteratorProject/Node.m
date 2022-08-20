//
//  Node.m
//  TreeIteratorProject
//
//  Created by Glenn on 8/20/22.
//

#import "Node.h"

@implementation Node

- (instancetype) initWithValue: (NSInteger) value
{
    if( self = [super init] ) {
        self.value = value;
        self.left = nil;
        self.right = nil;
    }
    return self;
}

- (NSString *) description
{
    NSString * leftValue = ( self.left == nil )
        ? @"nil"
        : [NSString stringWithFormat: @"%ld", self.left.value];
    
    NSString * rightValue = ( self.right == nil )
        ? @"nil"
        : [NSString stringWithFormat: @"%ld", self.right.value];
    
    return [NSString stringWithFormat: @"%ld: left=%@, right=%@",
            self.value, leftValue, rightValue];
}

+ (NSString *) stringForNode: (nullable Node *) node
{
    NSString * result = ( node == nil ) ? @"nil" : [node description];
    
    return result;
}

@end

