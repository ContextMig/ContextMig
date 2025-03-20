.class Lcom/fsck/k9/power/DeviceIdleManager$RealDeviceIdleManager;
.super Lcom/fsck/k9/power/DeviceIdleManager;
.source "DeviceIdleManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/power/DeviceIdleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RealDeviceIdleManager"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final deviceIdleReceiver:Lcom/fsck/k9/power/DeviceIdleReceiver;

.field private final intentFilter:Landroid/content/IntentFilter;

.field private registered:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/fsck/k9/power/DeviceIdleManager;-><init>(Lcom/fsck/k9/power/DeviceIdleManager$1;)V

    .line 62
    iput-object p1, p0, Lcom/fsck/k9/power/DeviceIdleManager$RealDeviceIdleManager;->context:Landroid/content/Context;

    .line 63
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 64
    .local v0, "powerManager":Landroid/os/PowerManager;
    new-instance v1, Lcom/fsck/k9/power/DeviceIdleReceiver;

    invoke-direct {v1, v0}, Lcom/fsck/k9/power/DeviceIdleReceiver;-><init>(Landroid/os/PowerManager;)V

    iput-object v1, p0, Lcom/fsck/k9/power/DeviceIdleManager$RealDeviceIdleManager;->deviceIdleReceiver:Lcom/fsck/k9/power/DeviceIdleReceiver;

    .line 65
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/fsck/k9/power/DeviceIdleManager$RealDeviceIdleManager;->intentFilter:Landroid/content/IntentFilter;

    .line 66
    return-void
.end method

.method static newInstance(Landroid/content/Context;)Lcom/fsck/k9/power/DeviceIdleManager$RealDeviceIdleManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Lcom/fsck/k9/power/DeviceIdleManager$RealDeviceIdleManager;

    invoke-direct {v1, v0}, Lcom/fsck/k9/power/DeviceIdleManager$RealDeviceIdleManager;-><init>(Landroid/content/Context;)V

    return-object v1
.end method


# virtual methods
.method public registerReceiver()V
    .locals 3

    .prologue
    .line 70
    const-string v0, "Registering DeviceIdleReceiver"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/power/DeviceIdleManager$RealDeviceIdleManager;->registered:Z

    .line 72
    iget-object v0, p0, Lcom/fsck/k9/power/DeviceIdleManager$RealDeviceIdleManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/fsck/k9/power/DeviceIdleManager$RealDeviceIdleManager;->deviceIdleReceiver:Lcom/fsck/k9/power/DeviceIdleReceiver;

    iget-object v2, p0, Lcom/fsck/k9/power/DeviceIdleManager$RealDeviceIdleManager;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    return-void
.end method

.method public unregisterReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    const-string v0, "Unregistering DeviceIdleReceiver"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget-boolean v0, p0, Lcom/fsck/k9/power/DeviceIdleManager$RealDeviceIdleManager;->registered:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/fsck/k9/power/DeviceIdleManager$RealDeviceIdleManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/fsck/k9/power/DeviceIdleManager$RealDeviceIdleManager;->deviceIdleReceiver:Lcom/fsck/k9/power/DeviceIdleReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 80
    iput-boolean v2, p0, Lcom/fsck/k9/power/DeviceIdleManager$RealDeviceIdleManager;->registered:Z

    .line 82
    :cond_0
    return-void
.end method
