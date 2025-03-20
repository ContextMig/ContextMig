.class Lcom/fsck/k9/controller/MessagingController$35$1;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController$35;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/controller/MessagingController$35;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController$35;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/controller/MessagingController$35;

    .prologue
    .line 3462
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$35$1;->this$1:Lcom/fsck/k9/controller/MessagingController$35;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3466
    const-string v1, "Finished mail sync"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3468
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$35$1;->this$1:Lcom/fsck/k9/controller/MessagingController$35;

    iget-object v1, v1, Lcom/fsck/k9/controller/MessagingController$35;->val$wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    if-eqz v1, :cond_0

    .line 3469
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$35$1;->this$1:Lcom/fsck/k9/controller/MessagingController$35;

    iget-object v1, v1, Lcom/fsck/k9/controller/MessagingController$35;->val$wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->release()V

    .line 3471
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$35$1;->this$1:Lcom/fsck/k9/controller/MessagingController$35;

    iget-object v1, v1, Lcom/fsck/k9/controller/MessagingController$35;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/controller/MessagingListener;

    .line 3472
    .local v0, "l":Lcom/fsck/k9/controller/MessagingListener;
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$35$1;->this$1:Lcom/fsck/k9/controller/MessagingController$35;

    iget-object v2, v2, Lcom/fsck/k9/controller/MessagingController$35;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$35$1;->this$1:Lcom/fsck/k9/controller/MessagingController$35;

    iget-object v3, v3, Lcom/fsck/k9/controller/MessagingController$35;->val$account:Lcom/fsck/k9/Account;

    invoke-interface {v0, v2, v3}, Lcom/fsck/k9/controller/MessagingListener;->checkMailFinished(Landroid/content/Context;Lcom/fsck/k9/Account;)V

    goto :goto_0

    .line 3475
    .end local v0    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_1
    return-void
.end method
