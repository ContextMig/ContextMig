.class public Lcom/fsck/k9/service/BootReceiver;
.super Lcom/fsck/k9/service/CoreReceiver;
.source "BootReceiver.java"


# static fields
.field public static final ALARMED_INTENT:Ljava/lang/String; = "com.fsck.k9.service.BroadcastReceiver.pendingIntent"

.field public static final AT_TIME:Ljava/lang/String; = "com.fsck.k9.service.BroadcastReceiver.atTime"

.field public static final CANCEL_INTENT:Ljava/lang/String; = "com.fsck.k9.service.BroadcastReceiver.cancelIntent"

.field public static final FIRE_INTENT:Ljava/lang/String; = "com.fsck.k9.service.BroadcastReceiver.fireIntent"

.field public static final SCHEDULE_INTENT:Ljava/lang/String; = "com.fsck.k9.service.BroadcastReceiver.scheduleIntent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/fsck/k9/service/CoreReceiver;-><init>()V

    return-void
.end method

.method private buildPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 78
    const-string v5, "com.fsck.k9.service.BroadcastReceiver.pendingIntent"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 79
    .local v1, "alarmedIntent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "alarmedAction":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/fsck/k9/service/BootReceiver;

    invoke-direct {v2, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v2, "i":Landroid/content/Intent;
    const-string v5, "com.fsck.k9.service.BroadcastReceiver.fireIntent"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v5, "com.fsck.k9.service.BroadcastReceiver.pendingIntent"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 85
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 86
    invoke-static {p1, v7, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 87
    .local v3, "pi":Landroid/app/PendingIntent;
    return-object v3
.end method

.method public static cancelIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarmedIntent"    # Landroid/content/Intent;

    .prologue
    .line 102
    const-string v1, "BootReceiver Got request to cancel alarmedIntent %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 105
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lcom/fsck/k9/service/BootReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 106
    const-string v1, "com.fsck.k9.service.BroadcastReceiver.cancelIntent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v1, "com.fsck.k9.service.BroadcastReceiver.pendingIntent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 109
    return-void
.end method

.method public static purgeSchedule(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-static {p0}, Lcom/fsck/k9/helper/K9AlarmManager;->getAlarmManager(Landroid/content/Context;)Lcom/fsck/k9/helper/K9AlarmManager;

    move-result-object v0

    .line 118
    .local v0, "alarmService":Lcom/fsck/k9/helper/K9AlarmManager;
    new-instance v1, Lcom/fsck/k9/service/BootReceiver$1;

    invoke-direct {v1}, Lcom/fsck/k9/service/BootReceiver$1;-><init>()V

    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/helper/K9AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 125
    return-void
.end method

.method public static scheduleIntent(Landroid/content/Context;JLandroid/content/Intent;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "atTime"    # J
    .param p3, "alarmedIntent"    # Landroid/content/Intent;

    .prologue
    .line 91
    const-string v1, "BootReceiver Got request to schedule alarmedIntent %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lcom/fsck/k9/service/BootReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 95
    const-string v1, "com.fsck.k9.service.BroadcastReceiver.scheduleIntent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v1, "com.fsck.k9.service.BroadcastReceiver.pendingIntent"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 97
    const-string v1, "com.fsck.k9.service.BroadcastReceiver.atTime"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    return-void
.end method


# virtual methods
.method public receive(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "tmpWakeLockId"    # Ljava/lang/Integer;

    .prologue
    .line 26
    const-string v8, "BootReceiver.onReceive %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "action":Ljava/lang/String;
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-object p3

    .line 32
    :cond_1
    const-string v8, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 33
    invoke-static {p1, p3}, Lcom/fsck/k9/service/MailService;->actionCancel(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 34
    const/4 p3, 0x0

    goto :goto_0

    .line 35
    :cond_2
    const-string v8, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 36
    invoke-static {p1, p3}, Lcom/fsck/k9/service/MailService;->actionReset(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 37
    const/4 p3, 0x0

    goto :goto_0

    .line 38
    :cond_3
    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 39
    invoke-static {p1, p3}, Lcom/fsck/k9/service/MailService;->connectivityChange(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 40
    const/4 p3, 0x0

    goto :goto_0

    .line 41
    :cond_4
    const-string v8, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 42
    invoke-static {}, Lcom/fsck/k9/K9;->getBackgroundOps()Lcom/fsck/k9/K9$BACKGROUND_OPS;

    move-result-object v6

    .line 43
    .local v6, "bOps":Lcom/fsck/k9/K9$BACKGROUND_OPS;
    sget-object v8, Lcom/fsck/k9/K9$BACKGROUND_OPS;->WHEN_CHECKED_AUTO_SYNC:Lcom/fsck/k9/K9$BACKGROUND_OPS;

    if-ne v6, v8, :cond_0

    .line 44
    invoke-static {p1, p3}, Lcom/fsck/k9/service/MailService;->actionReset(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 45
    const/4 p3, 0x0

    goto :goto_0

    .line 47
    .end local v6    # "bOps":Lcom/fsck/k9/K9$BACKGROUND_OPS;
    :cond_5
    const-string v8, "com.fsck.k9.service.BroadcastReceiver.fireIntent"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 48
    const-string v8, "com.fsck.k9.service.BroadcastReceiver.pendingIntent"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 49
    .local v3, "alarmedIntent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "alarmedAction":Ljava/lang/String;
    const-string v8, "BootReceiver Got alarm to fire alarmedIntent %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    const-string v8, "com.fsck.k9.service.CoreReceiver.wakeLockId"

    invoke-virtual {v3, v8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 52
    const/4 p3, 0x0

    .line 53
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 54
    .end local v2    # "alarmedAction":Ljava/lang/String;
    .end local v3    # "alarmedIntent":Landroid/content/Intent;
    :cond_6
    const-string v8, "com.fsck.k9.service.BroadcastReceiver.scheduleIntent"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 55
    const-string v8, "com.fsck.k9.service.BroadcastReceiver.atTime"

    const-wide/16 v10, -0x1

    invoke-virtual {p2, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 56
    .local v4, "atTime":J
    const-string v8, "com.fsck.k9.service.BroadcastReceiver.pendingIntent"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 57
    .restart local v3    # "alarmedIntent":Landroid/content/Intent;
    const-string v8, "BootReceiver Scheduling intent %s for %tc"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/service/BootReceiver;->buildPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 60
    .local v7, "pi":Landroid/app/PendingIntent;
    invoke-static {p1}, Lcom/fsck/k9/helper/K9AlarmManager;->getAlarmManager(Landroid/content/Context;)Lcom/fsck/k9/helper/K9AlarmManager;

    move-result-object v1

    .line 62
    .local v1, "alarmMgr":Lcom/fsck/k9/helper/K9AlarmManager;
    const/4 v8, 0x0

    invoke-virtual {v1, v8, v4, v5, v7}, Lcom/fsck/k9/helper/K9AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 63
    .end local v1    # "alarmMgr":Lcom/fsck/k9/helper/K9AlarmManager;
    .end local v3    # "alarmedIntent":Landroid/content/Intent;
    .end local v4    # "atTime":J
    .end local v7    # "pi":Landroid/app/PendingIntent;
    :cond_7
    const-string v8, "com.fsck.k9.service.BroadcastReceiver.cancelIntent"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 64
    const-string v8, "com.fsck.k9.service.BroadcastReceiver.pendingIntent"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 65
    .restart local v3    # "alarmedIntent":Landroid/content/Intent;
    const-string v8, "BootReceiver Canceling alarmedIntent %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/service/BootReceiver;->buildPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 69
    .restart local v7    # "pi":Landroid/app/PendingIntent;
    invoke-static {p1}, Lcom/fsck/k9/helper/K9AlarmManager;->getAlarmManager(Landroid/content/Context;)Lcom/fsck/k9/helper/K9AlarmManager;

    move-result-object v1

    .line 70
    .restart local v1    # "alarmMgr":Lcom/fsck/k9/helper/K9AlarmManager;
    invoke-virtual {v1, v7}, Lcom/fsck/k9/helper/K9AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method
