//
//  RNSlotMachine.h
//  RNSlotMachine
//
//  Created by no777 on 16/9/18.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "ZCSlotMachine.h"

#import "RCTViewManager.h"

#import "RNSlotMachineView.h"

#import <Foundation/Foundation.h>

@interface RNSlotMachineViewManager : RCTViewManager 

@property (nonatomic,strong) RNSlotMachineView * slotMachineView ;

@end
