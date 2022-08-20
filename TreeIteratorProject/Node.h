//
//  Node.h
//  TreeIteratorProject
//
//  Created by Glenn on 8/20/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Node : NSObject

@property NSInteger value;
@property (nullable) Node * left;
@property (nullable) Node * right;

- (instancetype) initWithValue: (NSInteger) value;
- (NSString *) description;
+ (NSString *) stringForNode: (nullable Node *) node;

@end

NS_ASSUME_NONNULL_END
