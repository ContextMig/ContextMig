.class public Lcom/fsck/k9/power/DozeChecker;
.super Ljava/lang/Object;
.source "DozeChecker.java"


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final powerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/fsck/k9/power/DozeChecker;->powerManager:Landroid/os/PowerManager;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/power/DozeChecker;->packageName:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public isAppWhitelisted()Z
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fsck/k9/power/DozeChecker;->powerManager:Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/fsck/k9/power/DozeChecker;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDeviceIdleModeSupported()Z
    .locals 2

    .prologue
    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
