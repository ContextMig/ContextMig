.class Lcom/fsck/k9/notification/NewMailNotifications;
.super Ljava/lang/Object;
.source "NewMailNotifications.java"


# instance fields
.field private final contentCreator:Lcom/fsck/k9/notification/NotificationContentCreator;

.field private final controller:Lcom/fsck/k9/notification/NotificationController;

.field private final deviceNotifications:Lcom/fsck/k9/notification/DeviceNotifications;

.field private final lock:Ljava/lang/Object;

.field private final notifications:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/fsck/k9/notification/NotificationData;",
            ">;"
        }
    .end annotation
.end field

.field private final wearNotifications:Lcom/fsck/k9/notification/WearNotifications;


# direct methods
.method constructor <init>(Lcom/fsck/k9/notification/NotificationController;Lcom/fsck/k9/notification/NotificationContentCreator;Lcom/fsck/k9/notification/DeviceNotifications;Lcom/fsck/k9/notification/WearNotifications;)V
    .locals 1
    .param p1, "controller"    # Lcom/fsck/k9/notification/NotificationController;
    .param p2, "contentCreator"    # Lcom/fsck/k9/notification/NotificationContentCreator;
    .param p3, "deviceNotifications"    # Lcom/fsck/k9/notification/DeviceNotifications;
    .param p4, "wearNotifications"    # Lcom/fsck/k9/notification/WearNotifications;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/notification/NewMailNotifications;->notifications:Landroid/util/SparseArray;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/notification/NewMailNotifications;->lock:Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Lcom/fsck/k9/notification/NewMailNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    .line 37
    iput-object p3, p0, Lcom/fsck/k9/notification/NewMailNotifications;->deviceNotifications:Lcom/fsck/k9/notification/DeviceNotifications;

    .line 38
    iput-object p4, p0, Lcom/fsck/k9/notification/NewMailNotifications;->wearNotifications:Lcom/fsck/k9/notification/WearNotifications;

    .line 39
    iput-object p2, p0, Lcom/fsck/k9/notification/NewMailNotifications;->contentCreator:Lcom/fsck/k9/notification/NotificationContentCreator;

    .line 40
    return-void
.end method

.method private cancelNotification(I)V
    .locals 1
    .param p1, "notificationId"    # I

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/fsck/k9/notification/NewMailNotifications;->getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V

    .line 141
    return-void
.end method

.method private createStackedNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/notification/NotificationHolder;)V
    .locals 3
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "holder"    # Lcom/fsck/k9/notification/NotificationHolder;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/fsck/k9/notification/NewMailNotifications;->isPrivacyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/notification/NewMailNotifications;->wearNotifications:Lcom/fsck/k9/notification/WearNotifications;

    invoke-virtual {v2, p1, p2}, Lcom/fsck/k9/notification/WearNotifications;->buildStackedNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/notification/NotificationHolder;)Landroid/app/Notification;

    move-result-object v0

    .line 164
    .local v0, "notification":Landroid/app/Notification;
    iget v1, p2, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    .line 166
    .local v1, "notificationId":I
    invoke-direct {p0}, Lcom/fsck/k9/notification/NewMailNotifications;->getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private createSummaryNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/notification/NotificationData;Z)V
    .locals 3
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "notificationData"    # Lcom/fsck/k9/notification/NotificationData;
    .param p3, "silent"    # Z

    .prologue
    .line 152
    iget-object v2, p0, Lcom/fsck/k9/notification/NewMailNotifications;->deviceNotifications:Lcom/fsck/k9/notification/DeviceNotifications;

    invoke-virtual {v2, p1, p2, p3}, Lcom/fsck/k9/notification/DeviceNotifications;->buildSummaryNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/notification/NotificationData;Z)Landroid/app/Notification;

    move-result-object v0

    .line 153
    .local v0, "notification":Landroid/app/Notification;
    invoke-static {p1}, Lcom/fsck/k9/notification/NotificationIds;->getNewMailSummaryNotificationId(Lcom/fsck/k9/Account;)I

    move-result v1

    .line 155
    .local v1, "notificationId":I
    invoke-direct {p0}, Lcom/fsck/k9/notification/NewMailNotifications;->getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 156
    return-void
.end method

