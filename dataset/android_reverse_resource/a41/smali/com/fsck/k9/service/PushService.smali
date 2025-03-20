.class public Lcom/fsck/k9/service/PushService;
.super Lcom/fsck/k9/service/CoreService;
.source "PushService.java"


# static fields
.field private static START_SERVICE:Ljava/lang/String;

.field private static STOP_SERVICE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "com.fsck.k9.service.PushService.startService"

    sput-object v0, Lcom/fsck/k9/service/PushService;->START_SERVICE:Ljava/lang/String;

    .line 10
    const-string v0, "com.fsck.k9.service.PushService.stopService"

    sput-object v0, Lcom/fsck/k9/service/PushService;->STOP_SERVICE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/fsck/k9/service/CoreService;-><init>()V

    return-void
.end method

.method public static startService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 14
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lcom/fsck/k9/service/PushService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 15
    sget-object v1, Lcom/fsck/k9/service/PushService;->START_SERVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-static {p0, v0}, Lcom/fsck/k9/service/PushService;->addWakeLock(Landroid/content/Context;Landroid/content/Intent;)V

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 18
    return-void
.end method

.method public static stopService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 22
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lcom/fsck/k9/service/PushService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 23
    sget-object v1, Lcom/fsck/k9/service/PushService;->STOP_SERVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    invoke-static {p0, v0}, Lcom/fsck/k9/service/PushService;->addWakeLock(Landroid/content/Context;Landroid/content/Intent;)V

    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 26
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/fsck/k9/service/CoreService;->onCreate()V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/service/PushService;->setAutoShutdown(Z)V

    .line 46
    return-void
.end method

.method public startService(Landroid/content/Intent;I)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 30
    const/4 v0, 0x1

    .line 31
    .local v0, "startFlag":I
    sget-object v1, Lcom/fsck/k9/service/PushService;->START_SERVICE:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    const-string v1, "PushService started with startId = %d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    :cond_0
    :goto_0
    return v0

    .line 33
    :cond_1
    sget-object v1, Lcom/fsck/k9/service/PushService;->STOP_SERVICE:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const-string v1, "PushService stopping with startId = %d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p0, p2}, Lcom/fsck/k9/service/PushService;->stopSelf(I)V

    .line 36
    const/4 v0, 0x2

    goto :goto_0
.end method
