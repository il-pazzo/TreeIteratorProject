//
//  Tree.h
//  TreeIteratorProject
//
//  Created by Glenn on 8/20/22.
//

#import <Foundation/Foundation.h>
#import "Node.h"

NS_ASSUME_NONNULL_BEGIN

@interface Tree : NSObject

@property (nullable) Node * root;

- (instancetype) initWithValue: (NSInteger) value;
- (instancetype) initWithValues: (NSArray<NSNumber *> *) values;
- (BOOL) addValue: (NSInteger) value;
- (void) addValues: (NSArray<NSNumber *> *) values;
- (BOOL) isEmpty;

- (nullable Node *) findNodeWithValue: (NSInteger) value;
- (NSString *) stringFromNodeWithValue: (NSInteger) value;

@end

NS_ASSUME_NONNULL_END
