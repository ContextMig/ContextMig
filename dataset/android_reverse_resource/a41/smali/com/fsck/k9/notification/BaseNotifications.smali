.class abstract Lcom/fsck/k9/notification/BaseNotifications;
.super Ljava/lang/Object;
.source "BaseNotifications.java"


# instance fields
.field protected final actionCreator:Lcom/fsck/k9/notification/NotificationActionCreator;

.field protected final context:Landroid/content/Context;

.field protected final controller:Lcom/fsck/k9/notification/NotificationController;


# direct methods
.method protected constructor <init>(Lcom/fsck/k9/notification/NotificationController;Lcom/fsck/k9/notification/NotificationActionCreator;)V
    .locals 1
    .param p1, "controller"    # Lcom/fsck/k9/notification/NotificationController;
    .param p2, "actionCreator"    # Lcom/fsck/k9/notification/NotificationActionCreator;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/fsck/k9/notification/NotificationController;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/notification/BaseNotifications;->context:Landroid/content/Context;

    .line 24
    iput-object p1, p0, Lcom/fsck/k9/notification/BaseNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    .line 25
    iput-object p2, p0, Lcom/fsck/k9/notification/BaseNotifications;->actionCreator:Lcom/fsck/k9/notification/NotificationActionCreator;

    .line 26
    return-void
.end method

.method private getNewMailNotificationIcon()I
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f020082

    return v0
.end method


# virtual methods
.method protected createAndInitializeNotificationBuilder(Lcom/fsck/k9/Account;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fsck/k9/notification/BaseNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v0}, Lcom/fsck/k9/notification/NotificationController;->createNotificationBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 55
    invoke-direct {p0}, Lcom/fsck/k9/notification/BaseNotifications;->getNewMailNotificationIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getChipColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "email"

    .line 59
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 54
    return-object v0
.end method

.method protected createBigTextStyle(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    .locals 1
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 68
    new-instance v0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0, p1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    return-object v0
.end method

.method protected createBigTextStyleNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/notification/NotificationHolder;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 8
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "holder"    # Lcom/fsck/k9/notification/NotificationHolder;
    .param p3, "notificationId"    # I

    .prologue
    .line 30
    iget-object v6, p0, Lcom/fsck/k9/notification/BaseNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v6, p1}, Lcom/fsck/k9/notification/NotificationController;->getAccountName(Lcom/fsck/k9/Account;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "accountName":Ljava/lang/String;
    iget-object v2, p2, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 32
    .local v2, "content":Lcom/fsck/k9/notification/NotificationContent;
    invoke-static {p1}, Lcom/fsck/k9/notification/NotificationGroupKeys;->getGroupKey(Lcom/fsck/k9/Account;)Ljava/lang/String;

    move-result-object v4

    .line 34
    .local v4, "groupKey":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/fsck/k9/notification/BaseNotifications;->createAndInitializeNotificationBuilder(Lcom/fsck/k9/Account;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    iget-object v7, v2, Lcom/fsck/k9/notification/NotificationContent;->summary:Ljava/lang/CharSequence;

    .line 35
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 36
    invoke-virtual {v6, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    iget-object v7, v2, Lcom/fsck/k9/notification/NotificationContent;->sender:Ljava/lang/String;

    .line 37
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    iget-object v7, v2, Lcom/fsck/k9/notification/NotificationContent;->subject:Ljava/lang/String;

    .line 38
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 39
    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 41
    .local v1, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {p0, v1}, Lcom/fsck/k9/notification/BaseNotifications;->createBigTextStyle(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v5

    .line 42
    .local v5, "style":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    iget-object v6, v2, Lcom/fsck/k9/notification/NotificationContent;->preview:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 44
    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 46
    iget-object v6, p0, Lcom/fsck/k9/notification/BaseNotifications;->actionCreator:Lcom/fsck/k9/notification/NotificationActionCreator;

    iget-object v7, v2, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v6, v7, p3}, Lcom/fsck/k9/notification/NotificationActionCreator;->createViewMessagePendingIntent(Lcom/fsck/k9/activity/MessageReference;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 48
    .local v3, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 50
    return-object v1
.end method

.method protected isDeleteActionEnabled()Z
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/fsck/k9/K9;->getNotificationQuickDeleteBehaviour()Lcom/fsck/k9/K9$NotificationQuickDelete;

    move-result-object v0

    .line 64
    .local v0, "deleteOption":Lcom/fsck/k9/K9$NotificationQuickDelete;
    sget-object v1, Lcom/fsck/k9/K9$NotificationQuickDelete;->ALWAYS:Lcom/fsck/k9/K9$NotificationQuickDelete;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/fsck/k9/K9$NotificationQuickDelete;->FOR_SINGLE_MSG:Lcom/fsck/k9/K9$NotificationQuickDelete;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
