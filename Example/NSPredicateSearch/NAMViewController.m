//
//  NAMViewController.m
//  NSPredicateSearch
//
//  Created by Narlei A Moreira on 06/02/2017.
//  Copyright (c) 2017 Narlei A Moreira. All rights reserved.
//

#import "NAMViewController.h"
#import "NAMObject.h"

#import "NSPredicateSearch/NSPredicate+Search.h"

@interface NAMViewController () <UISearchBarDelegate>

@property (strong, nonatomic) NSMutableArray *arrayData;
@property (strong, nonatomic) NSMutableArray *arrayAllData;

@end

@implementation NAMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.arrayAllData = [NSMutableArray new];
    
    [self.arrayAllData addObject:[[NAMObject alloc] initWithName:@"André" identifier:@"0001" address:@"Street 1"]];
    [self.arrayAllData addObject:[[NAMObject alloc] initWithName:@"Narlei" identifier:@"0002" address:@"Street 2"]];
    [self.arrayAllData addObject:[[NAMObject alloc] initWithName:@"Nathan" identifier:@"0003" address:@"Street 3"]];
    [self.arrayAllData addObject:[[NAMObject alloc] initWithName:@"Mathew" identifier:@"0004" address:@"Street 4"]];
    [self.arrayAllData addObject:[[NAMObject alloc] initWithName:@"Marcos Alfred" identifier:@"0005" address:@"Street 5"]];
    
    self.arrayData = [[NSMutableArray alloc] initWithArray:self.arrayAllData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma TableView Methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    NAMObject *object = [self.arrayData objectAtIndex:indexPath.row];
    cell.textLabel.text = object.name;
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.arrayData.count;
}

#pragma mark - Search Bar Delegate

-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
    
    if (searchText.length == 0) {
        self.arrayData = [[NSMutableArray alloc] initWithArray:self.arrayAllData];
        [self.tableView reloadData];
        return;
    }
    
    NSPredicate *predicate = [NSPredicate predicateWithSearch:searchText searchTerm:@"searchTerms"];
    self.arrayData = [[NSMutableArray alloc] initWithArray:[self.arrayAllData filteredArrayUsingPredicate:predicate]];
    
    [self.tableView reloadData];
    
}


@end
