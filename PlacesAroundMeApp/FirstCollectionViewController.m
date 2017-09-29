//
//  FirstCollectionViewController.m
//  PlacesAroundMeApp
//
//  Created by Student016 on 04/09/17.
//  Copyright (c) 2017 felix. All rights reserved.
//

#import "FirstCollectionViewController.h"
#import "CollectionViewCell.h"
#import "collection.h"
#import "SecondTableViewController.h"



@interface FirstCollectionViewController ()

@end

@implementation FirstCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
    
    _array=[[NSMutableArray alloc]init];
    
    
        collection *c1=[[collection alloc]init];
    c1.name=@"Bank";
    c1.imageview1=@"bank.jpeg";
    
    collection *c2=[[collection alloc]init];
    c2.name=@"ATM";
    c2.imageview1=@"atm.jpeg";
    
    collection *c3=[[collection alloc]init];
    c3.name=@"Hospital";
    c3.imageview1=@"Hospital.png";
    
    collection *c4=[[collection alloc]init];
    c4.name=@"College";
    c4.imageview1=@"college.jpeg";
    
    collection *c5=[[collection alloc]init];
    c5.name=@"School";
    c5.imageview1=@"school.jpg";
    
    collection *c6=[[collection alloc]init];
    c6.name=@"Petrol Pump";
    c6.imageview1=@"petrol pump.jpeg";
    
    collection *c7=[[collection alloc]init];
    c7.name=@"Police";
    c7.imageview1=@"police.jpg";
    
    collection *c8=[[collection alloc]init];
    c8.name=@"Restaurants";
    c8.imageview1=@"restaurant.jpeg";
    
    
    
     [_array addObject:c1];
     [_array addObject:c2];
     [_array addObject:c3];
     [_array addObject:c4];
     [_array addObject:c5];
     [_array addObject:c6];
     [_array addObject:c7];
     [_array addObject:c8];
                    
    
    [self.collectionView registerNib:[UINib nibWithNibName:@"CollectionViewCell" bundle:nil] forCellWithReuseIdentifier:reuseIdentifier];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
//#warning Incomplete method implementation -- Return the number of sections
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//#warning Incomplete method implementation -- Return the number of items in the section
    return _array.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    
    collection *temp=[_array objectAtIndex:indexPath.row];
    cell.imageview.image=[UIImage imageNamed:temp.imageview1];
    cell.label.text=temp.name;
    
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
      CollectionViewCell *c=[[CollectionViewCell alloc]init];
    
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    SecondTableViewController *secondtvc=[story instantiateViewControllerWithIdentifier:@"stvc"];
    
    switch (indexPath.row) {
        case 0:
            _str=[NSString stringWithFormat:@"https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=18.5074,73.8077&rankby=distance&types=%@&key=AIzaSyCNGXB-B8BcxqPk4ZiTroFxtADfW2BFiuU",c.label];
        
            secondtvc.tempstr=_str;
            
            break;
            
        case 1:
            _str=[NSString stringWithFormat:@"https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=18.5074,73.8077&rankby=distance&types=%@&key=AIzaSyCNGXB-B8BcxqPk4ZiTroFxtADfW2BFiuU",c.label];
            secondtvc.tempstr=_str;
            
            
        case 2:
            _str=[NSString stringWithFormat:@"https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=18.5074,73.8077&rankby=distance&types=%@&key=AIzaSyCNGXB-B8BcxqPk4ZiTroFxtADfW2BFiuU",c.label];
            secondtvc.tempstr=_str;
            
        case 3:
            _str=[NSString stringWithFormat:@"https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=18.5074,73.8077&rankby=distance&types=%@&key=AIzaSyCNGXB-B8BcxqPk4ZiTroFxtADfW2BFiuU",c.label];
            secondtvc.tempstr=_str;
            
            
        case 4:
            _str=[NSString stringWithFormat:@"https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=18.5074,73.8077&rankby=distance&types=%@&key=AIzaSyCNGXB-B8BcxqPk4ZiTroFxtADfW2BFiuU",c.label];
            secondtvc.tempstr=_str;
            
            
        case 5:
            _str=[NSString stringWithFormat:@"https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=18.5074,73.8077&rankby=distance&types=%@&key=AIzaSyCNGXB-B8BcxqPk4ZiTroFxtADfW2BFiuU",c.label];
            secondtvc.tempstr=_str;
        case 6:
            _str=[NSString stringWithFormat:@"https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=18.5074,73.8077&rankby=distance&types=%@&key=AIzaSyCNGXB-B8BcxqPk4ZiTroFxtADfW2BFiuU",c.label];
            secondtvc.tempstr=_str;
            
        case 7:
            _str=[NSString stringWithFormat:@"https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=18.5074,73.8077&rankby=distance&types=%@&key=AIzaSyCNGXB-B8BcxqPk4ZiTroFxtADfW2BFiuU",c.label];
            secondtvc.tempstr=_str;
            
        case 8:
            _str=[NSString stringWithFormat:@"https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=18.5074,73.8077&rankby=distance&types=%@&key=AIzaSyCNGXB-B8BcxqPk4ZiTroFxtADfW2BFiuU",c.label];
            secondtvc.tempstr=_str;
        default:
            break;
    }
    
    NSLog(@"data is %d",indexPath.row);
    
    [self.navigationController pushViewController:secondtvc animated:YES];
    
    
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
