//
//  TreeIterator.h
//  TreeIteratorProject
//
//  Created by Glenn on 8/20/22.
//

#import <Foundation/Foundation.h>
#import "Node.h"
#import "Stack.h"

NS_ASSUME_NONNULL_BEGIN

@interface TreeIterator : NSObject

@property Stack * stack;

- (instancetype) initWithNode: (Node *) node;
- (BOOL) hasNext;
- (NSInteger) next;

@end

NS_ASSUME_NONNULL_END
