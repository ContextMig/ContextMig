.class public Lcom/fsck/k9/notification/NotificationController;
.super Ljava/lang/Object;
.source "NotificationController.java"


# static fields
.field static final NOTIFICATION_LED_BLINK_FAST:I = 0x1

.field static final NOTIFICATION_LED_BLINK_SLOW:I = 0x0

.field static final NOTIFICATION_LED_FAILURE_COLOR:I = -0x10000

.field private static final NOTIFICATION_LED_FAST_OFF_TIME:I = 0x64

.field private static final NOTIFICATION_LED_FAST_ON_TIME:I = 0x64

.field private static final NOTIFICATION_LED_OFF_TIME:I = 0x7d0

.field private static final NOTIFICATION_LED_ON_TIME:I = 0x1f4


# instance fields
.field private final authenticationErrorNotifications:Lcom/fsck/k9/notification/AuthenticationErrorNotifications;

.field private final certificateErrorNotifications:Lcom/fsck/k9/notification/CertificateErrorNotifications;

.field private final context:Landroid/content/Context;

.field private final newMailNotifications:Lcom/fsck/k9/notification/NewMailNotifications;

.field private final notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

.field private final sendFailedNotifications:Lcom/fsck/k9/notification/SendFailedNotifications;

.field private final syncNotifications:Lcom/fsck/k9/notification/SyncNotifications;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/app/NotificationManagerCompat;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationManager"    # Landroid/support/v4/app/NotificationManagerCompat;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/fsck/k9/notification/NotificationController;->context:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/fsck/k9/notification/NotificationController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    .line 56
    new-instance v0, Lcom/fsck/k9/notification/NotificationActionCreator;

    invoke-direct {v0, p1}, Lcom/fsck/k9/notification/NotificationActionCreator;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, "actionBuilder":Lcom/fsck/k9/notification/NotificationActionCreator;
    new-instance v1, Lcom/fsck/k9/notification/CertificateErrorNotifications;

    invoke-direct {v1, p0}, Lcom/fsck/k9/notification/CertificateErrorNotifications;-><init>(Lcom/fsck/k9/notification/NotificationController;)V

    iput-object v1, p0, Lcom/fsck/k9/notification/NotificationController;->certificateErrorNotifications:Lcom/fsck/k9/notification/CertificateErrorNotifications;

    .line 58
    new-instance v1, Lcom/fsck/k9/notification/AuthenticationErrorNotifications;

    invoke-direct {v1, p0}, Lcom/fsck/k9/notification/AuthenticationErrorNotifications;-><init>(Lcom/fsck/k9/notification/NotificationController;)V

    iput-object v1, p0, Lcom/fsck/k9/notification/NotificationController;->authenticationErrorNotifications:Lcom/fsck/k9/notification/AuthenticationErrorNotifications;

    .line 59
    new-instance v1, Lcom/fsck/k9/notification/SyncNotifications;

    invoke-direct {v1, p0, v0}, Lcom/fsck/k9/notification/SyncNotifications;-><init>(Lcom/fsck/k9/notification/NotificationController;Lcom/fsck/k9/notification/NotificationActionCreator;)V

    iput-object v1, p0, Lcom/fsck/k9/notification/NotificationController;->syncNotifications:Lcom/fsck/k9/notification/SyncNotifications;

    .line 60
    new-instance v1, Lcom/fsck/k9/notification/SendFailedNotifications;

    invoke-direct {v1, p0, v0}, Lcom/fsck/k9/notification/SendFailedNotifications;-><init>(Lcom/fsck/k9/notification/NotificationController;Lcom/fsck/k9/notification/NotificationActionCreator;)V

    iput-object v1, p0, Lcom/fsck/k9/notification/NotificationController;->sendFailedNotifications:Lcom/fsck/k9/notification/SendFailedNotifications;

    .line 61
    invoke-static {p0, v0}, Lcom/fsck/k9/notification/NewMailNotifications;->newInstance(Lcom/fsck/k9/notification/NotificationController;Lcom/fsck/k9/notification/NotificationActionCreator;)Lcom/fsck/k9/notification/NewMailNotifications;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/notification/NotificationController;->newMailNotifications:Lcom/fsck/k9/notification/NewMailNotifications;

    .line 62
    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/fsck/k9/notification/NotificationController;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {v0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v1

    .line 40
    .local v1, "notificationManager":Landroid/support/v4/app/NotificationManagerCompat;
    new-instance v2, Lcom/fsck/k9/notification/NotificationController;

    invoke-direct {v2, v0, v1}, Lcom/fsck/k9/notification/NotificationController;-><init>(Landroid/content/Context;Landroid/support/v4/app/NotificationManagerCompat;)V

    return-object v2
.end method

.method public static platformSupportsExtendedNotifications()Z
    .locals 2

    .prologue
    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static platformSupportsLockScreenNotifications()Z
    .locals 2

    .prologue
    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addNewMailNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalMessage;I)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "message"    # Lcom/fsck/k9/mailstore/LocalMessage;
    .param p3, "previousUnreadMessageCount"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationController;->newMailNotifications:Lcom/fsck/k9/notification/NewMailNotifications;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fsck/k9/notification/NewMailNotifications;->addNewMailNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalMessage;I)V

    .line 106
    return-void
.end method

