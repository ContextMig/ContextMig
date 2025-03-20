.class public Lorg/mozilla/focus/session/SessionNotificationService;
.super Landroid/app/Service;
.source "SessionNotificationService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private buildNotification()Landroid/app/Notification;
    .locals 5

    .prologue
    const v4, 0x7f080092

    const/4 v2, 0x1

    .line 91
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "browsing-session"

    invoke-direct {v0, p0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f0f0028

    .line 94
    invoke-virtual {p0, v1}, Lorg/mozilla/focus/session/SessionNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f0f009d

    .line 95
    invoke-virtual {p0, v1}, Lorg/mozilla/focus/session/SessionNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 96
    invoke-direct {p0}, Lorg/mozilla/focus/session/SessionNotificationService;->createNotificationIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 97
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 98
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setShowWhen(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f060036

    .line 100
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    new-instance v1, Landroid/support/v4/app/NotificationCompat$Action;

    const v2, 0x7f0f009a

    .line 103
    invoke-virtual {p0, v2}, Lorg/mozilla/focus/session/SessionNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-direct {p0}, Lorg/mozilla/focus/session/SessionNotificationService;->createOpenActionIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 101
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    new-instance v1, Landroid/support/v4/app/NotificationCompat$Action;

    const v2, 0x7f080088

    const v3, 0x7f0f0099

    .line 107
    invoke-virtual {p0, v3}, Lorg/mozilla/focus/session/SessionNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-direct {p0}, Lorg/mozilla/focus/session/SessionNotificationService;->createOpenAndEraseActionIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 105
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 91
    return-object v0
.end method

.method private createNotificationIntent()Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/mozilla/focus/session/SessionNotificationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "erase"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private createOpenActionIntent()Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/mozilla/focus/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "open"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const/4 v1, 0x1

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private createOpenAndEraseActionIntent()Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/mozilla/focus/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "erase"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v1, "notification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 133
    const/4 v1, 0x2

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method static start(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/mozilla/focus/session/SessionNotificationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "start"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method static stop(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/mozilla/focus/session/SessionNotificationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 50
    return-void
.end method


# virtual methods
.method public createNotificationChannelIfNeeded()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 137
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-ge v4, v5, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {p0, v4}, Lorg/mozilla/focus/session/SessionNotificationService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 143
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v3, :cond_0

    .line 147
    const v4, 0x7f0f009c

    invoke-virtual {p0, v4}, Lorg/mozilla/focus/session/SessionNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "notificationChannelName":Ljava/lang/String;
    const v4, 0x7f0f009b

    new-array v5, v8, [Ljava/lang/Object;

    const v6, 0x7f0f0028

    .line 150
    invoke-virtual {p0, v6}, Lorg/mozilla/focus/session/SessionNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 148
    invoke-virtual {p0, v4, v5}, Lorg/mozilla/focus/session/SessionNotificationService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "notificationChannelDescription":Ljava/lang/String;
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v4, "browsing-session"

    invoke-direct {v0, v4, v2, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 154
    .local v0, "channel":Landroid/app/NotificationChannel;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 155
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, v7}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 157
    invoke-virtual {v0, v7}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 158
    invoke-virtual {v0, v8}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 160
    invoke-virtual {v3, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x2

    .line 54
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 77
    :goto_0
    return v3

    .line 59
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 74
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :sswitch_0
    const-string v2, "start"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "erase"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 61
    :pswitch_0
    invoke-virtual {p0}, Lorg/mozilla/focus/session/SessionNotificationService;->createNotificationChannelIfNeeded()V

    .line 62
    const/16 v1, 0x53

    invoke-direct {p0}, Lorg/mozilla/focus/session/SessionNotificationService;->buildNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/mozilla/focus/session/SessionNotificationService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    .line 66
    :pswitch_1
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->eraseNotificationEvent()V

    .line 68
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/focus/session/SessionManager;->removeAllSessions()V

    .line 70
    invoke-static {p0}, Lorg/mozilla/focus/session/VisibilityLifeCycleCallback;->finishAndRemoveTaskIfInBackground(Landroid/content/Context;)V

    goto :goto_0

    .line 59
    nop

    :sswitch_data_0
    .sparse-switch
        0x5c492a6 -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 82
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->eraseTaskRemoved()V

    .line 84
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/focus/session/SessionManager;->removeAllSessions()V

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/session/SessionNotificationService;->stopForeground(Z)V

    .line 87
    invoke-virtual {p0}, Lorg/mozilla/focus/session/SessionNotificationService;->stopSelf()V

    .line 88
    return-void
.end method
