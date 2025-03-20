.class public abstract Lcom/fsck/k9/power/DeviceIdleManager;
.super Ljava/lang/Object;
.source "DeviceIdleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/power/DeviceIdleManager$RealDeviceIdleManager;,
        Lcom/fsck/k9/power/DeviceIdleManager$NoOpDeviceIdleManager;
    }
.end annotation


# static fields
.field private static instance:Lcom/fsck/k9/power/DeviceIdleManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/power/DeviceIdleManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/power/DeviceIdleManager$1;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/fsck/k9/power/DeviceIdleManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/fsck/k9/power/DeviceIdleManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const-class v2, Lcom/fsck/k9/power/DeviceIdleManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/fsck/k9/power/DeviceIdleManager;->instance:Lcom/fsck/k9/power/DeviceIdleManager;

    if-nez v1, :cond_0

    .line 19
    new-instance v0, Lcom/fsck/k9/power/DozeChecker;

    invoke-direct {v0, p0}, Lcom/fsck/k9/power/DozeChecker;-><init>(Landroid/content/Context;)V

    .line 20
    .local v0, "dozeChecker":Lcom/fsck/k9/power/DozeChecker;
    invoke-virtual {v0}, Lcom/fsck/k9/power/DozeChecker;->isDeviceIdleModeSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/fsck/k9/power/DozeChecker;->isAppWhitelisted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 21
    invoke-static {p0}, Lcom/fsck/k9/power/DeviceIdleManager$RealDeviceIdleManager;->newInstance(Landroid/content/Context;)Lcom/fsck/k9/power/DeviceIdleManager$RealDeviceIdleManager;

    move-result-object v1

    sput-object v1, Lcom/fsck/k9/power/DeviceIdleManager;->instance:Lcom/fsck/k9/power/DeviceIdleManager;

    .line 26
    .end local v0    # "dozeChecker":Lcom/fsck/k9/power/DozeChecker;
    :cond_0
    :goto_0
    sget-object v1, Lcom/fsck/k9/power/DeviceIdleManager;->instance:Lcom/fsck/k9/power/DeviceIdleManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 23
    .restart local v0    # "dozeChecker":Lcom/fsck/k9/power/DozeChecker;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/fsck/k9/power/DeviceIdleManager$NoOpDeviceIdleManager;

    invoke-direct {v1}, Lcom/fsck/k9/power/DeviceIdleManager$NoOpDeviceIdleManager;-><init>()V

    sput-object v1, Lcom/fsck/k9/power/DeviceIdleManager;->instance:Lcom/fsck/k9/power/DeviceIdleManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 18
    .end local v0    # "dozeChecker":Lcom/fsck/k9/power/DozeChecker;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public abstract registerReceiver()V
.end method

.method public abstract unregisterReceiver()V
.end method