.method public clearAuthenticationErrorNotification(Lcom/fsck/k9/Account;Z)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "incoming"    # Z

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationController;->authenticationErrorNotifications:Lcom/fsck/k9/notification/AuthenticationErrorNotifications;

    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/notification/AuthenticationErrorNotifications;->clearAuthenticationErrorNotification(Lcom/fsck/k9/Account;Z)V

    .line 78
    return-void
.end method

.method public clearCertificateErrorNotifications(Lcom/fsck/k9/Account;Z)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "incoming"    # Z

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationController;->certificateErrorNotifications:Lcom/fsck/k9/notification/CertificateErrorNotifications;

    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/notification/CertificateErrorNotifications;->clearCertificateErrorNotifications(Lcom/fsck/k9/Account;Z)V

    .line 70
    return-void
.end method

.method public clearFetchingMailNotification(Lcom/fsck/k9/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationController;->syncNotifications:Lcom/fsck/k9/notification/SyncNotifications;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/notification/SyncNotifications;->clearFetchingMailNotification(Lcom/fsck/k9/Account;)V

    .line 102
    return-void
.end method

.method public clearNewMailNotifications(Lcom/fsck/k9/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationController;->newMailNotifications:Lcom/fsck/k9/notification/NewMailNotifications;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/notification/NewMailNotifications;->clearNewMailNotifications(Lcom/fsck/k9/Account;)V

    .line 114
    return-void
.end method

.method public clearSendFailedNotification(Lcom/fsck/k9/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationController;->sendFailedNotifications:Lcom/fsck/k9/notification/SendFailedNotifications;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/notification/SendFailedNotifications;->clearSendFailedNotification(Lcom/fsck/k9/Account;)V

    .line 94
    return-void
.end method

.method public clearSendingNotification(Lcom/fsck/k9/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationController;->syncNotifications:Lcom/fsck/k9/notification/SyncNotifications;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/notification/SyncNotifications;->clearSendingNotification(Lcom/fsck/k9/Account;)V

    .line 86
    return-void
.end method

.method configureNotification(Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/String;[JLjava/lang/Integer;IZ)V
    .locals 3
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "ringtone"    # Ljava/lang/String;
    .param p3, "vibrationPattern"    # [J
    .param p4, "ledColor"    # Ljava/lang/Integer;
    .param p5, "ledSpeed"    # I
    .param p6, "ringAndVibrate"    # Z

    .prologue
    .line 119
    invoke-static {}, Lcom/fsck/k9/K9;->isQuietTime()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    if-eqz p6, :cond_3

    .line 124
    if-eqz p2, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 125
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 128
    :cond_2
    if-eqz p3, :cond_3

    .line 129
    invoke-virtual {p1, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 133
    :cond_3
    if-eqz p4, :cond_0

    .line 136
    if-nez p5, :cond_4

    .line 137
    const/16 v1, 0x1f4

    .line 138
    .local v1, "ledOnMS":I
    const/16 v0, 0x7d0

    .line 144
    .local v0, "ledOffMS":I
    :goto_1
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2, v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 140
    .end local v0    # "ledOffMS":I
    .end local v1    # "ledOnMS":I
    :cond_4
    const/16 v1, 0x64

    .line 141
    .restart local v1    # "ledOnMS":I
    const/16 v0, 0x64

    .restart local v0    # "ledOffMS":I
    goto :goto_1
.end method

.method createNotificationBuilder()Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationController;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method getAccountName(Lcom/fsck/k9/Account;)Ljava/lang/String;
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 149
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "accountDescription":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getEmail()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "accountDescription":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationController;->context:Landroid/content/Context;

    return-object v0
.end method

.method getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    return-object v0
.end method

.method public removeNewMailNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/MessageReference;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationController;->newMailNotifications:Lcom/fsck/k9/notification/NewMailNotifications;

    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/notification/NewMailNotifications;->removeNewMailNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/MessageReference;)V

    .line 110
    return-void
.end method

.method public showAuthenticationErrorNotification(Lcom/fsck/k9/Account;Z)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "incoming"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationController;->authenticationErrorNotifications:Lcom/fsck/k9/notification/AuthenticationErrorNotifications;

    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/notification/AuthenticationErrorNotifications;->showAuthenticationErrorNotification(Lcom/fsck/k9/Account;Z)V

    .line 74
    return-void
.end method

.method public showCertificateErrorNotification(Lcom/fsck/k9/Account;Z)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "incoming"    # Z

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationController;->certificateErrorNotifications:Lcom/fsck/k9/notification/CertificateErrorNotifications;

    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/notification/CertificateErrorNotifications;->showCertificateErrorNotification(Lcom/fsck/k9/Account;Z)V

    .line 66
    return-void
.end method

.method public showFetchingMailNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Lcom/fsck/k9/mail/Folder;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationController;->syncNotifications:Lcom/fsck/k9/notification/SyncNotifications;

    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/notification/SyncNotifications;->showFetchingMailNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;)V

    .line 98
    return-void
.end method

.method public showSendFailedNotification(Lcom/fsck/k9/Account;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationController;->sendFailedNotifications:Lcom/fsck/k9/notification/SendFailedNotifications;

    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/notification/SendFailedNotifications;->showSendFailedNotification(Lcom/fsck/k9/Account;Ljava/lang/Exception;)V

    .line 90
    return-void
.end method

.method public showSendingNotification(Lcom/fsck/k9/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationController;->syncNotifications:Lcom/fsck/k9/notification/SyncNotifications;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/notification/SyncNotifications;->showSendingNotification(Lcom/fsck/k9/Account;)V

    .line 82
    return-void
.end method
