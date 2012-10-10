//
//  SPViewController.m
//  StoreProductTest
//
//  Created by Jiyeon Seo on 12. 10. 8..
//  Copyright (c) 2012년 Jiyeon Seo. All rights reserved.
//

#import "SPViewController.h"


@interface SPViewController ()

@end

@implementation SPViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goToStore:(id)sender {
    NSLog(@"pushed");
    SKStoreProductViewController *storeViewController =[[SKStoreProductViewController alloc] init];

    storeViewController.delegate = self;

    NSDictionary *parameters =@{SKStoreProductParameterITunesItemIdentifier:[NSNumber numberWithInteger:364709193]};
    // iBook = 364709193

    [storeViewController loadProductWithParameters:parameters
                                   completionBlock:^(BOOL result, NSError *error) {
                                       if (result){
                                           NSLog(@"still good");
                                           [self presentViewController:storeViewController
                                                            animated:YES
                                                            completion:nil];
                                       }else {
                                           NSLog(@"asd");
                                           [[[UIAlertView alloc] initWithTitle:@"Uh oh!" message:@"There was a problem displaying the appStore" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil] show];
                                       }
                                   }];

}
#pragma mark -
#pragma mark SKStoreProductViewControllerDelegate

-(void)productViewControllerDidFinish:(SKStoreProductViewController *)viewController
{
    [viewController dismissViewControllerAnimated:YES completion:nil];
}
@end
