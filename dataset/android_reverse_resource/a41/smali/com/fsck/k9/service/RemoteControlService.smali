.class public Lcom/fsck/k9/service/RemoteControlService;
.super Lcom/fsck/k9/service/CoreService;
.source "RemoteControlService.java"


# static fields
.field private static final PUSH_RESTART_ACTION:Ljava/lang/String; = "com.fsck.k9.service.RemoteControlService.PUSH_RESTART_ACTION"

.field public static final REMOTE_CONTROL_SERVICE_WAKE_LOCK_TIMEOUT:I = 0x4e20

.field private static final RESCHEDULE_ACTION:Ljava/lang/String; = "com.fsck.k9.service.RemoteControlService.RESCHEDULE_ACTION"

.field private static final SET_ACTION:Ljava/lang/String; = "com.fsck.k9.service.RemoteControlService.SET_ACTION"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/fsck/k9/service/CoreService;-><init>()V

    return-void
.end method

.method public static set(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Integer;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "i"    # Landroid/content/Intent;
    .param p2, "wakeLockId"    # Ljava/lang/Integer;

    .prologue
    .line 30
    const-class v0, Lcom/fsck/k9/service/RemoteControlService;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 31
    const-string v0, "com.fsck.k9.service.RemoteControlService.SET_ACTION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/fsck/k9/service/RemoteControlService;->addWakeLockId(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Integer;Z)V

    .line 33
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 34
    return-void
.end method


# virtual methods
.method public startService(Landroid/content/Intent;I)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 40
    const-string v1, "RemoteControlService started with startId = %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v0

    .line 43
    .local v0, "preferences":Lcom/fsck/k9/Preferences;
    const-string v1, "com.fsck.k9.service.RemoteControlService.RESCHEDULE_ACTION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const-string v1, "RemoteControlService requesting MailService poll reschedule"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-static {p0, v5}, Lcom/fsck/k9/service/MailService;->actionReschedulePoll(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 47
    :cond_0
    const-string v1, "com.fsck.k9.service.RemoteControlService.PUSH_RESTART_ACTION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    const-string v1, "RemoteControlService requesting MailService push restart"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-static {p0, v5}, Lcom/fsck/k9/service/MailService;->actionRestartPushers(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 154
    :cond_1
    :goto_0
    const/4 v1, 0x2

    return v1

    .line 50
    :cond_2
    const-string v1, "com.fsck.k9.service.RemoteControlService.SET_ACTION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    const-string v1, "RemoteControlService got request to change settings"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p0}, Lcom/fsck/k9/service/RemoteControlService;->getApplication()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Lcom/fsck/k9/service/RemoteControlService$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/fsck/k9/service/RemoteControlService$1;-><init>(Lcom/fsck/k9/service/RemoteControlService;Landroid/content/Intent;Lcom/fsck/k9/Preferences;)V

    const/16 v3, 0x4e20

    .line 151
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 52
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/fsck/k9/service/RemoteControlService;->execute(Landroid/content/Context;Ljava/lang/Runnable;ILjava/lang/Integer;)V

    goto :goto_0
.end method
