.class public Lcom/fsck/k9/mail/power/TracingPowerManager;
.super Ljava/lang/Object;
.source "TracingPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;
    }
.end annotation


# static fields
.field private static final TRACE:Z

.field private static tracingPowerManager:Lcom/fsck/k9/mail/power/TracingPowerManager;

.field public static wakeLockId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field pm:Landroid/os/PowerManager;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/fsck/k9/mail/power/TracingPowerManager;->wakeLockId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager;->pm:Landroid/os/PowerManager;

    .line 22
    iput-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager;->timer:Ljava/util/Timer;

    .line 37
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager;->pm:Landroid/os/PowerManager;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/mail/power/TracingPowerManager;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/power/TracingPowerManager;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method public static declared-synchronized getPowerManager(Landroid/content/Context;)Lcom/fsck/k9/mail/power/TracingPowerManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const-class v2, Lcom/fsck/k9/mail/power/TracingPowerManager;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 26
    .local v0, "appContext":Landroid/content/Context;
    sget-object v1, Lcom/fsck/k9/mail/power/TracingPowerManager;->tracingPowerManager:Lcom/fsck/k9/mail/power/TracingPowerManager;

    if-nez v1, :cond_1

    .line 27
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    const-string v1, "Creating TracingPowerManager"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    :cond_0
    new-instance v1, Lcom/fsck/k9/mail/power/TracingPowerManager;

    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/power/TracingPowerManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/fsck/k9/mail/power/TracingPowerManager;->tracingPowerManager:Lcom/fsck/k9/mail/power/TracingPowerManager;

    .line 32
    :cond_1
    sget-object v1, Lcom/fsck/k9/mail/power/TracingPowerManager;->tracingPowerManager:Lcom/fsck/k9/mail/power/TracingPowerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 25
    .end local v0    # "appContext":Landroid/content/Context;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public newWakeLock(ILjava/lang/String;)Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;
    .locals 1
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    invoke-direct {v0, p0, p1, p2}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;-><init>(Lcom/fsck/k9/mail/power/TracingPowerManager;ILjava/lang/String;)V

    return-object v0
.end method
