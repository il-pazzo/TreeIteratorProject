//
//  TreeIterator.m
//  TreeIteratorProject
//
//  Created by Glenn on 8/20/22.
//

#import "TreeIterator.h"
#import "Stack.h"

@interface TreeIterator ()

- (void) pushBranchFrom: (Node *) node;
- (void) push: (Node *) node;
- (Node *) pop;
- (Node *) topOfStack;

@end

@implementation TreeIterator

- (instancetype) initWithNode: (Node *) node
{
  if( self = [super init] ) {
    self.stack = [[Stack alloc] init];
    [self pushBranchFrom: node];
  }
  return self;
}
- (BOOL) hasNext
{
    return ( [self.stack peek] != nil );
}
- (NSInteger) next
{
    if( self.topOfStack == nil ) {
      // nothing to show; called in error
      return NSNotFound;
    }

    Node * currentNode = [self pop];
    if( currentNode.right != nil ) {
      [self pushBranchFrom: currentNode.right];
    }

    return currentNode.value;
}

- (void) pushBranchFrom: (Node *) node
{
    Node * workNode = node;
    while( workNode != nil ) {
      [self.stack push: workNode];
      workNode = workNode.left;
    }
}
- (void) push: (Node *) node
{
    [self.stack push: node];
}
- (Node *) pop
{
    return [self.stack pop];
}
- (Node *) topOfStack
{
    return [self.stack peek];
}

@end
