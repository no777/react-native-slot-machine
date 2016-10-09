//
//  RNSlotMachineView.h
//  RNSlotMachine
//
//  Created by mac on 16/10/8.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZCSlotMachine.h"
#import "RCTComponent.h"
#import "RCTView.h"

@interface RNSlotMachineView : RCTView <ZCSlotMachineDelegate, ZCSlotMachineDataSource>
@property (nonatomic,strong) NSArray * slotIcons;
@property (nonatomic,strong) ZCSlotMachine * slotMachine ;
@property (nonatomic) NSInteger slotWidth;
@property (nonatomic) NSInteger slotHeight;

@property (nonatomic, copy) RCTBubblingEventBlock onStop;
@property (nonatomic, copy) RCTBubblingEventBlock onStart;

-(void) start:(NSArray * ) result;
@end
