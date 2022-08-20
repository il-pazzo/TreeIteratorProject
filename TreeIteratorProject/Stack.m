//
//  Stack.m
//  TreeIteratorProject
//
//  Created by Glenn on 8/20/22.
//

#import "Stack.h"

@implementation Stack

- (instancetype) init
{
    if( self = [super init] ) {
        self.stack = [[NSMutableArray alloc] init];
    }
    return self;
}
- (void) push: (Node *) node
{
    if( node != nil ) {
        [self.stack addObject: node];
    }
}
- (nullable Node *) pop
{
    Node * result = [self peek];
    if( result != nil ) {
        [self.stack removeLastObject];
    }
    return result;
}
- (nullable Node *) peek
{
    Node * result = nil;
    if( self.stack.count > 0 ) {
        result = self.stack.lastObject;
    }
    return result;
}

- (void) dump
{
    void (^stackDumper)( Node *, NSUInteger, BOOL * );
    
    stackDumper = ^( Node * _Nonnull node, NSUInteger idx, BOOL * _Nonnull stop ) {
        NSLog( @"%@", [node description] );
    };
    
    [self.stack enumerateObjectsWithOptions: NSEnumerationReverse
                                 usingBlock: stackDumper];
}

@end
