.class Lcom/fsck/k9/notification/AuthenticationErrorNotifications;
.super Ljava/lang/Object;
.source "AuthenticationErrorNotifications.java"


# instance fields
.field private final controller:Lcom/fsck/k9/notification/NotificationController;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/notification/NotificationController;)V
    .locals 0
    .param p1, "controller"    # Lcom/fsck/k9/notification/NotificationController;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/fsck/k9/notification/AuthenticationErrorNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    .line 26
    return-void
.end method

.method private getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fsck/k9/notification/AuthenticationErrorNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v0}, Lcom/fsck/k9/notification/NotificationController;->getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearAuthenticationErrorNotification(Lcom/fsck/k9/Account;Z)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "incoming"    # Z

    .prologue
    .line 56
    invoke-static {p1, p2}, Lcom/fsck/k9/notification/NotificationIds;->getAuthenticationErrorNotificationId(Lcom/fsck/k9/Account;Z)I

    move-result v0

    .line 57
    .local v0, "notificationId":I
    invoke-direct {p0}, Lcom/fsck/k9/notification/AuthenticationErrorNotifications;->getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V

    .line 58
    return-void
.end method

.method createContentIntent(Landroid/content/Context;Lcom/fsck/k9/Account;Z)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .param p3, "incoming"    # Z

    .prologue
    .line 61
    if-eqz p3, :cond_0

    .line 62
    invoke-static {p1, p2}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->intentActionEditIncomingSettings(Landroid/content/Context;Lcom/fsck/k9/Account;)Landroid/content/Intent;

    move-result-object v0

    .line 65
    .local v0, "editServerSettingsIntent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v1

    const/high16 v2, 0x8000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1

    .line 63
    .end local v0    # "editServerSettingsIntent":Landroid/content/Intent;
    :cond_0
    invoke-static {p1, p2}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->intentActionEditOutgoingSettings(Landroid/content/Context;Lcom/fsck/k9/Account;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public showAuthenticationErrorNotification(Lcom/fsck/k9/Account;Z)V
    .locals 12
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "incoming"    # Z

    .prologue
    .line 29
    invoke-static {p1, p2}, Lcom/fsck/k9/notification/NotificationIds;->getAuthenticationErrorNotificationId(Lcom/fsck/k9/Account;Z)I

    move-result v9

    .line 30
    .local v9, "notificationId":I
    iget-object v0, p0, Lcom/fsck/k9/notification/AuthenticationErrorNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v0}, Lcom/fsck/k9/notification/NotificationController;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 32
    .local v7, "context":Landroid/content/Context;
    invoke-virtual {p0, v7, p1, p2}, Lcom/fsck/k9/notification/AuthenticationErrorNotifications;->createContentIntent(Landroid/content/Context;Lcom/fsck/k9/Account;Z)Landroid/app/PendingIntent;

    move-result-object v8

    .line 33
    .local v8, "editServerSettingsPendingIntent":Landroid/app/PendingIntent;
    const v0, 0x7f0702e0

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 34
    .local v11, "title":Ljava/lang/String;
    const v0, 0x7f0702df

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v7, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 36
    .local v10, "text":Ljava/lang/String;
    iget-object v0, p0, Lcom/fsck/k9/notification/AuthenticationErrorNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v0}, Lcom/fsck/k9/notification/NotificationController;->createNotificationBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v2, 0x7f020083

    .line 37
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

    new-instance v2, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 44
    invoke-virtual {v2, v10}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 45
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v2, "err"

    .line 46
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 48
    .local v1, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    iget-object v0, p0, Lcom/fsck/k9/notification/AuthenticationErrorNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x10000

    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 48
    invoke-virtual/range {v0 .. v6}, Lcom/fsck/k9/notification/NotificationController;->configureNotification(Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/String;[JLjava/lang/Integer;IZ)V

    .line 52
    invoke-direct {p0}, Lcom/fsck/k9/notification/AuthenticationErrorNotifications;->getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 53
    return-void
.end method
