//
//  main.m
//  TreeIteratorProject
//
//  Created by Glenn on 8/20/22.
//
//  Create iterator to print b-tree in sorted order
//
//        10
//     5      15
//   1   7  12  18

#import <Foundation/Foundation.h>
#import "Tree.h"
#import "Stack.h"
#import "Node.h"
#import "TreeIterator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Tree * tree = [[Tree alloc] init];
        NSArray<NSNumber *> * initialValues = @[ @10, @5, @1, @7, @15, @12, @18 ];
        
        [tree addValues: initialValues];
        
//        NSLog( @"%@", [tree stringForNodeWithValue: 10] );
//        NSLog( @"%@", [tree stringForNodeWithValue: 5] );
//        NSLog( @"%@", [tree stringForNodeWithValue: 1] );
//        NSLog( @"%@", [tree stringForNodeWithValue: 7] );
//        NSLog( @"%@", [tree stringForNodeWithValue: 15] );
//        NSLog( @"%@", [tree stringForNodeWithValue: 12] );
//        NSLog( @"%@", [tree stringForNodeWithValue: 18] );
//        NSLog( @"" );
        
//        Stack * stack = [[Stack alloc] init];
//        [stack push: [[Node alloc] initWithValue: 1]];
//        [stack push: [[Node alloc] initWithValue: 2]];
//        [stack push: [[Node alloc] initWithValue: 3]];
//        [stack dump];
//        NSLog( @"" );
//
//        Node * node = [stack pop];
//        NSLog( @"Stack popped: %@", [Node stringForNode: node] );
//        [stack dump];
//        NSLog( @"" );
        
        NSLog( @"Tree constructed from: %@", [initialValues description] );
        NSLog( @"" );
        NSLog( @"Values in sorted sequence:" );
        TreeIterator * iterator = [[TreeIterator alloc] initWithNode: [tree root] ];
        while( [iterator hasNext] ) {
            NSLog( @"%ld", [iterator next] );
        }
    }
    return 0;
}
