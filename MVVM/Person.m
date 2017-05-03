//
//  Person.m
//  MVVM
//
//  Created by Roman Subrichak on 5/2/17.
//  Copyright © 2017 Roman Subrychak. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype) initWithSalutation: (NSString *)salutation firstName: (NSString* )firstName lastName:(NSString *)lastName birthdate: (NSDate *)birthdate {
	self = [super init];
	if (self) {
		_salutation = salutation;
		_firstName = firstName;
		_lastName = lastName;
		_birhdate = birthdate;
	}
	return self;
}
@end
