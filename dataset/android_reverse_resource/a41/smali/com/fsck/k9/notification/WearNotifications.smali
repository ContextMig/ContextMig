.class Lcom/fsck/k9/notification/WearNotifications;
.super Lcom/fsck/k9/notification/BaseNotifications;
.source "WearNotifications.java"


# direct methods
.method public constructor <init>(Lcom/fsck/k9/notification/NotificationController;Lcom/fsck/k9/notification/NotificationActionCreator;)V
    .locals 0
    .param p1, "controller"    # Lcom/fsck/k9/notification/NotificationController;
    .param p2, "actionCreator"    # Lcom/fsck/k9/notification/NotificationActionCreator;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/notification/BaseNotifications;-><init>(Lcom/fsck/k9/notification/NotificationController;Lcom/fsck/k9/notification/NotificationActionCreator;)V

    .line 23
    return-void
.end method

.method private addActions(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/fsck/k9/Account;Lcom/fsck/k9/notification/NotificationHolder;)V
    .locals 0
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .param p3, "holder"    # Lcom/fsck/k9/notification/NotificationHolder;

    .prologue
    .line 97
    invoke-direct {p0, p1, p3}, Lcom/fsck/k9/notification/WearNotifications;->addDeviceActions(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/NotificationHolder;)V

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/notification/WearNotifications;->addWearActions(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/fsck/k9/Account;Lcom/fsck/k9/notification/NotificationHolder;)V

    .line 99
    return-void
.end method

