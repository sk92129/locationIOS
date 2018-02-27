//
//  ViewController.h
//  SImpleLocation
//
//  Created by Sean Kang on 2/26/18.
//  Copyright © 2018 ceg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *latitudeValue;
@property (weak, nonatomic) IBOutlet UILabel *longitudeValue;


@property (weak, nonatomic) IBOutlet UILabel *addressValue;

- (IBAction)GetLocationClicked:(id)sender;
- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation;
@end

