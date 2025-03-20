.class Lcom/fsck/k9/power/DeviceIdleManager$NoOpDeviceIdleManager;
.super Lcom/fsck/k9/power/DeviceIdleManager;
.source "DeviceIdleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/power/DeviceIdleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NoOpDeviceIdleManager"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fsck/k9/power/DeviceIdleManager;-><init>(Lcom/fsck/k9/power/DeviceIdleManager$1;)V

    return-void
.end method


# virtual methods
.method public registerReceiver()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public unregisterReceiver()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method