.method private getNotificationData(Lcom/fsck/k9/Account;)Lcom/fsck/k9/notification/NotificationData;
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 122
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v0

    .line 123
    .local v0, "accountNumber":I
    iget-object v1, p0, Lcom/fsck/k9/notification/NewMailNotifications;->notifications:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/notification/NotificationData;

    return-object v1
.end method

.method private getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/fsck/k9/notification/NewMailNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v0}, Lcom/fsck/k9/notification/NotificationController;->getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    return-object v0
.end method

.method private getOrCreateNotificationData(Lcom/fsck/k9/Account;I)Lcom/fsck/k9/notification/NotificationData;
    .locals 4
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "unreadMessageCount"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/fsck/k9/notification/NewMailNotifications;->getNotificationData(Lcom/fsck/k9/Account;)Lcom/fsck/k9/notification/NotificationData;

    move-result-object v2

    .line 110
    .local v2, "notificationData":Lcom/fsck/k9/notification/NotificationData;
    if-eqz v2, :cond_0

    .line 118
    .end local v2    # "notificationData":Lcom/fsck/k9/notification/NotificationData;
    :goto_0
    return-object v2

    .line 114
    .restart local v2    # "notificationData":Lcom/fsck/k9/notification/NotificationData;
    :cond_0
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v0

    .line 115
    .local v0, "accountNumber":I
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/notification/NewMailNotifications;->createNotificationData(Lcom/fsck/k9/Account;I)Lcom/fsck/k9/notification/NotificationData;

    move-result-object v1

    .line 116
    .local v1, "newNotificationHolder":Lcom/fsck/k9/notification/NotificationData;
    iget-object v3, p0, Lcom/fsck/k9/notification/NewMailNotifications;->notifications:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v2, v1

    .line 118
    goto :goto_0
.end method

.method private isPrivacyModeEnabled()Z
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Lcom/fsck/k9/K9;->getNotificationHideSubject()Lcom/fsck/k9/K9$NotificationHideSubject;

    move-result-object v0

    sget-object v1, Lcom/fsck/k9/K9$NotificationHideSubject;->NEVER:Lcom/fsck/k9/K9$NotificationHideSubject;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Lcom/fsck/k9/notification/NotificationController;Lcom/fsck/k9/notification/NotificationActionCreator;)Lcom/fsck/k9/notification/NewMailNotifications;
    .locals 4
    .param p0, "controller"    # Lcom/fsck/k9/notification/NotificationController;
    .param p1, "actionCreator"    # Lcom/fsck/k9/notification/NotificationActionCreator;

    .prologue
    .line 44
    new-instance v0, Lcom/fsck/k9/notification/NotificationContentCreator;

    invoke-virtual {p0}, Lcom/fsck/k9/notification/NotificationController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/fsck/k9/notification/NotificationContentCreator;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, "contentCreator":Lcom/fsck/k9/notification/NotificationContentCreator;
    new-instance v2, Lcom/fsck/k9/notification/WearNotifications;

    invoke-direct {v2, p0, p1}, Lcom/fsck/k9/notification/WearNotifications;-><init>(Lcom/fsck/k9/notification/NotificationController;Lcom/fsck/k9/notification/NotificationActionCreator;)V

    .line 46
    .local v2, "wearNotifications":Lcom/fsck/k9/notification/WearNotifications;
    invoke-static {p0, p1, v2}, Lcom/fsck/k9/notification/DeviceNotifications;->newInstance(Lcom/fsck/k9/notification/NotificationController;Lcom/fsck/k9/notification/NotificationActionCreator;Lcom/fsck/k9/notification/WearNotifications;)Lcom/fsck/k9/notification/DeviceNotifications;

    move-result-object v1

    .line 48
    .local v1, "deviceNotifications":Lcom/fsck/k9/notification/DeviceNotifications;
    new-instance v3, Lcom/fsck/k9/notification/NewMailNotifications;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/fsck/k9/notification/NewMailNotifications;-><init>(Lcom/fsck/k9/notification/NotificationController;Lcom/fsck/k9/notification/NotificationContentCreator;Lcom/fsck/k9/notification/DeviceNotifications;Lcom/fsck/k9/notification/WearNotifications;)V

    return-object v3
.end method

