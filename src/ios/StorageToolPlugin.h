//
//  StorageToolPlugin.h
//  HelloCordova
//
//  Created by macbook Pro on 2018/5/30.
//

#import <Cordova/CDVPlugin.h>

@interface StorageToolPlugin : CDVPlugin

- (void)getValueMethod:(CDVInvokedUrlCommand*)command;

- (void)setValueMethod:(CDVInvokedUrlCommand*)command;

@end
