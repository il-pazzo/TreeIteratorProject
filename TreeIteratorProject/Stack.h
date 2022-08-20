//
//  Stack.h
//  TreeIteratorProject
//
//  Created by Glenn on 8/20/22.
//

#import <Foundation/Foundation.h>
#import "Node.h"

NS_ASSUME_NONNULL_BEGIN

@interface Stack : NSObject

@property NSMutableArray<Node *> * stack;

- (void) push: (Node *) node;
- (nullable Node *) pop;
- (nullable Node *) peek;

- (void) dump;

@end

NS_ASSUME_NONNULL_END
