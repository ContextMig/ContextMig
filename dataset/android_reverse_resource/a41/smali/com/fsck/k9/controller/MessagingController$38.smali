.class Lcom/fsck/k9/controller/MessagingController$38;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->compact(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V
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
    .line 3630
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$38;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$38;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$38;->val$ml:Lcom/fsck/k9/controller/MessagingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 3634
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$38;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v7

    .line 3635
    .local v7, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalStore;->getSize()J

    move-result-wide v2

    .line 3636
    .local v2, "oldSize":J
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalStore;->compact()V

    .line 3637
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalStore;->getSize()J

    move-result-wide v4

    .line 3638
    .local v4, "newSize":J
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$38;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v8, p0, Lcom/fsck/k9/controller/MessagingController$38;->val$ml:Lcom/fsck/k9/controller/MessagingListener;

    invoke-virtual {v1, v8}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/controller/MessagingListener;

    .line 3639
    .local v0, "l":Lcom/fsck/k9/controller/MessagingListener;
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$38;->val$account:Lcom/fsck/k9/Account;

    invoke-interface/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingListener;->accountSizeChanged(Lcom/fsck/k9/Account;JJ)V
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3641
    .end local v0    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v2    # "oldSize":J
    .end local v4    # "newSize":J
    .end local v7    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    :catch_0
    move-exception v6

    .line 3642
    .local v6, "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    const-string v1, "Failed to compact account because storage is not available - trying again later."

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v1, v8}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3643
    new-instance v1, Lcom/fsck/k9/controller/UnavailableAccountException;

    invoke-direct {v1, v6}, Lcom/fsck/k9/controller/UnavailableAccountException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3644
    .end local v6    # "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    :catch_1
    move-exception v6

    .line 3645
    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "Failed to compact account %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/fsck/k9/controller/MessagingController$38;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v9}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v6, v1, v8}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3647
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method
