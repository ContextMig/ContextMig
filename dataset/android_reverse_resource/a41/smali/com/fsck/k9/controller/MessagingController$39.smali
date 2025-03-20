.class Lcom/fsck/k9/controller/MessagingController$39;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->clear(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$ml:Lcom/fsck/k9/controller/MessagingListener;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 3652
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$39;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$39;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$39;->val$ml:Lcom/fsck/k9/controller/MessagingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 3656
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$39;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v7

    .line 3657
    .local v7, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalStore;->getSize()J

    move-result-wide v2

    .line 3658
    .local v2, "oldSize":J
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalStore;->clear()V

    .line 3659
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$39;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getDisplayCount()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/fsck/k9/mailstore/LocalStore;->resetVisibleLimits(I)V

    .line 3660
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalStore;->getSize()J

    move-result-wide v4

    .line 3661
    .local v4, "newSize":J
    new-instance v8, Lcom/fsck/k9/AccountStats;

    invoke-direct {v8}, Lcom/fsck/k9/AccountStats;-><init>()V

    .line 3662
    .local v8, "stats":Lcom/fsck/k9/AccountStats;
    iput-wide v4, v8, Lcom/fsck/k9/AccountStats;->size:J

    .line 3663
    const/4 v1, 0x0

    iput v1, v8, Lcom/fsck/k9/AccountStats;->unreadMessageCount:I

    .line 3664
    const/4 v1, 0x0

    iput v1, v8, Lcom/fsck/k9/AccountStats;->flaggedMessageCount:I

    .line 3665
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$39;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v9, p0, Lcom/fsck/k9/controller/MessagingController$39;->val$ml:Lcom/fsck/k9/controller/MessagingListener;

    invoke-virtual {v1, v9}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/controller/MessagingListener;

    .line 3666
    .local v0, "l":Lcom/fsck/k9/controller/MessagingListener;
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$39;->val$account:Lcom/fsck/k9/Account;

    invoke-interface/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingListener;->accountSizeChanged(Lcom/fsck/k9/Account;JJ)V

    .line 3667
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$39;->val$account:Lcom/fsck/k9/Account;

    invoke-interface {v0, v1, v8}, Lcom/fsck/k9/controller/MessagingListener;->accountStatusChanged(Lcom/fsck/k9/BaseAccount;Lcom/fsck/k9/AccountStats;)V
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3669
    .end local v0    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v2    # "oldSize":J
    .end local v4    # "newSize":J
    .end local v7    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v8    # "stats":Lcom/fsck/k9/AccountStats;
    :catch_0
    move-exception v6

    .line 3670
    .local v6, "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    const-string v1, "Failed to clear account because storage is not available - trying again later."

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v1, v9}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3671
    new-instance v1, Lcom/fsck/k9/controller/UnavailableAccountException;

    invoke-direct {v1, v6}, Lcom/fsck/k9/controller/UnavailableAccountException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3672
    .end local v6    # "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    :catch_1
    move-exception v6

    .line 3673
    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "Failed to clear account %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/fsck/k9/controller/MessagingController$39;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v10}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v6, v1, v9}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3675
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method
