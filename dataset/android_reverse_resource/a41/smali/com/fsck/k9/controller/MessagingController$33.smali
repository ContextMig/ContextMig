.class Lcom/fsck/k9/controller/MessagingController$33;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->emptyTrash(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V
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
    .line 3288
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$33;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$33;->val$account:Lcom/fsck/k9/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 3291
    const/4 v5, 0x0

    .line 3293
    .local v5, "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    :try_start_0
    iget-object v7, p0, Lcom/fsck/k9/controller/MessagingController$33;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v7}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v6

    .line 3294
    .local v6, "localStore":Lcom/fsck/k9/mail/Store;
    iget-object v7, p0, Lcom/fsck/k9/controller/MessagingController$33;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v7}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/fsck/k9/mailstore/LocalFolder;

    move-object v5, v0

    .line 3295
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 3297
    iget-object v7, p0, Lcom/fsck/k9/controller/MessagingController$33;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v8, p0, Lcom/fsck/k9/controller/MessagingController$33;->val$account:Lcom/fsck/k9/Account;

    invoke-static {v7, v8}, Lcom/fsck/k9/controller/MessagingController;->access$2500(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)Z

    move-result v3

    .line 3298
    .local v3, "isTrashLocalOnly":Z
    if-eqz v3, :cond_0

    .line 3299
    invoke-virtual {v5}, Lcom/fsck/k9/mailstore/LocalFolder;->clearAllMessages()V

    .line 3304
    :goto_0
    iget-object v7, p0, Lcom/fsck/k9/controller/MessagingController$33;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {v7}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/controller/MessagingListener;

    .line 3305
    .local v4, "l":Lcom/fsck/k9/controller/MessagingListener;
    iget-object v8, p0, Lcom/fsck/k9/controller/MessagingController$33;->val$account:Lcom/fsck/k9/Account;

    invoke-interface {v4, v8}, Lcom/fsck/k9/controller/MessagingListener;->emptyTrashCompleted(Lcom/fsck/k9/Account;)V
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 3313
    .end local v3    # "isTrashLocalOnly":Z
    .end local v4    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v6    # "localStore":Lcom/fsck/k9/mail/Store;
    :catch_0
    move-exception v2

    .line 3314
    .local v2, "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    :try_start_1
    const-string v7, "Failed to empty trash because storage is not available - trying again later."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3315
    new-instance v7, Lcom/fsck/k9/controller/UnavailableAccountException;

    invoke-direct {v7, v2}, Lcom/fsck/k9/controller/UnavailableAccountException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3319
    .end local v2    # "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    :catchall_0
    move-exception v7

    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->access$1300(Lcom/fsck/k9/mail/Folder;)V

    throw v7

    .line 3301
    .restart local v3    # "isTrashLocalOnly":Z
    .restart local v6    # "localStore":Lcom/fsck/k9/mail/Store;
    :cond_0
    :try_start_2
    sget-object v7, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-static {v7}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lcom/fsck/k9/mailstore/LocalFolder;->setFlags(Ljava/util/Set;Z)V
    :try_end_2
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3316
    .end local v3    # "isTrashLocalOnly":Z
    .end local v6    # "localStore":Lcom/fsck/k9/mail/Store;
    :catch_1
    move-exception v2

    .line 3317
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v7, "emptyTrash failed"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2, v7, v8}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3319
    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->access$1300(Lcom/fsck/k9/mail/Folder;)V

    .line 3321
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 3308
    .restart local v3    # "isTrashLocalOnly":Z
    .restart local v6    # "localStore":Lcom/fsck/k9/mail/Store;
    :cond_1
    if-nez v3, :cond_2

    .line 3309
    :try_start_4
    invoke-static {}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingEmptyTrash;->create()Lcom/fsck/k9/controller/MessagingControllerCommands$PendingEmptyTrash;

    move-result-object v1

    .line 3310
    .local v1, "command":Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    iget-object v7, p0, Lcom/fsck/k9/controller/MessagingController$33;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v8, p0, Lcom/fsck/k9/controller/MessagingController$33;->val$account:Lcom/fsck/k9/Account;

    invoke-static {v7, v8, v1}, Lcom/fsck/k9/controller/MessagingController;->access$900(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    .line 3311
    iget-object v7, p0, Lcom/fsck/k9/controller/MessagingController$33;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v8, p0, Lcom/fsck/k9/controller/MessagingController$33;->val$account:Lcom/fsck/k9/Account;

    invoke-static {v7, v8}, Lcom/fsck/k9/controller/MessagingController;->access$1000(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V
    :try_end_4
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3319
    .end local v1    # "command":Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    :cond_2
    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->access$1300(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_2
.end method
