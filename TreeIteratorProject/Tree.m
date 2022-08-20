//
//  Tree.m
//  TreeIteratorProject
//
//  Created by Glenn on 8/20/22.
//

#import "Tree.h"

@interface Tree ()

- (instancetype) initWithRoot: (Node *) root;
- (BOOL) addNode: (Node *) node;
- (Node *) findMatchOrParentForValue: (NSInteger) value;

@end

@implementation Tree

#pragma mark - Initialize

- (instancetype) initWithRoot: (Node *) root
{
    if( self = [self init] ) {
        self.root = root;
    }
    return self;
}
- (instancetype) initWithValue: (NSInteger) value
{
    Node * node = [[Node alloc] initWithValue: value];
    return [self initWithRoot: node];
}
- (instancetype) initWithValues: (NSArray<NSNumber *> *) values
{
    if( self = [self init] ) {
        [self addValues: values];
    }
    return self;
}

#pragma mark - Add

- (void) addValues: (NSArray<NSNumber *> *) values
{
    for( NSNumber * value in values ) {
        [self addValue: [value intValue]];
    }
}
- (BOOL) addValue: (NSInteger) value
{
    Node * node = [[Node alloc] initWithValue: value];
    BOOL result = [self addNode: node];
    return result;
}
- (BOOL) addNode: (Node *) node
{
    if( self.root == nil ) {
        self.root = node;
        return YES;
    }
    
    Node * parent = [self findMatchOrParentForValue: node.value];
    if( parent.value == node.value ) {
        return NO;
    }
    
    if( parent.value > node.value ) {
        parent.left = node;
    }
    else {
        parent.right = node;
    }
    
    return YES;
}

#pragma mark - Find

- (nullable Node *) findNodeWithValue: (NSInteger) value
{
    Node * result = nil;
    Node * node = [self findMatchOrParentForValue: value];

    if( node != nil  &&  node.value == value ) {
        result = node;
    }
    return result;
}
- (nullable Node *) findMatchOrParentForValue: (NSInteger) value
{
    if( self.root == nil ) {
        return nil;
    }
    
    Node * result = self.root;
    while( true ) {
        if( result.value == value ) {
            break;
        }
        if( result.value > value ) {
            if( result.left == nil ) {
                break;
            }
            result = result.left;
        }
        else {
            // result.value < value
            if( result.right == nil ) {
                break;
            }
            result = result.right;
        }
    }
    return result;
}

- (NSString *) stringFromNodeWithValue: (NSInteger) value
{
    Node * node = [self findNodeWithValue: value];
    
    NSString * result = ( node == nil )
        ? [NSString stringWithFormat: @"Node not found for value %ld", value]
        : [node description];
    
    return result;
}

#pragma mark - Check

- (BOOL) isEmpty
{
    return self.root == nil;
}

@end
