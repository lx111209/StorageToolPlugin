//
//  StorageToolPlugin.m
//  HelloCordova
//
//  Created by macbook Pro on 2018/5/30.
//

#import "StorageToolPlugin.h"

@implementation StorageToolPlugin

- (void)getValueMethod:(CDVInvokedUrlCommand*)command

{
    
    NSLog(@"oc getValueMethod");
    
    CDVPluginResult* pluginResult = nil;
    
    NSString* echo = [command.arguments objectAtIndex:0];
    
    NSLog(@"参数:%@",echo);
    
    if (echo != nil && [echo length] > 0) {
        
        NSString * value = [[NSUserDefaults standardUserDefaults] objectForKey:echo];
        
        NSLog(@"value:%@",value);
        
        if (value) {
            
            NSLog(@"value:%@ 传递到ts ",value);
            
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:value];
            
        }else{
            
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"没有对应的值"];
            
        }
        
    } else {
        
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"参数为空，取值失败"];
        
    }
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    
}

- (void)setValueMethod:(CDVInvokedUrlCommand*)command

{
    
    CDVPluginResult* pluginResult = nil;
    
    NSDictionary * ParaterDic = [command.arguments objectAtIndex:0];
    
    NSLog(@"dic:%@",ParaterDic);
    
    if (![ParaterDic isKindOfClass:[NSNull class]] && ParaterDic ) {
        
        NSArray * arrValues = [ParaterDic allValues];
        
        NSString * key, * value;
        
        for (int i=0; i < 2; i++)
             
        {
            
            if (i==0) {
                
                key = arrValues[0];
                
            }
            
            if (i==1) {
                
                value = arrValues[1];
                
            }
            
        }
             
             NSLog(@"开始保存 key :%@ value:%@",key,value);
             
             [[NSUserDefaults standardUserDefaults] setValue:value forKey:key];
             
             pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"保存成功"];
             
             } else {
                 
                 pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"参数为空  保存失败！！！"];
                 
             }
             
             [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
             
             }

@end
