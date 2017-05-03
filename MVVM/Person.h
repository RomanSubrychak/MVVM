//
//  Person.h
//  MVVM
//
//  Created by Roman Subrichak on 5/2/17.
//  Copyright © 2017 Roman Subrychak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

- (instancetype) initWithSalutation: (NSString *)salutation firstName: (NSString* )firstName lastName:(NSString *)lastName birthdate: (NSDate *)birthdate;

@property (nonatomic, readonly) NSString *salutation;
@property (nonatomic, readonly) NSString *firstName;
@property (nonatomic, readonly) NSString *lastName;
@property (nonatomic, readonly) NSDate *birhdate;


@end
