.class public Lcom/fsck/k9/service/CoreReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CoreReceiver.java"


# static fields
.field public static final WAKE_LOCK_ID:Ljava/lang/String; = "com.fsck.k9.service.CoreReceiver.wakeLockId"

.field public static final WAKE_LOCK_RELEASE:Ljava/lang/String; = "com.fsck.k9.service.CoreReceiver.wakeLockRelease"

.field private static wakeLockSeq:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static wakeLocks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/fsck/k9/service/CoreReceiver;->wakeLocks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/fsck/k9/service/CoreReceiver;->wakeLockSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static getWakeLock(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 27
    invoke-static {p0}, Lcom/fsck/k9/mail/power/TracingPowerManager;->getPowerManager(Landroid/content/Context;)Lcom/fsck/k9/mail/power/TracingPowerManager;

    move-result-object v0

    .line 28
    .local v0, "pm":Lcom/fsck/k9/mail/power/TracingPowerManager;
    const-string v3, "CoreReceiver getWakeLock"

    invoke-virtual {v0, v7, v3}, Lcom/fsck/k9/mail/power/TracingPowerManager;->newWakeLock(ILjava/lang/String;)Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    move-result-object v2

    .line 29
    .local v2, "wakeLock":Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;
    invoke-virtual {v2, v6}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->setReferenceCounted(Z)V

    .line 30
    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v4, v5}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->acquire(J)V

    .line 31
    sget-object v3, Lcom/fsck/k9/service/CoreReceiver;->wakeLockSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 32
    .local v1, "tmpWakeLockId":Ljava/lang/Integer;
    sget-object v3, Lcom/fsck/k9/service/CoreReceiver;->wakeLocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v3, "CoreReceiver Created wakeLock %d"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    return-object v1
.end method

.method public static releaseWakeLock(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wakeLockId"    # I

    .prologue
    .line 74
    const-string v1, "CoreReceiver Got request to release wakeLock %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lcom/fsck/k9/service/CoreReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 78
    const-string v1, "com.fsck.k9.service.CoreReceiver.wakeLockRelease"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v1, "com.fsck.k9.service.CoreReceiver.wakeLockId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 81
    return-void
.end method

.method private static releaseWakeLock(Ljava/lang/Integer;)V
    .locals 4
    .param p0, "wakeLockId"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 38
    if-eqz p0, :cond_0

    .line 39
    sget-object v1, Lcom/fsck/k9/service/CoreReceiver;->wakeLocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    .line 40
    .local v0, "wl":Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;
    if-eqz v0, :cond_1

    .line 41
    const-string v1, "CoreReceiver Releasing wakeLock %d"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v0}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->release()V

    .line 47
    .end local v0    # "wl":Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;
    :cond_0
    :goto_0
    return-void

    .line 44
    .restart local v0    # "wl":Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;
    :cond_1
    const-string v1, "BootReceiver WakeLock %d doesn\'t exist"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 51
    invoke-static {p1}, Lcom/fsck/k9/service/CoreReceiver;->getWakeLock(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    .line 53
    .local v0, "tmpWakeLockId":Ljava/lang/Integer;
    :try_start_0
    const-string v2, "CoreReceiver.onReceive %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    const-string v2, "com.fsck.k9.service.CoreReceiver.wakeLockRelease"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    const-string v2, "com.fsck.k9.service.CoreReceiver.wakeLockId"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 57
    .local v1, "wakeLockId":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 58
    const-string v2, "CoreReceiver Release wakeLock %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-static {v1}, Lcom/fsck/k9/service/CoreReceiver;->releaseWakeLock(Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .end local v1    # "wakeLockId":Ljava/lang/Integer;
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/fsck/k9/service/CoreReceiver;->releaseWakeLock(Ljava/lang/Integer;)V

    .line 67
    return-void

    .line 62
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/fsck/k9/service/CoreReceiver;->receive(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Integer;)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/fsck/k9/service/CoreReceiver;->releaseWakeLock(Ljava/lang/Integer;)V

    throw v2
.end method

.method public receive(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "wakeLockId"    # Ljava/lang/Integer;

    .prologue
    .line 70
    return-object p3
.end method
