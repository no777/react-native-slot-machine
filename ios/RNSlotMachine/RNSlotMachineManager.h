//
//  RNSlotMachine.h
//  RNSlotMachine
//
//  Created by no777 on 16/9/18.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "ZCSlotMachine.h"

#import "RCTViewManager.h"

#import <Foundation/Foundation.h>

@interface RNSlotMachineManager : RCTViewManager <ZCSlotMachineDelegate, ZCSlotMachineDataSource>

@property (nonatomic,strong) NSArray * slotIcons;
@property (nonatomic,strong) ZCSlotMachine * slotMachine ;


@end