.method private removeNotificationData(Lcom/fsck/k9/Account;)Lcom/fsck/k9/notification/NotificationData;
    .locals 3
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v0

    .line 128
    .local v0, "accountNumber":I
    iget-object v2, p0, Lcom/fsck/k9/notification/NewMailNotifications;->notifications:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/notification/NotificationData;

    .line 129
    .local v1, "notificationData":Lcom/fsck/k9/notification/NotificationData;
    iget-object v2, p0, Lcom/fsck/k9/notification/NewMailNotifications;->notifications:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 130
    return-object v1
.end method

.method private updateSummaryNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/notification/NotificationData;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "notificationData"    # Lcom/fsck/k9/notification/NotificationData;

    .prologue
    .line 144
    invoke-virtual {p2}, Lcom/fsck/k9/notification/NotificationData;->getNewMessagesCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0, p1}, Lcom/fsck/k9/notification/NewMailNotifications;->clearNewMailNotifications(Lcom/fsck/k9/Account;)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/fsck/k9/notification/NewMailNotifications;->createSummaryNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/notification/NotificationData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public addNewMailNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalMessage;I)V
    .locals 6
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "message"    # Lcom/fsck/k9/mailstore/LocalMessage;
    .param p3, "unreadMessageCount"    # I

    .prologue
    .line 52
    iget-object v4, p0, Lcom/fsck/k9/notification/NewMailNotifications;->contentCreator:Lcom/fsck/k9/notification/NotificationContentCreator;

    invoke-virtual {v4, p1, p2}, Lcom/fsck/k9/notification/NotificationContentCreator;->createFromMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalMessage;)Lcom/fsck/k9/notification/NotificationContent;

    move-result-object v0

    .line 54
    .local v0, "content":Lcom/fsck/k9/notification/NotificationContent;
    iget-object v5, p0, Lcom/fsck/k9/notification/NewMailNotifications;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 55
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/fsck/k9/notification/NewMailNotifications;->getOrCreateNotificationData(Lcom/fsck/k9/Account;I)Lcom/fsck/k9/notification/NotificationData;

    move-result-object v1

    .line 56
    .local v1, "notificationData":Lcom/fsck/k9/notification/NotificationData;
    invoke-virtual {v1, v0}, Lcom/fsck/k9/notification/NotificationData;->addNotificationContent(Lcom/fsck/k9/notification/NotificationContent;)Lcom/fsck/k9/notification/AddNotificationResult;

    move-result-object v3

    .line 58
    .local v3, "result":Lcom/fsck/k9/notification/AddNotificationResult;
    invoke-virtual {v3}, Lcom/fsck/k9/notification/AddNotificationResult;->shouldCancelNotification()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    invoke-virtual {v3}, Lcom/fsck/k9/notification/AddNotificationResult;->getNotificationId()I

    move-result v2

    .line 60
    .local v2, "notificationId":I
    invoke-direct {p0, v2}, Lcom/fsck/k9/notification/NewMailNotifications;->cancelNotification(I)V

    .line 63
    .end local v2    # "notificationId":I
    :cond_0
    invoke-virtual {v3}, Lcom/fsck/k9/notification/AddNotificationResult;->getNotificationHolder()Lcom/fsck/k9/notification/NotificationHolder;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/fsck/k9/notification/NewMailNotifications;->createStackedNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/notification/NotificationHolder;)V

    .line 64
    const/4 v4, 0x0

    invoke-direct {p0, p1, v1, v4}, Lcom/fsck/k9/notification/NewMailNotifications;->createSummaryNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/notification/NotificationData;Z)V

    .line 65
    monitor-exit v5

    .line 66
    return-void

    .line 65
    .end local v1    # "notificationData":Lcom/fsck/k9/notification/NotificationData;
    .end local v3    # "result":Lcom/fsck/k9/notification/AddNotificationResult;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public clearNewMailNotifications(Lcom/fsck/k9/Account;)V
    .locals 5
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 92
    iget-object v3, p0, Lcom/fsck/k9/notification/NewMailNotifications;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 93
    :try_start_0
    invoke-direct {p0, p1}, Lcom/fsck/k9/notification/NewMailNotifications;->removeNotificationData(Lcom/fsck/k9/Account;)Lcom/fsck/k9/notification/NotificationData;

    move-result-object v0

    .line 94
    .local v0, "notificationData":Lcom/fsck/k9/notification/NotificationData;
    monitor-exit v3

    .line 96
    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 94
    .end local v0    # "notificationData":Lcom/fsck/k9/notification/NotificationData;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 100
    .restart local v0    # "notificationData":Lcom/fsck/k9/notification/NotificationData;
    :cond_0
    invoke-virtual {v0}, Lcom/fsck/k9/notification/NotificationData;->getActiveNotificationIds()[I

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    aget v1, v3, v2

    .line 101
    .local v1, "notificationId":I
    invoke-direct {p0, v1}, Lcom/fsck/k9/notification/NewMailNotifications;->cancelNotification(I)V

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 104
    .end local v1    # "notificationId":I
    :cond_1
    invoke-static {p1}, Lcom/fsck/k9/notification/NotificationIds;->getNewMailSummaryNotificationId(Lcom/fsck/k9/Account;)I

    move-result v1

    .line 105
    .restart local v1    # "notificationId":I
    invoke-direct {p0, v1}, Lcom/fsck/k9/notification/NewMailNotifications;->cancelNotification(I)V

    goto :goto_0
.end method

.method createNotificationData(Lcom/fsck/k9/Account;I)Lcom/fsck/k9/notification/NotificationData;
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "unreadMessageCount"    # I

    .prologue
    .line 134
    new-instance v0, Lcom/fsck/k9/notification/NotificationData;

    invoke-direct {v0, p1}, Lcom/fsck/k9/notification/NotificationData;-><init>(Lcom/fsck/k9/Account;)V

    .line 135
    .local v0, "notificationData":Lcom/fsck/k9/notification/NotificationData;
    invoke-virtual {v0, p2}, Lcom/fsck/k9/notification/NotificationData;->setUnreadMessageCount(I)V

    .line 136
    return-object v0
.end method

.method public removeNewMailNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/MessageReference;)V
    .locals 4
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 69
    iget-object v3, p0, Lcom/fsck/k9/notification/NewMailNotifications;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 70
    :try_start_0
    invoke-direct {p0, p1}, Lcom/fsck/k9/notification/NewMailNotifications;->getNotificationData(Lcom/fsck/k9/Account;)Lcom/fsck/k9/notification/NotificationData;

    move-result-object v0

    .line 71
    .local v0, "notificationData":Lcom/fsck/k9/notification/NotificationData;
    if-nez v0, :cond_0

    .line 72
    monitor-exit v3

    .line 88
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {v0, p2}, Lcom/fsck/k9/notification/NotificationData;->removeNotificationForMessage(Lcom/fsck/k9/activity/MessageReference;)Lcom/fsck/k9/notification/RemoveNotificationResult;

    move-result-object v1

    .line 76
    .local v1, "result":Lcom/fsck/k9/notification/RemoveNotificationResult;
    invoke-virtual {v1}, Lcom/fsck/k9/notification/RemoveNotificationResult;->isUnknownNotification()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    monitor-exit v3

    goto :goto_0

    .line 87
    .end local v0    # "notificationData":Lcom/fsck/k9/notification/NotificationData;
    .end local v1    # "result":Lcom/fsck/k9/notification/RemoveNotificationResult;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 80
    .restart local v0    # "notificationData":Lcom/fsck/k9/notification/NotificationData;
    .restart local v1    # "result":Lcom/fsck/k9/notification/RemoveNotificationResult;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/fsck/k9/notification/RemoveNotificationResult;->getNotificationId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/fsck/k9/notification/NewMailNotifications;->cancelNotification(I)V

    .line 82
    invoke-virtual {v1}, Lcom/fsck/k9/notification/RemoveNotificationResult;->shouldCreateNotification()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    invoke-virtual {v1}, Lcom/fsck/k9/notification/RemoveNotificationResult;->getNotificationHolder()Lcom/fsck/k9/notification/NotificationHolder;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/fsck/k9/notification/NewMailNotifications;->createStackedNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/notification/NotificationHolder;)V

    .line 86
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/notification/NewMailNotifications;->updateSummaryNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/notification/NotificationData;)V

    .line 87
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
