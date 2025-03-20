.class Lcom/fsck/k9/notification/CertificateErrorNotifications;
.super Ljava/lang/Object;
.source "CertificateErrorNotifications.java"


# instance fields
.field private final controller:Lcom/fsck/k9/notification/NotificationController;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/notification/NotificationController;)V
    .locals 0
    .param p1, "controller"    # Lcom/fsck/k9/notification/NotificationController;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/fsck/k9/notification/CertificateErrorNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    .line 25
    return-void
.end method

.method private getCertificateErrorNotificationIcon()I
    .locals 1

    .prologue
    .line 69
    const v0, 0x7f020082

    return v0
.end method

.method private getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fsck/k9/notification/CertificateErrorNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v0}, Lcom/fsck/k9/notification/NotificationController;->getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearCertificateErrorNotifications(Lcom/fsck/k9/Account;Z)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "incoming"    # Z

    .prologue
    .line 54
    invoke-static {p1, p2}, Lcom/fsck/k9/notification/NotificationIds;->getCertificateErrorNotificationId(Lcom/fsck/k9/Account;Z)I

    move-result v0

    .line 55
    .local v0, "notificationId":I
    invoke-direct {p0}, Lcom/fsck/k9/notification/CertificateErrorNotifications;->getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V

    .line 56
    return-void
.end method

.method createContentIntent(Landroid/content/Context;Lcom/fsck/k9/Account;Z)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .param p3, "incoming"    # Z

    .prologue
    .line 59
    if-eqz p3, :cond_0

    .line 60
    invoke-static {p1, p2}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->intentActionEditIncomingSettings(Landroid/content/Context;Lcom/fsck/k9/Account;)Landroid/content/Intent;

    move-result-object v0

    .line 63
    .local v0, "editServerSettingsIntent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v1

    const/high16 v2, 0x8000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1

    .line 61
    .end local v0    # "editServerSettingsIntent":Landroid/content/Intent;
    :cond_0
    invoke-static {p1, p2}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->intentActionEditOutgoingSettings(Landroid/content/Context;Lcom/fsck/k9/Account;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public showCertificateErrorNotification(Lcom/fsck/k9/Account;Z)V
    .locals 12
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "incoming"    # Z

    .prologue
    .line 28
    invoke-static {p1, p2}, Lcom/fsck/k9/notification/NotificationIds;->getCertificateErrorNotificationId(Lcom/fsck/k9/Account;Z)I

    move-result v9

    .line 29
    .local v9, "notificationId":I
    iget-object v0, p0, Lcom/fsck/k9/notification/CertificateErrorNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v0}, Lcom/fsck/k9/notification/NotificationController;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 31
    .local v7, "context":Landroid/content/Context;
    invoke-virtual {p0, v7, p1, p2}, Lcom/fsck/k9/notification/CertificateErrorNotifications;->createContentIntent(Landroid/content/Context;Lcom/fsck/k9/Account;Z)Landroid/app/PendingIntent;

    move-result-object v8

    .line 32
    .local v8, "editServerSettingsPendingIntent":Landroid/app/PendingIntent;
    const v0, 0x7f0702e7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v7, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 33
    .local v11, "title":Ljava/lang/String;
    const v0, 0x7f0702e6

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 35
    .local v10, "text":Ljava/lang/String;
    iget-object v0, p0, Lcom/fsck/k9/notification/CertificateErrorNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v0}, Lcom/fsck/k9/notification/NotificationController;->createNotificationBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 36
    invoke-direct {p0}, Lcom/fsck/k9/notification/CertificateErrorNotifications;->getCertificateErrorNotificationIcon()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 38
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 41
    invoke-virtual {v0, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 43
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v2, "err"

    .line 44
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 46
    .local v1, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    iget-object v0, p0, Lcom/fsck/k9/notification/CertificateErrorNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x10000

    .line 47
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 46
    invoke-virtual/range {v0 .. v6}, Lcom/fsck/k9/notification/NotificationController;->configureNotification(Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/String;[JLjava/lang/Integer;IZ)V

    .line 50
    invoke-direct {p0}, Lcom/fsck/k9/notification/CertificateErrorNotifications;->getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 51
    return-void
.end method
