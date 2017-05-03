//
//  ViewController.m
//  MVVM
//
//  Created by Roman Subrichak on 5/2/17.
//  Copyright © 2017 Roman Subrychak. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "PersonViewModel.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *birthdateLabel;

@property (nonatomic) Person *model;
@property (nonatomic) PersonViewModel *viewModel;
@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	_model = [[Person alloc] initWithSalutation: @"Hello" firstName: @"John" lastName: @"Appleseed" birthdate:[NSDate new]];
	_viewModel = [[PersonViewModel alloc] initWithPerson:_model];
	
	self.nameLabel.text = self.viewModel.nameText;
	self.birthdateLabel.text = self.viewModel.birthdateText;
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
