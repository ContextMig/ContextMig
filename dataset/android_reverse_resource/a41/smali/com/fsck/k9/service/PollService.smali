.class public Lcom/fsck/k9/service/PollService;
.super Lcom/fsck/k9/service/CoreService;
.source "PollService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/service/PollService$Listener;
    }
.end annotation


# static fields
.field private static START_SERVICE:Ljava/lang/String;

.field private static STOP_SERVICE:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/fsck/k9/service/PollService$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "com.fsck.k9.service.PollService.startService"

    sput-object v0, Lcom/fsck/k9/service/PollService;->START_SERVICE:Ljava/lang/String;

    .line 19
    const-string v0, "com.fsck.k9.service.PollService.stopService"

    sput-object v0, Lcom/fsck/k9/service/PollService;->STOP_SERVICE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/fsck/k9/service/CoreService;-><init>()V

    .line 21
    new-instance v0, Lcom/fsck/k9/service/PollService$Listener;

    invoke-direct {v0, p0}, Lcom/fsck/k9/service/PollService$Listener;-><init>(Lcom/fsck/k9/service/PollService;)V

    iput-object v0, p0, Lcom/fsck/k9/service/PollService;->mListener:Lcom/fsck/k9/service/PollService$Listener;

    return-void
.end method

.method public static startService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 25
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lcom/fsck/k9/service/PollService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 26
    sget-object v1, Lcom/fsck/k9/service/PollService;->START_SERVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    invoke-static {p0, v0}, Lcom/fsck/k9/service/PollService;->addWakeLock(Landroid/content/Context;Landroid/content/Intent;)V

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 29
    return-void
.end method

.method public static stopService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 33
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lcom/fsck/k9/service/PollService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 34
    sget-object v1, Lcom/fsck/k9/service/PollService;->STOP_SERVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-static {p0, v0}, Lcom/fsck/k9/service/PollService;->addWakeLock(Landroid/content/Context;Landroid/content/Intent;)V

    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 37
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/fsck/k9/service/CoreService;->onCreate()V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/service/PollService;->setAutoShutdown(Z)V

    .line 43
    return-void
.end method

.method public startService(Landroid/content/Intent;I)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v3, 0x0

    .line 47
    sget-object v1, Lcom/fsck/k9/service/PollService;->START_SERVICE:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    const-string v1, "PollService started with startId = %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p0}, Lcom/fsck/k9/service/PollService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    .line 51
    .local v0, "controller":Lcom/fsck/k9/controller/MessagingController;
    invoke-virtual {v0}, Lcom/fsck/k9/controller/MessagingController;->getCheckMailListener()Lcom/fsck/k9/controller/MessagingListener;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/service/PollService$Listener;

    .line 52
    .local v6, "listener":Lcom/fsck/k9/service/PollService$Listener;
    if-nez v6, :cond_1

    .line 53
    const-string v1, "***** PollService *****: starting new check"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v1, p0, Lcom/fsck/k9/service/PollService;->mListener:Lcom/fsck/k9/service/PollService$Listener;

    invoke-virtual {v1, p2}, Lcom/fsck/k9/service/PollService$Listener;->setStartId(I)V

    .line 55
    iget-object v1, p0, Lcom/fsck/k9/service/PollService;->mListener:Lcom/fsck/k9/service/PollService$Listener;

    invoke-virtual {v1}, Lcom/fsck/k9/service/PollService$Listener;->wakeLockAcquire()V

    .line 56
    iget-object v1, p0, Lcom/fsck/k9/service/PollService;->mListener:Lcom/fsck/k9/service/PollService$Listener;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->setCheckMailListener(Lcom/fsck/k9/controller/MessagingListener;)V

    .line 57
    const/4 v2, 0x0

    iget-object v5, p0, Lcom/fsck/k9/service/PollService;->mListener:Lcom/fsck/k9/service/PollService$Listener;

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController;->checkMail(Landroid/content/Context;Lcom/fsck/k9/Account;ZZLcom/fsck/k9/controller/MessagingListener;)V

    .line 68
    .end local v0    # "controller":Lcom/fsck/k9/controller/MessagingController;
    .end local v6    # "listener":Lcom/fsck/k9/service/PollService$Listener;
    :cond_0
    :goto_0
    const/4 v1, 0x2

    return v1

    .line 59
    .restart local v0    # "controller":Lcom/fsck/k9/controller/MessagingController;
    .restart local v6    # "listener":Lcom/fsck/k9/service/PollService$Listener;
    :cond_1
    const-string v1, "***** PollService *****: renewing WakeLock"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-virtual {v6, p2}, Lcom/fsck/k9/service/PollService$Listener;->setStartId(I)V

    .line 61
    invoke-virtual {v6}, Lcom/fsck/k9/service/PollService$Listener;->wakeLockAcquire()V

    goto :goto_0

    .line 63
    .end local v0    # "controller":Lcom/fsck/k9/controller/MessagingController;
    .end local v6    # "listener":Lcom/fsck/k9/service/PollService$Listener;
    :cond_2
    sget-object v1, Lcom/fsck/k9/service/PollService;->STOP_SERVICE:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const-string v1, "PollService stopping"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p0}, Lcom/fsck/k9/service/PollService;->stopSelf()V

    goto :goto_0
.end method
