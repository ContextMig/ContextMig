.class Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock$1;
.super Ljava/util/TimerTask;
.source "TracingPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->raiseNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock$1;->this$1:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 130
    iget-object v1, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock$1;->this$1:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    iget-object v1, v1, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->startTime:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 132
    .local v0, "endTime":Ljava/lang/Long;
    const-string v1, "TracingWakeLock for tag %s / id %d: has been active for %d ms, timeout = %d ms"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock$1;->this$1:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    iget-object v3, v3, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->tag:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock$1;->this$1:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    iget v3, v3, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->id:I

    .line 133
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v3, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock$1;->this$1:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    iget-object v3, v3, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->startTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock$1;->this$1:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    iget-object v3, v3, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->timeout:Ljava/lang/Long;

    aput-object v3, v2, v9

    .line 132
    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    .end local v0    # "endTime":Ljava/lang/Long;
    :goto_0
    return-void

    .line 136
    :cond_0
    const-string v1, "TracingWakeLock for tag %s / id %d: still active, timeout = %d ms"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock$1;->this$1:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    iget-object v3, v3, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->tag:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock$1;->this$1:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    iget v3, v3, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->id:I

    .line 137
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock$1;->this$1:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    iget-object v3, v3, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->timeout:Ljava/lang/Long;

    aput-object v3, v2, v8

    .line 136
    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
