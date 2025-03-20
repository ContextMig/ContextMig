.class Lcom/fsck/k9/service/CoreService$1;
.super Ljava/lang/Object;
.source "CoreService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/service/CoreService;->execute(Landroid/content/Context;Ljava/lang/Runnable;ILjava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/service/CoreService;

.field final synthetic val$autoShutdown:Z

.field final synthetic val$runner:Ljava/lang/Runnable;

.field final synthetic val$startId:Ljava/lang/Integer;

.field final synthetic val$wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;


# direct methods
.method constructor <init>(Lcom/fsck/k9/service/CoreService;Ljava/lang/Runnable;Ljava/lang/Integer;Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/service/CoreService;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/fsck/k9/service/CoreService$1;->this$0:Lcom/fsck/k9/service/CoreService;

    iput-object p2, p0, Lcom/fsck/k9/service/CoreService$1;->val$runner:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/fsck/k9/service/CoreService$1;->val$startId:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/fsck/k9/service/CoreService$1;->val$wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    iput-boolean p5, p0, Lcom/fsck/k9/service/CoreService$1;->val$autoShutdown:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 298
    :try_start_0
    invoke-static {}, Lcom/fsck/k9/service/MailService;->isSyncDisabled()Z

    move-result v0

    .line 300
    .local v0, "oldIsSyncDisabled":Z
    const-string v1, "CoreService (%s) running Runnable %d with startId %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fsck/k9/service/CoreService$1;->this$0:Lcom/fsck/k9/service/CoreService;

    .line 301
    invoke-static {v4}, Lcom/fsck/k9/service/CoreService;->access$000(Lcom/fsck/k9/service/CoreService;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/fsck/k9/service/CoreService$1;->val$runner:Ljava/lang/Runnable;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/fsck/k9/service/CoreService$1;->val$startId:Ljava/lang/Integer;

    aput-object v4, v2, v3

    .line 300
    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    iget-object v1, p0, Lcom/fsck/k9/service/CoreService$1;->val$runner:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 308
    invoke-static {}, Lcom/fsck/k9/service/MailService;->isSyncDisabled()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 309
    iget-object v1, p0, Lcom/fsck/k9/service/CoreService$1;->this$0:Lcom/fsck/k9/service/CoreService;

    invoke-virtual {v1}, Lcom/fsck/k9/service/CoreService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/controller/MessagingController;->systemStatusChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 314
    :cond_0
    :try_start_1
    const-string v1, "CoreService (%s) completed Runnable %d with startId %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fsck/k9/service/CoreService$1;->this$0:Lcom/fsck/k9/service/CoreService;

    .line 315
    invoke-static {v4}, Lcom/fsck/k9/service/CoreService;->access$000(Lcom/fsck/k9/service/CoreService;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/fsck/k9/service/CoreService$1;->val$runner:Ljava/lang/Runnable;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/fsck/k9/service/CoreService$1;->val$startId:Ljava/lang/Integer;

    aput-object v4, v2, v3

    .line 314
    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    iget-object v1, p0, Lcom/fsck/k9/service/CoreService$1;->val$wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    iget-boolean v1, p0, Lcom/fsck/k9/service/CoreService$1;->val$autoShutdown:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fsck/k9/service/CoreService$1;->val$startId:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/fsck/k9/service/CoreService$1;->this$0:Lcom/fsck/k9/service/CoreService;

    iget-object v2, p0, Lcom/fsck/k9/service/CoreService$1;->val$startId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/service/CoreService;->stopSelf(I)V

    .line 324
    :cond_1
    return-void

    .line 319
    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lcom/fsck/k9/service/CoreService$1;->val$autoShutdown:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/fsck/k9/service/CoreService$1;->val$startId:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 320
    iget-object v2, p0, Lcom/fsck/k9/service/CoreService$1;->this$0:Lcom/fsck/k9/service/CoreService;

    iget-object v3, p0, Lcom/fsck/k9/service/CoreService$1;->val$startId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/service/CoreService;->stopSelf(I)V

    :cond_2
    throw v1

    .line 313
    .end local v0    # "oldIsSyncDisabled":Z
    :catchall_1
    move-exception v1

    .line 314
    :try_start_2
    const-string v2, "CoreService (%s) completed Runnable %d with startId %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fsck/k9/service/CoreService$1;->this$0:Lcom/fsck/k9/service/CoreService;

    .line 315
    invoke-static {v5}, Lcom/fsck/k9/service/CoreService;->access$000(Lcom/fsck/k9/service/CoreService;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/fsck/k9/service/CoreService$1;->val$runner:Ljava/lang/Runnable;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/fsck/k9/service/CoreService$1;->val$startId:Ljava/lang/Integer;

    aput-object v5, v3, v4

    .line 314
    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    iget-object v2, p0, Lcom/fsck/k9/service/CoreService$1;->val$wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 319
    iget-boolean v2, p0, Lcom/fsck/k9/service/CoreService$1;->val$autoShutdown:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/fsck/k9/service/CoreService$1;->val$startId:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 320
    iget-object v2, p0, Lcom/fsck/k9/service/CoreService$1;->this$0:Lcom/fsck/k9/service/CoreService;

    iget-object v3, p0, Lcom/fsck/k9/service/CoreService$1;->val$startId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/service/CoreService;->stopSelf(I)V

    :cond_3
    throw v1

    .line 319
    :catchall_2
    move-exception v1

    iget-boolean v2, p0, Lcom/fsck/k9/service/CoreService$1;->val$autoShutdown:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/fsck/k9/service/CoreService$1;->val$startId:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 320
    iget-object v2, p0, Lcom/fsck/k9/service/CoreService$1;->this$0:Lcom/fsck/k9/service/CoreService;

    iget-object v3, p0, Lcom/fsck/k9/service/CoreService$1;->val$startId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/service/CoreService;->stopSelf(I)V

    :cond_4
    throw v1
.end method
