//
//  FrontPageViewController.m
//  TheFighterTrainingSet
//
//  Created by Matt Brax on 5/6/14.
//  Copyright (c) 2014 MattBrax. All rights reserved.
//

#import "FrontPageViewController.h"


@interface FrontPageViewController () <UITableViewDataSource, UITableViewDelegate>


@property (strong, nonatomic) IBOutlet UITableView *myTableView;
@property (strong, nonatomic) IBOutlet UIImageView *myImage;
@property (strong, nonatomic) NSArray *stagesArray;
@property (strong, nonatomic) IBOutlet UILabel *stagesLabel;


@end

@implementation FrontPageViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    self.stagesArray = @[@"Technique",
                         @"Combination Training",
                         @"Workouts",
                         @"Situational Analysis/ Find a Gym"];
}

#pragma mark - table view methods

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.stagesArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"StageCellReuseID"];
    cell.textLabel.text = self.stagesArray[indexPath.row];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //    NSString *selectedSuggestionFoodItem = self.stagesArray[indexPath.row];
    //
    //    [self suggestionFoodSearch:selectedSuggestionFoodItem];
}


@end
