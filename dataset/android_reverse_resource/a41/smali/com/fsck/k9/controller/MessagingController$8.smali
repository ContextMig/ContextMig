.class Lcom/fsck/k9/controller/MessagingController$8;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->loadSearchResults(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/controller/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$folderName:Ljava/lang/String;

.field final synthetic val$listener:Lcom/fsck/k9/controller/MessagingListener;

.field final synthetic val$messages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/controller/MessagingListener;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$8;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$account:Lcom/fsck/k9/Account;

    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$folderName:Ljava/lang/String;

    iput-object p5, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$messages:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 636
    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    if-eqz v5, :cond_0

    .line 637
    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/fsck/k9/controller/MessagingListener;->enableProgressIndicator(Z)V

    .line 640
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v4

    .line 641
    .local v4, "remoteStore":Lcom/fsck/k9/mail/Store;
    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v2

    .line 643
    .local v2, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    if-eqz v4, :cond_1

    if-nez v2, :cond_3

    .line 644
    :cond_1
    new-instance v5, Lcom/fsck/k9/mail/MessagingException;

    const-string v6, "Could not get store"

    invoke-direct {v5, v6}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    .end local v2    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v4    # "remoteStore":Lcom/fsck/k9/mail/Store;
    :catch_0
    move-exception v0

    .line 655
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    :try_start_1
    const-string v5, "Exception in loadSearchResults"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    if-eqz v5, :cond_2

    .line 658
    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-interface {v5, v8}, Lcom/fsck/k9/controller/MessagingListener;->enableProgressIndicator(Z)V

    .line 661
    .end local v0    # "e":Lcom/fsck/k9/mail/MessagingException;
    :cond_2
    :goto_0
    return-void

    .line 647
    .restart local v2    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .restart local v4    # "remoteStore":Lcom/fsck/k9/mail/Store;
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$folderName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v3

    .line 648
    .local v3, "remoteFolder":Lcom/fsck/k9/mail/Folder;
    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$folderName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v1

    .line 649
    .local v1, "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    if-eqz v3, :cond_4

    if-nez v1, :cond_6

    .line 650
    :cond_4
    new-instance v5, Lcom/fsck/k9/mail/MessagingException;

    const-string v6, "Folder not found"

    invoke-direct {v5, v6}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 657
    .end local v1    # "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    .end local v2    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v3    # "remoteFolder":Lcom/fsck/k9/mail/Folder;
    .end local v4    # "remoteStore":Lcom/fsck/k9/mail/Store;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    if-eqz v6, :cond_5

    .line 658
    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-interface {v6, v8}, Lcom/fsck/k9/controller/MessagingListener;->enableProgressIndicator(Z)V

    :cond_5
    throw v5

    .line 653
    .restart local v1    # "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    .restart local v2    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .restart local v3    # "remoteFolder":Lcom/fsck/k9/mail/Folder;
    .restart local v4    # "remoteStore":Lcom/fsck/k9/mail/Store;
    :cond_6
    :try_start_3
    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$8;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$messages:Ljava/util/List;

    iget-object v7, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-static {v5, v6, v1, v3, v7}, Lcom/fsck/k9/controller/MessagingController;->access$400(Lcom/fsck/k9/controller/MessagingController;Ljava/util/List;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/controller/MessagingListener;)V
    :try_end_3
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 657
    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    if-eqz v5, :cond_2

    .line 658
    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-interface {v5, v8}, Lcom/fsck/k9/controller/MessagingListener;->enableProgressIndicator(Z)V

    goto :goto_0
.end method
