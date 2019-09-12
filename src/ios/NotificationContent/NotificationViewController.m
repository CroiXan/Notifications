//
//  NotificationViewController.m
//  NotificationContent
//
//  Created by System Administrator on 9/12/19.
//  Copyright © 2019 Entel Outsystems. All rights reserved.
//

#import "NotificationViewController.h"
#import <UserNotifications/UserNotifications.h>
#import <UserNotificationsUI/UserNotificationsUI.h>

@interface NotificationViewController () <UNNotificationContentExtension>

@property IBOutlet UILabel *title;
@property IBOutlet UILabel *body;
@property IBOutlet UIImageView *image;


@end

@implementation NotificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any required interface initialization here.
}

- (void)didReceiveNotification:(UNNotification *)notification {
    self.title.text = notification.request.content.title;
    self.body.text = notification.request.content.body;
}

@end
