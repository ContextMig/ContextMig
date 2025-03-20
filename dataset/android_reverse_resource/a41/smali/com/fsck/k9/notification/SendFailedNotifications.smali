.class Lcom/fsck/k9/notification/SendFailedNotifications;
.super Ljava/lang/Object;
.source "SendFailedNotifications.java"


# instance fields
.field private final actionBuilder:Lcom/fsck/k9/notification/NotificationActionCreator;

.field private final controller:Lcom/fsck/k9/notification/NotificationController;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/notification/NotificationController;Lcom/fsck/k9/notification/NotificationActionCreator;)V
    .locals 0
    .param p1, "controller"    # Lcom/fsck/k9/notification/NotificationController;
    .param p2, "actionBuilder"    # Lcom/fsck/k9/notification/NotificationActionCreator;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/fsck/k9/notification/SendFailedNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    .line 24
    iput-object p2, p0, Lcom/fsck/k9/notification/SendFailedNotifications;->actionBuilder:Lcom/fsck/k9/notification/NotificationActionCreator;

    .line 25
    return-void
.end method

.method private getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fsck/k9/notification/SendFailedNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v0}, Lcom/fsck/k9/notification/NotificationController;->getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    return-object v0
.end method

.method private getSendFailedNotificationIcon()I
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f020082

    return v0
.end method


# virtual methods
.method public clearSendFailedNotification(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 54
    invoke-static {p1}, Lcom/fsck/k9/notification/NotificationIds;->getSendFailedNotificationId(Lcom/fsck/k9/Account;)I

    move-result v0

    .line 55
    .local v0, "notificationId":I
    invoke-direct {p0}, Lcom/fsck/k9/notification/SendFailedNotifications;->getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V

    .line 56
    return-void
.end method

.method public showSendFailedNotification(Lcom/fsck/k9/Account;Ljava/lang/Exception;)V
    .locals 12
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fsck/k9/notification/SendFailedNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v0}, Lcom/fsck/k9/notification/NotificationController;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 29
    .local v7, "context":Landroid/content/Context;
    const v0, 0x7f070344

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 30
    .local v11, "title":Ljava/lang/String;
    invoke-static {p2}, Lcom/fsck/k9/helper/ExceptionHelper;->getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    .line 32
    .local v10, "text":Ljava/lang/String;
    invoke-static {p1}, Lcom/fsck/k9/notification/NotificationIds;->getSendFailedNotificationId(Lcom/fsck/k9/Account;)I

    move-result v9

    .line 33
    .local v9, "notificationId":I
    iget-object v0, p0, Lcom/fsck/k9/notification/SendFailedNotifications;->actionBuilder:Lcom/fsck/k9/notification/NotificationActionCreator;

    invoke-virtual {v0, p1, v9}, Lcom/fsck/k9/notification/NotificationActionCreator;->createViewFolderListPendingIntent(Lcom/fsck/k9/Account;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 36
    .local v8, "folderListPendingIntent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/fsck/k9/notification/SendFailedNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v0}, Lcom/fsck/k9/notification/NotificationController;->createNotificationBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 37
    invoke-direct {p0}, Lcom/fsck/k9/notification/SendFailedNotifications;->getSendFailedNotificationIcon()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 39
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 41
    invoke-virtual {v0, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 44
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v2, "err"

    .line 45
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 47
    .local v1, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    iget-object v0, p0, Lcom/fsck/k9/notification/SendFailedNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x10000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/fsck/k9/notification/NotificationController;->configureNotification(Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/String;[JLjava/lang/Integer;IZ)V

    .line 50
    invoke-direct {p0}, Lcom/fsck/k9/notification/SendFailedNotifications;->getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 51
    return-void
.end method
