//
//  DJIAircraftAnnotation.h
//  FYP2
//
//  Created by CHEN Liqi on 2017/2/20.
//  Copyright © 2017年 CHEN Liqi. All rights reserved.
//

#import <MapKit/MapKit.h>
#import "DJIAircraftAnnotationView.h"

@interface DJIAircraftAnnotation : NSObject<MKAnnotation>
@property(nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property(nonatomic, weak) DJIAircraftAnnotationView* annotationView;
-(id) initWithCoordiante:(CLLocationCoordinate2D)coordinate;
-(void)setCoordinate:(CLLocationCoordinate2D)newCoordinate;
-(void) updateHeading:(float)heading;
@end
