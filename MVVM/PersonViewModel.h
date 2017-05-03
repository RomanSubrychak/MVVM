//
//  PersonViewModel.h
//  MVVM
//
//  Created by Roman Subrichak on 5/2/17.
//  Copyright © 2017 Roman Subrychak. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface PersonViewModel : NSObject

- (instancetype) initWithPerson: (Person *) person;

@property (nonatomic, readonly) Person *person;

@property (nonatomic, readonly) NSString* nameText;
@property (nonatomic, readonly) NSString* birthdateText;

@end