.method private addArchiveAction(Landroid/support/v4/app/NotificationCompat$WearableExtender;Lcom/fsck/k9/notification/NotificationHolder;)V
    .locals 8
    .param p1, "wearableExtender"    # Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .param p2, "holder"    # Lcom/fsck/k9/notification/NotificationHolder;

    .prologue
    .line 205
    const v2, 0x7f02002e

    .line 206
    .local v2, "icon":I
    iget-object v6, p0, Lcom/fsck/k9/notification/WearNotifications;->context:Landroid/content/Context;

    const v7, 0x7f0702d6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 208
    .local v5, "title":Ljava/lang/String;
    iget-object v6, p2, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    iget-object v3, v6, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 209
    .local v3, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    iget v4, p2, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    .line 210
    .local v4, "notificationId":I
    iget-object v6, p0, Lcom/fsck/k9/notification/WearNotifications;->actionCreator:Lcom/fsck/k9/notification/NotificationActionCreator;

    invoke-virtual {v6, v3, v4}, Lcom/fsck/k9/notification/NotificationActionCreator;->createArchiveMessagePendingIntent(Lcom/fsck/k9/activity/MessageReference;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 212
    .local v0, "action":Landroid/app/PendingIntent;
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    invoke-direct {v6, v2, v5, v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v1

    .line 213
    .local v1, "archiveAction":Landroid/support/v4/app/NotificationCompat$Action;
    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 214
    return-void
.end method

.method private addArchiveAllAction(Landroid/support/v4/app/NotificationCompat$WearableExtender;Lcom/fsck/k9/notification/NotificationData;)V
    .locals 9
    .param p1, "wearableExtender"    # Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .param p2, "notificationData"    # Lcom/fsck/k9/notification/NotificationData;

    .prologue
    .line 84
    const v3, 0x7f02002e

    .line 85
    .local v3, "icon":I
    iget-object v7, p0, Lcom/fsck/k9/notification/WearNotifications;->context:Landroid/content/Context;

    const v8, 0x7f0702d7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "title":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/fsck/k9/notification/NotificationData;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v0

    .line 88
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-virtual {p2}, Lcom/fsck/k9/notification/NotificationData;->getAllMessageReferences()Ljava/util/ArrayList;

    move-result-object v4

    .line 89
    .local v4, "messageReferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/activity/MessageReference;>;"
    invoke-static {v0}, Lcom/fsck/k9/notification/NotificationIds;->getNewMailSummaryNotificationId(Lcom/fsck/k9/Account;)I

    move-result v5

    .line 90
    .local v5, "notificationId":I
    iget-object v7, p0, Lcom/fsck/k9/notification/WearNotifications;->actionCreator:Lcom/fsck/k9/notification/NotificationActionCreator;

    invoke-virtual {v7, v0, v4, v5}, Lcom/fsck/k9/notification/NotificationActionCreator;->createArchiveAllPendingIntent(Lcom/fsck/k9/Account;Ljava/util/List;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 92
    .local v1, "action":Landroid/app/PendingIntent;
    new-instance v7, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    invoke-direct {v7, v3, v6, v1}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v2

    .line 93
    .local v2, "archiveAction":Landroid/support/v4/app/NotificationCompat$Action;
    invoke-virtual {p1, v2}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 94
    return-void
.end method

.method private addDeleteAction(Landroid/support/v4/app/NotificationCompat$WearableExtender;Lcom/fsck/k9/notification/NotificationHolder;)V
    .locals 8
    .param p1, "wearableExtender"    # Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .param p2, "holder"    # Lcom/fsck/k9/notification/NotificationHolder;

    .prologue
    .line 193
    const v2, 0x7f02003a

    .line 194
    .local v2, "icon":I
    iget-object v6, p0, Lcom/fsck/k9/notification/WearNotifications;->context:Landroid/content/Context;

    const v7, 0x7f0702d8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 196
    .local v5, "title":Ljava/lang/String;
    iget-object v6, p2, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    iget-object v3, v6, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 197
    .local v3, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    iget v4, p2, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    .line 198
    .local v4, "notificationId":I
    iget-object v6, p0, Lcom/fsck/k9/notification/WearNotifications;->actionCreator:Lcom/fsck/k9/notification/NotificationActionCreator;

    invoke-virtual {v6, v3, v4}, Lcom/fsck/k9/notification/NotificationActionCreator;->createDeleteMessagePendingIntent(Lcom/fsck/k9/activity/MessageReference;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 200
    .local v0, "action":Landroid/app/PendingIntent;
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    invoke-direct {v6, v2, v5, v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v1

    .line 201
    .local v1, "deleteAction":Landroid/support/v4/app/NotificationCompat$Action;
    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 202
    return-void
.end method

.method private addDeleteAllAction(Landroid/support/v4/app/NotificationCompat$WearableExtender;Lcom/fsck/k9/notification/NotificationData;)V
    .locals 9
    .param p1, "wearableExtender"    # Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .param p2, "notificationData"    # Lcom/fsck/k9/notification/NotificationData;

    .prologue
    .line 71
    const v3, 0x7f02003a

    .line 72
    .local v3, "icon":I
    iget-object v7, p0, Lcom/fsck/k9/notification/WearNotifications;->context:Landroid/content/Context;

    const v8, 0x7f0702d9

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, "title":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/fsck/k9/notification/NotificationData;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v0

    .line 75
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-virtual {p2}, Lcom/fsck/k9/notification/NotificationData;->getAllMessageReferences()Ljava/util/ArrayList;

    move-result-object v4

    .line 76
    .local v4, "messageReferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/activity/MessageReference;>;"
    invoke-static {v0}, Lcom/fsck/k9/notification/NotificationIds;->getNewMailSummaryNotificationId(Lcom/fsck/k9/Account;)I

    move-result v5

    .line 77
    .local v5, "notificationId":I
    iget-object v7, p0, Lcom/fsck/k9/notification/WearNotifications;->actionCreator:Lcom/fsck/k9/notification/NotificationActionCreator;

    invoke-virtual {v7, v0, v4, v5}, Lcom/fsck/k9/notification/NotificationActionCreator;->getDeleteAllPendingIntent(Lcom/fsck/k9/Account;Ljava/util/List;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 79
    .local v1, "action":Landroid/app/PendingIntent;
    new-instance v7, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    invoke-direct {v7, v3, v6, v1}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v2

    .line 80
    .local v2, "deleteAction":Landroid/support/v4/app/NotificationCompat$Action;
    invoke-virtual {p1, v2}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 81
    return-void
.end method

.method private addDeviceActions(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/NotificationHolder;)V
    .locals 0
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "holder"    # Lcom/fsck/k9/notification/NotificationHolder;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/notification/WearNotifications;->addDeviceReplyAction(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/NotificationHolder;)V

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/notification/WearNotifications;->addDeviceMarkAsReadAction(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/NotificationHolder;)V

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/notification/WearNotifications;->addDeviceDeleteAction(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/NotificationHolder;)V

    .line 105
    return-void
.end method

.method private addDeviceDeleteAction(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/NotificationHolder;)V
    .locals 8
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "holder"    # Lcom/fsck/k9/notification/NotificationHolder;

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/fsck/k9/notification/WearNotifications;->isDeleteActionEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 145
    :goto_0
    return-void

    .line 136
    :cond_0
    const v2, 0x7f02007f

    .line 137
    .local v2, "icon":I
    iget-object v6, p0, Lcom/fsck/k9/notification/WearNotifications;->context:Landroid/content/Context;

    const v7, 0x7f0702d8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "title":Ljava/lang/String;
    iget-object v1, p2, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 140
    .local v1, "content":Lcom/fsck/k9/notification/NotificationContent;
    iget v4, p2, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    .line 141
    .local v4, "notificationId":I
    iget-object v3, v1, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 142
    .local v3, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    iget-object v6, p0, Lcom/fsck/k9/notification/WearNotifications;->actionCreator:Lcom/fsck/k9/notification/NotificationActionCreator;

    invoke-virtual {v6, v3, v4}, Lcom/fsck/k9/notification/NotificationActionCreator;->createDeleteMessagePendingIntent(Lcom/fsck/k9/activity/MessageReference;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 144
    .local v0, "action":Landroid/app/PendingIntent;
    invoke-virtual {p1, v2, v5, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method private addDeviceMarkAsReadAction(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/NotificationHolder;)V
    .locals 8
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "holder"    # Lcom/fsck/k9/notification/NotificationHolder;

    .prologue
    .line 120
    const v2, 0x7f020080

    .line 121
    .local v2, "icon":I
    iget-object v6, p0, Lcom/fsck/k9/notification/WearNotifications;->context:Landroid/content/Context;

    const v7, 0x7f0702db

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, "title":Ljava/lang/String;
    iget-object v1, p2, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 124
    .local v1, "content":Lcom/fsck/k9/notification/NotificationContent;
    iget v4, p2, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    .line 125
    .local v4, "notificationId":I
    iget-object v3, v1, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 126
    .local v3, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    iget-object v6, p0, Lcom/fsck/k9/notification/WearNotifications;->actionCreator:Lcom/fsck/k9/notification/NotificationActionCreator;

    invoke-virtual {v6, v3, v4}, Lcom/fsck/k9/notification/NotificationActionCreator;->createMarkMessageAsReadPendingIntent(Lcom/fsck/k9/activity/MessageReference;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 128
    .local v0, "action":Landroid/app/PendingIntent;
    invoke-virtual {p1, v2, v5, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 129
    return-void
.end method

.method private addDeviceReplyAction(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/NotificationHolder;)V
    .locals 7
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "holder"    # Lcom/fsck/k9/notification/NotificationHolder;

    .prologue
    .line 108
    const v1, 0x7f020080

    .line 109
    .local v1, "icon":I
    iget-object v5, p0, Lcom/fsck/k9/notification/WearNotifications;->context:Landroid/content/Context;

    const v6, 0x7f0702dc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "title":Ljava/lang/String;
    iget-object v0, p2, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 112
    .local v0, "content":Lcom/fsck/k9/notification/NotificationContent;
    iget-object v2, v0, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 113
    .local v2, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    iget-object v5, p0, Lcom/fsck/k9/notification/WearNotifications;->actionCreator:Lcom/fsck/k9/notification/NotificationActionCreator;

    iget v6, p2, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    .line 114
    invoke-virtual {v5, v2, v6}, Lcom/fsck/k9/notification/NotificationActionCreator;->createReplyPendingIntent(Lcom/fsck/k9/activity/MessageReference;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 116
    .local v3, "replyToMessagePendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p1, v1, v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 117
    return-void
.end method

.method private addMarkAllAsReadAction(Landroid/support/v4/app/NotificationCompat$WearableExtender;Lcom/fsck/k9/notification/NotificationData;)V
    .locals 9
    .param p1, "wearableExtender"    # Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .param p2, "notificationData"    # Lcom/fsck/k9/notification/NotificationData;

    .prologue
    .line 58
    const v2, 0x7f020042

    .line 59
    .local v2, "icon":I
    iget-object v7, p0, Lcom/fsck/k9/notification/WearNotifications;->context:Landroid/content/Context;

    const v8, 0x7f0702da

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, "title":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/fsck/k9/notification/NotificationData;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v0

    .line 62
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-virtual {p2}, Lcom/fsck/k9/notification/NotificationData;->getAllMessageReferences()Ljava/util/ArrayList;

    move-result-object v4

    .line 63
    .local v4, "messageReferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/activity/MessageReference;>;"
    invoke-static {v0}, Lcom/fsck/k9/notification/NotificationIds;->getNewMailSummaryNotificationId(Lcom/fsck/k9/Account;)I

    move-result v5

    .line 64
    .local v5, "notificationId":I
    iget-object v7, p0, Lcom/fsck/k9/notification/WearNotifications;->actionCreator:Lcom/fsck/k9/notification/NotificationActionCreator;

    invoke-virtual {v7, v0, v4, v5}, Lcom/fsck/k9/notification/NotificationActionCreator;->getMarkAllAsReadPendingIntent(Lcom/fsck/k9/Account;Ljava/util/List;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 66
    .local v1, "action":Landroid/app/PendingIntent;
    new-instance v7, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    invoke-direct {v7, v2, v6, v1}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v3

    .line 67
    .local v3, "markAsReadAction":Landroid/support/v4/app/NotificationCompat$Action;
    invoke-virtual {p1, v3}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 68
    return-void
.end method

.method private addMarkAsReadAction(Landroid/support/v4/app/NotificationCompat$WearableExtender;Lcom/fsck/k9/notification/NotificationHolder;)V
    .locals 8
    .param p1, "wearableExtender"    # Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .param p2, "holder"    # Lcom/fsck/k9/notification/NotificationHolder;

    .prologue
    .line 181
    const v1, 0x7f020042

    .line 182
    .local v1, "icon":I
    iget-object v6, p0, Lcom/fsck/k9/notification/WearNotifications;->context:Landroid/content/Context;

    const v7, 0x7f0702db

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 184
    .local v5, "title":Ljava/lang/String;
    iget-object v6, p2, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    iget-object v3, v6, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 185
    .local v3, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    iget v4, p2, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    .line 186
    .local v4, "notificationId":I
    iget-object v6, p0, Lcom/fsck/k9/notification/WearNotifications;->actionCreator:Lcom/fsck/k9/notification/NotificationActionCreator;

    invoke-virtual {v6, v3, v4}, Lcom/fsck/k9/notification/NotificationActionCreator;->createMarkMessageAsReadPendingIntent(Lcom/fsck/k9/activity/MessageReference;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 188
    .local v0, "action":Landroid/app/PendingIntent;
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    invoke-direct {v6, v1, v5, v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v2

    .line 189
    .local v2, "markAsReadAction":Landroid/support/v4/app/NotificationCompat$Action;
    invoke-virtual {p1, v2}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 190
    return-void
.end method

.method private addMarkAsSpamAction(Landroid/support/v4/app/NotificationCompat$WearableExtender;Lcom/fsck/k9/notification/NotificationHolder;)V
    .locals 8
    .param p1, "wearableExtender"    # Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .param p2, "holder"    # Lcom/fsck/k9/notification/NotificationHolder;

    .prologue
    .line 217
    const v1, 0x7f020060

    .line 218
    .local v1, "icon":I
    iget-object v6, p0, Lcom/fsck/k9/notification/WearNotifications;->context:Landroid/content/Context;

    const v7, 0x7f0702dd

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, "title":Ljava/lang/String;
    iget-object v6, p2, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    iget-object v2, v6, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 221
    .local v2, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    iget v3, p2, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    .line 222
    .local v3, "notificationId":I
    iget-object v6, p0, Lcom/fsck/k9/notification/WearNotifications;->actionCreator:Lcom/fsck/k9/notification/NotificationActionCreator;

    invoke-virtual {v6, v2, v3}, Lcom/fsck/k9/notification/NotificationActionCreator;->createMarkMessageAsSpamPendingIntent(Lcom/fsck/k9/activity/MessageReference;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 224
    .local v0, "action":Landroid/app/PendingIntent;
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    invoke-direct {v6, v1, v5, v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v4

    .line 225
    .local v4, "spamAction":Landroid/support/v4/app/NotificationCompat$Action;
    invoke-virtual {p1, v4}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 226
    return-void
.end method

.method private addReplyAction(Landroid/support/v4/app/NotificationCompat$WearableExtender;Lcom/fsck/k9/notification/NotificationHolder;)V
    .locals 8
    .param p1, "wearableExtender"    # Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .param p2, "holder"    # Lcom/fsck/k9/notification/NotificationHolder;

    .prologue
    .line 169
    const v1, 0x7f02005c

    .line 170
    .local v1, "icon":I
    iget-object v6, p0, Lcom/fsck/k9/notification/WearNotifications;->context:Landroid/content/Context;

    const v7, 0x7f0702dc

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, "title":Ljava/lang/String;
    iget-object v6, p2, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    iget-object v2, v6, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 173
    .local v2, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    iget v3, p2, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    .line 174
    .local v3, "notificationId":I
    iget-object v6, p0, Lcom/fsck/k9/notification/WearNotifications;->actionCreator:Lcom/fsck/k9/notification/NotificationActionCreator;

    invoke-virtual {v6, v2, v3}, Lcom/fsck/k9/notification/NotificationActionCreator;->createReplyPendingIntent(Lcom/fsck/k9/activity/MessageReference;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 176
    .local v0, "action":Landroid/app/PendingIntent;
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    invoke-direct {v6, v1, v5, v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v4

    .line 177
    .local v4, "replyAction":Landroid/support/v4/app/NotificationCompat$Action;
    invoke-virtual {p1, v4}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 178
    return-void
.end method

.method private addWearActions(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/fsck/k9/Account;Lcom/fsck/k9/notification/NotificationHolder;)V
    .locals 2
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .param p3, "holder"    # Lcom/fsck/k9/notification/NotificationHolder;

    .prologue
    .line 148
    new-instance v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    .line 150
    .local v0, "wearableExtender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    invoke-direct {p0, v0, p3}, Lcom/fsck/k9/notification/WearNotifications;->addReplyAction(Landroid/support/v4/app/NotificationCompat$WearableExtender;Lcom/fsck/k9/notification/NotificationHolder;)V

    .line 151
    invoke-direct {p0, v0, p3}, Lcom/fsck/k9/notification/WearNotifications;->addMarkAsReadAction(Landroid/support/v4/app/NotificationCompat$WearableExtender;Lcom/fsck/k9/notification/NotificationHolder;)V

    .line 153
    invoke-direct {p0}, Lcom/fsck/k9/notification/WearNotifications;->isDeleteActionAvailableForWear()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    invoke-direct {p0, v0, p3}, Lcom/fsck/k9/notification/WearNotifications;->addDeleteAction(Landroid/support/v4/app/NotificationCompat$WearableExtender;Lcom/fsck/k9/notification/NotificationHolder;)V

    .line 157
    :cond_0
    invoke-direct {p0, p2}, Lcom/fsck/k9/notification/WearNotifications;->isArchiveActionAvailableForWear(Lcom/fsck/k9/Account;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    invoke-direct {p0, v0, p3}, Lcom/fsck/k9/notification/WearNotifications;->addArchiveAction(Landroid/support/v4/app/NotificationCompat$WearableExtender;Lcom/fsck/k9/notification/NotificationHolder;)V

    .line 161
    :cond_1
    invoke-direct {p0, p2}, Lcom/fsck/k9/notification/WearNotifications;->isSpamActionAvailableForWear(Lcom/fsck/k9/Account;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    invoke-direct {p0, v0, p3}, Lcom/fsck/k9/notification/WearNotifications;->addMarkAsSpamAction(Landroid/support/v4/app/NotificationCompat$WearableExtender;Lcom/fsck/k9/notification/NotificationHolder;)V

    .line 165
    :cond_2
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 166
    return-void
.end method

.method private isArchiveActionAvailableForWear(Lcom/fsck/k9/Account;)Z
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 233
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getArchiveFolderName()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "archiveFolderName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/notification/WearNotifications;->isMovePossible(Lcom/fsck/k9/Account;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDeleteActionAvailableForWear()Z
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/fsck/k9/notification/WearNotifications;->isDeleteActionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fsck/k9/K9;->confirmDeleteFromNotification()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMovePossible(Lcom/fsck/k9/Account;Ljava/lang/String;)Z
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "destinationFolderName"    # Ljava/lang/String;

    .prologue
    .line 243
    const-string v1, "-NONE-"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    const/4 v1, 0x0

    .line 248
    :goto_0
    return v1

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/notification/WearNotifications;->createMessagingController()Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    .line 248
    .local v0, "controller":Lcom/fsck/k9/controller/MessagingController;
    invoke-virtual {v0, p1}, Lcom/fsck/k9/controller/MessagingController;->isMoveCapable(Lcom/fsck/k9/Account;)Z

    move-result v1

    goto :goto_0
.end method

.method private isSpamActionAvailableForWear(Lcom/fsck/k9/Account;)Z
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 238
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getSpamFolderName()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "spamFolderName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fsck/k9/K9;->confirmSpam()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/notification/WearNotifications;->isMovePossible(Lcom/fsck/k9/Account;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addSummaryActions(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/NotificationData;)V
    .locals 3
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "notificationData"    # Lcom/fsck/k9/notification/NotificationData;

    .prologue
    .line 41
    new-instance v1, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    .line 43
    .local v1, "wearableExtender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    invoke-direct {p0, v1, p2}, Lcom/fsck/k9/notification/WearNotifications;->addMarkAllAsReadAction(Landroid/support/v4/app/NotificationCompat$WearableExtender;Lcom/fsck/k9/notification/NotificationData;)V

    .line 45
    invoke-direct {p0}, Lcom/fsck/k9/notification/WearNotifications;->isDeleteActionAvailableForWear()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-direct {p0, v1, p2}, Lcom/fsck/k9/notification/WearNotifications;->addDeleteAllAction(Landroid/support/v4/app/NotificationCompat$WearableExtender;Lcom/fsck/k9/notification/NotificationData;)V

    .line 49
    :cond_0
    invoke-virtual {p2}, Lcom/fsck/k9/notification/NotificationData;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v0

    .line 50
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-direct {p0, v0}, Lcom/fsck/k9/notification/WearNotifications;->isArchiveActionAvailableForWear(Lcom/fsck/k9/Account;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    invoke-direct {p0, v1, p2}, Lcom/fsck/k9/notification/WearNotifications;->addArchiveAllAction(Landroid/support/v4/app/NotificationCompat$WearableExtender;Lcom/fsck/k9/notification/NotificationData;)V

    .line 54
    :cond_1
    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 55
    return-void
.end method

.method public buildStackedNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/notification/NotificationHolder;)Landroid/app/Notification;
    .locals 8
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "holder"    # Lcom/fsck/k9/notification/NotificationHolder;

    .prologue
    .line 26
    iget v3, p2, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    .line 27
    .local v3, "notificationId":I
    iget-object v1, p2, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 28
    .local v1, "content":Lcom/fsck/k9/notification/NotificationContent;
    invoke-virtual {p0, p1, p2, v3}, Lcom/fsck/k9/notification/WearNotifications;->createBigTextStyleNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/notification/NotificationHolder;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 30
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    iget-object v4, p0, Lcom/fsck/k9/notification/WearNotifications;->actionCreator:Lcom/fsck/k9/notification/NotificationActionCreator;

    iget-object v5, p0, Lcom/fsck/k9/notification/WearNotifications;->context:Landroid/content/Context;

    iget-object v6, v1, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    iget v7, p2, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/fsck/k9/notification/NotificationActionCreator;->createDismissMessagePendingIntent(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 32
    .local v2, "deletePendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 34
    invoke-direct {p0, v0, p1, p2}, Lcom/fsck/k9/notification/WearNotifications;->addActions(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/fsck/k9/Account;Lcom/fsck/k9/notification/NotificationHolder;)V

    .line 36
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    return-object v4
.end method

.method createMessagingController()Lcom/fsck/k9/controller/MessagingController;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/fsck/k9/notification/WearNotifications;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    return-object v0
.end method
