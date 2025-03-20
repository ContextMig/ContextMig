.class Lcom/fsck/k9/controller/MessagingController$21;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->sendPendingMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 2480
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$21;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$21;->val$account:Lcom/fsck/k9/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2483
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$21;->val$account:Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$21;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->access$1400(Lcom/fsck/k9/controller/MessagingController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2484
    new-instance v0, Lcom/fsck/k9/controller/UnavailableAccountException;

    invoke-direct {v0}, Lcom/fsck/k9/controller/UnavailableAccountException;-><init>()V

    throw v0

    .line 2486
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$21;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$21;->val$account:Lcom/fsck/k9/Account;

    invoke-static {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->access$1500(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2488
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$21;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$21;->val$account:Lcom/fsck/k9/Account;

    invoke-static {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->access$1600(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V

    .line 2491
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$21;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$21;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->sendPendingMessagesSynchronous(Lcom/fsck/k9/Account;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2493
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$21;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$21;->val$account:Lcom/fsck/k9/Account;

    invoke-static {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->access$1700(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V

    .line 2496
    :cond_1
    return-void

    .line 2493
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$21;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$21;->val$account:Lcom/fsck/k9/Account;

    invoke-static {v1, v2}, Lcom/fsck/k9/controller/MessagingController;->access$1700(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V

    throw v0
.end method
