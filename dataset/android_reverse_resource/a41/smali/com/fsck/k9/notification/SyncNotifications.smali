.class Lcom/fsck/k9/notification/SyncNotifications;
.super Ljava/lang/Object;
.source "SyncNotifications.java"


# static fields
.field private static final NOTIFICATION_LED_WHILE_SYNCING:Z


# instance fields
.field private final actionBuilder:Lcom/fsck/k9/notification/NotificationActionCreator;

.field private final controller:Lcom/fsck/k9/notification/NotificationController;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/notification/NotificationController;Lcom/fsck/k9/notification/NotificationActionCreator;)V
    .locals 0
    .param p1, "controller"    # Lcom/fsck/k9/notification/NotificationController;
    .param p2, "actionBuilder"    # Lcom/fsck/k9/notification/NotificationActionCreator;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/fsck/k9/notification/SyncNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    .line 26
    iput-object p2, p0, Lcom/fsck/k9/notification/SyncNotifications;->actionBuilder:Lcom/fsck/k9/notification/NotificationActionCreator;

    .line 27
    return-void
.end method

.method private getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/fsck/k9/notification/SyncNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v0}, Lcom/fsck/k9/notification/NotificationController;->getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearFetchingMailNotification(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 99
    invoke-static {p1}, Lcom/fsck/k9/notification/NotificationIds;->getFetchingMailNotificationId(Lcom/fsck/k9/Account;)I

    move-result v0

    .line 100
    .local v0, "notificationId":I
    invoke-direct {p0}, Lcom/fsck/k9/notification/SyncNotifications;->getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V

    .line 101
    return-void
.end method

.method public clearSendingNotification(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 60
    invoke-static {p1}, Lcom/fsck/k9/notification/NotificationIds;->getFetchingMailNotificationId(Lcom/fsck/k9/Account;)I

    move-result v0

    .line 61
    .local v0, "notificationId":I
    invoke-direct {p0}, Lcom/fsck/k9/notification/SyncNotifications;->getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V

    .line 62
    return-void
.end method

.method public showFetchingMailNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;)V
    .locals 13
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Lcom/fsck/k9/mail/Folder;

    .prologue
    const/4 v12, 0x1

    .line 65
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "accountName":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "folderName":Ljava/lang/String;
    iget-object v9, p0, Lcom/fsck/k9/notification/SyncNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v9}, Lcom/fsck/k9/notification/NotificationController;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 69
    .local v2, "context":Landroid/content/Context;
    const v9, 0x7f0702e3

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    aput-object v3, v10, v12

    invoke-virtual {v2, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, "tickerText":Ljava/lang/String;
    const v9, 0x7f0702e4

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, "title":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0702e5

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, "text":Ljava/lang/String;
    invoke-static {p1}, Lcom/fsck/k9/notification/NotificationIds;->getFetchingMailNotificationId(Lcom/fsck/k9/Account;)I

    move-result v4

    .line 75
    .local v4, "notificationId":I
    iget-object v9, p0, Lcom/fsck/k9/notification/SyncNotifications;->actionBuilder:Lcom/fsck/k9/notification/NotificationActionCreator;

    invoke-virtual {v9, p1, v3, v4}, Lcom/fsck/k9/notification/NotificationActionCreator;->createViewFolderPendingIntent(Lcom/fsck/k9/Account;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 78
    .local v5, "showMessageListPendingIntent":Landroid/app/PendingIntent;
    iget-object v9, p0, Lcom/fsck/k9/notification/SyncNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v9}, Lcom/fsck/k9/notification/NotificationController;->createNotificationBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const v10, 0x7f020070

    .line 79
    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 81
    invoke-virtual {v9, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 82
    invoke-virtual {v9, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 83
    invoke-virtual {v9, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 84
    invoke-virtual {v9, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 85
    invoke-virtual {v9, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 86
    invoke-virtual {v9, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const-string v10, "service"

    .line 87
    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 95
    .local v1, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-direct {p0}, Lcom/fsck/k9/notification/SyncNotifications;->getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v9

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 96
    return-void
.end method

.method public showSendingNotification(Lcom/fsck/k9/Account;)V
    .locals 13
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    const/4 v12, 0x1

    .line 30
    iget-object v8, p0, Lcom/fsck/k9/notification/SyncNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v8}, Lcom/fsck/k9/notification/NotificationController;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 31
    .local v2, "context":Landroid/content/Context;
    iget-object v8, p0, Lcom/fsck/k9/notification/SyncNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v8, p1}, Lcom/fsck/k9/notification/NotificationController;->getAccountName(Lcom/fsck/k9/Account;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "accountName":Ljava/lang/String;
    const v8, 0x7f0702e2

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 33
    .local v7, "title":Ljava/lang/String;
    const v8, 0x7f0702e1

    new-array v9, v12, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-virtual {v2, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 35
    .local v6, "tickerText":Ljava/lang/String;
    invoke-static {p1}, Lcom/fsck/k9/notification/NotificationIds;->getFetchingMailNotificationId(Lcom/fsck/k9/Account;)I

    move-result v3

    .line 36
    .local v3, "notificationId":I
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, "outboxFolderName":Ljava/lang/String;
    iget-object v8, p0, Lcom/fsck/k9/notification/SyncNotifications;->actionBuilder:Lcom/fsck/k9/notification/NotificationActionCreator;

    invoke-virtual {v8, p1, v4, v3}, Lcom/fsck/k9/notification/NotificationActionCreator;->createViewFolderPendingIntent(Lcom/fsck/k9/Account;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 40
    .local v5, "showMessageListPendingIntent":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/fsck/k9/notification/SyncNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v8}, Lcom/fsck/k9/notification/NotificationController;->createNotificationBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    const v9, 0x7f020070

    .line 41
    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 43
    invoke-virtual {v8, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 44
    invoke-virtual {v8, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 45
    invoke-virtual {v8, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 46
    invoke-virtual {v8, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 47
    invoke-virtual {v8, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 48
    invoke-virtual {v8, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 56
    .local v1, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-direct {p0}, Lcom/fsck/k9/notification/SyncNotifications;->getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v8

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 57
    return-void
.end method
