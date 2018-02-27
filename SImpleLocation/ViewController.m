//
//  ViewController.m
//  SImpleLocation
//
//  Created by Sean Kang on 2/26/18.
//  Copyright © 2018 ceg. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    CLLocationManager *locationManager;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    locationManager = [[CLLocationManager alloc] init];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)GetLocationClicked:(id)sender {
    locationManager.delegate = self;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    
    [locationManager startUpdatingLocation];
    NSLog(@"clicked");

}

#pragma mark - CLLocationManagerDelegate

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"didFailWithError: %@", error);
    
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"didUpdateToLocation: %@", newLocation);
    CLLocation *currentLocation = newLocation;
    
    if (currentLocation != nil) {
        _longitudeValue.text = [NSString stringWithFormat:@"%.8f",
                               currentLocation.coordinate.longitude];
        _latitudeValue.text = [NSString stringWithFormat:@"%.8f",
                              currentLocation.coordinate.latitude];
    }
}


@end
