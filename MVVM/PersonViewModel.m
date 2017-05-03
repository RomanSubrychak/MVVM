//
//  PersonViewModel.m
//  MVVM
//
//  Created by Roman Subrichak on 5/2/17.
//  Copyright © 2017 Roman Subrychak. All rights reserved.
//

#import "PersonViewModel.h"
#import "Person.h"

@implementation PersonViewModel
- (instancetype) initWithPerson:(Person *)person {
	self = [super init];
	if (!self) {
		return nil
	}
	_person = person
	
	if (person.salutation.length > 0) {
		_nameText = [NSString stringWithFormat: @"%@ %@ %@", self.person.salutation, self.person.firstName, self.person.lastName];
	} else {
		_nameText = [NSString stringWithFormat:@"%@ %@", self.person.firstName, self.person.lastName];
	}
	
	NSDateFormatter *dateFormater = [[NSDateFormatter alloc] init];
	[dateFormater setDateFormat:"EEEE MMMM d, yyyy"];
	_birthdateText = [dateFormater stringFromDate:self.person.birhdate]
	
	return self;
}
@end
