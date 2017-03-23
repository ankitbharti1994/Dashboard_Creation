//
//  ViewController.m
//  List Of Items
//
//  Created by ankit bharti on 23/03/17.
//  Copyright © 2017 KaHa. All rights reserved.
//

#import "PrefixHeader.pch"

#define COLLECTION_VIEW_CELL_IDENTIFIER @"BannerCell"
#define TABLE_VIEW_CELL_IDENTIFIER      @"ItemCell"

@interface ViewController ()
{
    NSMutableArray *bannerItem,*tableViewData,*movieArr,*classifiedsArr,*localDealsArr,*attractionArr,*activityArr;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    bannerItem=[[NSMutableArray alloc]init];
    
    [bannerItem addObject:[[DashboardBannerItem alloc] initWithTitle:@"First" image:@"first" pageIndex:0]];
    [bannerItem addObject:[[DashboardBannerItem alloc] initWithTitle:@"Second" image:@"second" pageIndex:1]];
    [bannerItem addObject:[[DashboardBannerItem alloc] initWithTitle:@"Third" image:@"third" pageIndex:2]];
    [bannerItem addObject:[[DashboardBannerItem alloc] initWithTitle:@"Fourth" image:@"fourth" pageIndex:3]];
    [bannerItem addObject:[[DashboardBannerItem alloc] initWithTitle:@"Fifth" image:@"fifth" pageIndex:4]];
    [self populateDataOnTableView];
}


-(void)populateDataOnTableView {
    tableViewData=[[NSMutableArray alloc] init];
    movieArr=[[NSMutableArray alloc] init];
    classifiedsArr=[[NSMutableArray alloc] init];
    [movieArr addObject:[[MainItem alloc] initWithTitle:@"First" image:@"first"]];
    [movieArr addObject:[[MainItem alloc] initWithTitle:@"Second" image:@"second"]];
    [movieArr addObject:[[MainItem alloc] initWithTitle:@"Third" image:@"third"]];
    [tableViewData addObject:movieArr];
    
    // CLASSIFIEDS
    [classifiedsArr addObject:[[MainItem alloc] initWithTitle:@"Fourth" image:@"fourth"]];
    [classifiedsArr addObject:[[MainItem alloc] initWithTitle:@"Fifth" image:@"fifth"]];
    [classifiedsArr addObject:[[MainItem alloc] initWithTitle:@"First" image:@"first"]];
    [classifiedsArr addObject:[[MainItem alloc] initWithTitle:@"Second" image:@"second"]];
    [classifiedsArr addObject:[[MainItem alloc] initWithTitle:@"Third" image:@"third"]];
    [tableViewData addObject:classifiedsArr];

    [self.tableView reloadData];
}


#pragma mark <CollectionViewDataSource> method

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return bannerItem.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    DashboardBannerCell *cell=(DashboardBannerCell *)[collectionView dequeueReusableCellWithReuseIdentifier:COLLECTION_VIEW_CELL_IDENTIFIER forIndexPath:indexPath];
    [cell configureCell:[bannerItem objectAtIndex:indexPath.row]];
    [cell layoutIfNeeded];
    return cell;
}

#pragma mark <UICollectionViewDelegate> method

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(collectionView.frame.size.width, collectionView.frame.size.height);
}

#pragma mark <UITableViewDataSource> method

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return tableViewData.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ItemViewCell *cell=(ItemViewCell *)[tableView dequeueReusableCellWithIdentifier:TABLE_VIEW_CELL_IDENTIFIER forIndexPath:indexPath];
    [cell configureCell:[tableViewData objectAtIndex:indexPath.row]];
    [cell layoutIfNeeded];
    return cell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 180.0;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 40;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    ItemHeaderViewCell *headerView=(ItemHeaderViewCell *)[tableView dequeueReusableHeaderFooterViewWithIdentifier:@"HeaderView"];
    if (headerView==nil) {
        headerView=[[[NSBundle mainBundle] loadNibNamed:@"ItemHeaderViewCell" owner:self options:nil] firstObject];
        headerView.label.text=@"Movies";
    }
    UIView *view=[[UIView alloc] initWithFrame:headerView.frame];
    [view addSubview:headerView];
    return view;
}

@end
