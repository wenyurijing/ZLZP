//
//  FirstViewController.m
//  ZLZP
//
//  Created by tony J on 13-2-18.
//  Copyright (c) 2013年 曲超杰. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        self.FirstArr = [NSMutableArray array];
        [self.FirstArr retain];
        self.SecArr = [NSMutableArray array];
        [self.SecArr retain];
        self.dic = [NSMutableDictionary dictionary];
        [self.dic retain];
        self.EndArr = [NSMutableArray array];
        [self.EndArr retain];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    self.SecArr = [NSMutableArray arrayWithObjects:@"2",@"2",@"2",@"2",@"2",@"2", nil];
    self.FirstArr = [NSMutableArray arrayWithObjects:@"1",@"1", nil];
    
    self.dic = [NSMutableDictionary dictionaryWithObjectsAndKeys:self.SecArr,@"选择职位搜索条件 ",self.FirstArr,@"我的历史搜索", nil];
    self.EndArr = [NSMutableArray arrayWithArray:[self.dic allKeys]];
    
    self.navigationItem.title = @"快速搜索";
    
    UIBarButtonItem *leftbar = [[UIBarButtonItem alloc] initWithTitle:@"高级搜索"
                                                                style:(UIBarButtonItemStylePlain)
                                                               target:self
                                                               action:@selector(changeCell:)];
    
    
    self.navigationItem.leftBarButtonItem = leftbar;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)changeCell:(UIBarButtonItem *)aBar
{

    
    static int x = 0;
    NSMutableArray *arr = nil;
    arr = self.SecArr;
    switch (x<2) {
        case 0:
            for (int i = 0; i<2; i++)
            {
                NSArray *arr = [NSArray arrayWithObjects:@"1",@"1", nil];
                
                [self.SecArr addObject:[arr objectAtIndex:i]];
                
            }
            [self.tableView reloadData];
            
            self.navigationItem.title = @"高级搜索";
            break;
            case 1:
            self.SecArr = arr;
            
            self.navigationItem.title = @"快速搜索";
            break;
            
        default:
            break;
    }
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    NSLog(@"%d",self.EndArr.count);

    return self.dic.count ;
    NSLog(@"%d",self.EndArr.count);

    
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSLog(@"%@",[self.EndArr objectAtIndex:section]);
    return [self.EndArr objectAtIndex:section];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
//    return self.FirstArr.count;
    NSLog(@"%d",[[self.dic objectForKey:[self.EndArr objectAtIndex:section]] count]);
    return [[self.dic objectForKey:[self.EndArr objectAtIndex:section]] count];
    NSLog(@"%d",[[self.dic objectForKey:[self.EndArr objectAtIndex:section]] count]);
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) 
                                      reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = [[self.dic objectForKey:[self.EndArr objectAtIndex:indexPath.section]] objectAtIndex:indexPath.row];
//    cell.contentView.backgroundColor = [UIColor redColor];
//    cell.backgroundColor = [UIColor clearColor];
    NSLog(@"%@",[self.dic objectForKey:[self.EndArr objectAtIndex:indexPath.section]]);

    // Configure the cell...
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
     */
}

@end
