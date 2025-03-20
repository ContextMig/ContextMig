.class Lcom/fsck/k9/controller/MessagingController$20;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->loadAttachment(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalMessage;Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/controller/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$listener:Lcom/fsck/k9/controller/MessagingListener;

.field final synthetic val$message:Lcom/fsck/k9/mailstore/LocalMessage;

.field final synthetic val$part:Lcom/fsck/k9/mail/Part;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/mailstore/LocalMessage;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 2391
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$20;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$20;->val$message:Lcom/fsck/k9/mailstore/LocalMessage;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$20;->val$account:Lcom/fsck/k9/Account;

    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingController$20;->val$part:Lcom/fsck/k9/mail/Part;

    iput-object p5, p0, Lcom/fsck/k9/controller/MessagingController$20;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 2394
    const/4 v6, 0x0

    .line 2395
    .local v6, "remoteFolder":Lcom/fsck/k9/mail/Folder;
    const/4 v3, 0x0

    .line 2397
    .local v3, "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    :try_start_0
    iget-object v9, p0, Lcom/fsck/k9/controller/MessagingController$20;->val$message:Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-virtual {v9}, Lcom/fsck/k9/mailstore/LocalMessage;->getFolder()Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/fsck/k9/mailstore/LocalFolder;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2399
    .local v1, "folderName":Ljava/lang/String;
    iget-object v9, p0, Lcom/fsck/k9/controller/MessagingController$20;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v9}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v4

    .line 2400
    .local v4, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-virtual {v4, v1}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v3

    .line 2402
    iget-object v9, p0, Lcom/fsck/k9/controller/MessagingController$20;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v9}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v8

    .line 2403
    .local v8, "remoteStore":Lcom/fsck/k9/mail/Store;
    invoke-virtual {v8, v1}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v6

    .line 2404
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/fsck/k9/mail/Folder;->open(I)V

    .line 2406
    new-instance v0, Lcom/fsck/k9/controller/ProgressBodyFactory;

    new-instance v9, Lcom/fsck/k9/controller/MessagingController$20$1;

    invoke-direct {v9, p0}, Lcom/fsck/k9/controller/MessagingController$20$1;-><init>(Lcom/fsck/k9/controller/MessagingController$20;)V

    invoke-direct {v0, v9}, Lcom/fsck/k9/controller/ProgressBodyFactory;-><init>(Lcom/fsck/k9/controller/ProgressBodyFactory$ProgressListener;)V

    .line 2415
    .local v0, "bodyFactory":Lcom/fsck/k9/controller/ProgressBodyFactory;
    iget-object v9, p0, Lcom/fsck/k9/controller/MessagingController$20;->val$message:Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-virtual {v9}, Lcom/fsck/k9/mailstore/LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/fsck/k9/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v7

    .line 2416
    .local v7, "remoteMessage":Lcom/fsck/k9/mail/Message;
    iget-object v9, p0, Lcom/fsck/k9/controller/MessagingController$20;->val$part:Lcom/fsck/k9/mail/Part;

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v9, v10, v0}, Lcom/fsck/k9/mail/Folder;->fetchPart(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/MessageRetrievalListener;Lcom/fsck/k9/mail/BodyFactory;)V

    .line 2418
    iget-object v9, p0, Lcom/fsck/k9/controller/MessagingController$20;->val$message:Lcom/fsck/k9/mailstore/LocalMessage;

    iget-object v10, p0, Lcom/fsck/k9/controller/MessagingController$20;->val$part:Lcom/fsck/k9/mail/Part;

    invoke-virtual {v3, v9, v10}, Lcom/fsck/k9/mailstore/LocalFolder;->addPartToMessage(Lcom/fsck/k9/mailstore/LocalMessage;Lcom/fsck/k9/mail/Part;)V

    .line 2420
    iget-object v9, p0, Lcom/fsck/k9/controller/MessagingController$20;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v10, p0, Lcom/fsck/k9/controller/MessagingController$20;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-virtual {v9, v10}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/controller/MessagingListener;

    .line 2421
    .local v2, "l":Lcom/fsck/k9/controller/MessagingListener;
    iget-object v10, p0, Lcom/fsck/k9/controller/MessagingController$20;->val$account:Lcom/fsck/k9/Account;

    iget-object v11, p0, Lcom/fsck/k9/controller/MessagingController$20;->val$message:Lcom/fsck/k9/mailstore/LocalMessage;

    iget-object v12, p0, Lcom/fsck/k9/controller/MessagingController$20;->val$part:Lcom/fsck/k9/mail/Part;

    invoke-interface {v2, v10, v11, v12}, Lcom/fsck/k9/controller/MessagingListener;->loadAttachmentFinished(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2423
    .end local v0    # "bodyFactory":Lcom/fsck/k9/controller/ProgressBodyFactory;
    .end local v1    # "folderName":Ljava/lang/String;
    .end local v2    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v4    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v7    # "remoteMessage":Lcom/fsck/k9/mail/Message;
    .end local v8    # "remoteStore":Lcom/fsck/k9/mail/Store;
    :catch_0
    move-exception v5

    .line 2424
    .local v5, "me":Lcom/fsck/k9/mail/MessagingException;
    :try_start_1
    const-string v9, "Exception loading attachment"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v5, v9, v10}, Ltimber/log/Timber;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2426
    iget-object v9, p0, Lcom/fsck/k9/controller/MessagingController$20;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v10, p0, Lcom/fsck/k9/controller/MessagingController$20;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-virtual {v9, v10}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/controller/MessagingListener;

    .line 2427
    .restart local v2    # "l":Lcom/fsck/k9/controller/MessagingListener;
    iget-object v10, p0, Lcom/fsck/k9/controller/MessagingController$20;->val$account:Lcom/fsck/k9/Account;

    iget-object v11, p0, Lcom/fsck/k9/controller/MessagingController$20;->val$message:Lcom/fsck/k9/mailstore/LocalMessage;

    iget-object v12, p0, Lcom/fsck/k9/controller/MessagingController$20;->val$part:Lcom/fsck/k9/mail/Part;

    invoke-virtual {v5}, Lcom/fsck/k9/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v10, v11, v12, v13}, Lcom/fsck/k9/controller/MessagingListener;->loadAttachmentFailed(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2431
    .end local v2    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v5    # "me":Lcom/fsck/k9/mail/MessagingException;
    :catchall_0
    move-exception v9

    invoke-static {v3}, Lcom/fsck/k9/controller/MessagingController;->access$1300(Lcom/fsck/k9/mail/Folder;)V

    .line 2432
    invoke-static {v6}, Lcom/fsck/k9/controller/MessagingController;->access$1300(Lcom/fsck/k9/mail/Folder;)V

    throw v9

    .line 2431
    .restart local v0    # "bodyFactory":Lcom/fsck/k9/controller/ProgressBodyFactory;
    .restart local v1    # "folderName":Ljava/lang/String;
    .restart local v4    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .restart local v7    # "remoteMessage":Lcom/fsck/k9/mail/Message;
    .restart local v8    # "remoteStore":Lcom/fsck/k9/mail/Store;
    :cond_0
    invoke-static {v3}, Lcom/fsck/k9/controller/MessagingController;->access$1300(Lcom/fsck/k9/mail/Folder;)V

    .line 2432
    invoke-static {v6}, Lcom/fsck/k9/controller/MessagingController;->access$1300(Lcom/fsck/k9/mail/Folder;)V

    .line 2434
    .end local v0    # "bodyFactory":Lcom/fsck/k9/controller/ProgressBodyFactory;
    .end local v1    # "folderName":Ljava/lang/String;
    .end local v4    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v7    # "remoteMessage":Lcom/fsck/k9/mail/Message;
    .end local v8    # "remoteStore":Lcom/fsck/k9/mail/Store;
    :goto_2
    return-void

    .line 2429
    .restart local v5    # "me":Lcom/fsck/k9/mail/MessagingException;
    :cond_1
    :try_start_2
    iget-object v9, p0, Lcom/fsck/k9/controller/MessagingController$20;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v10, p0, Lcom/fsck/k9/controller/MessagingController$20;->val$account:Lcom/fsck/k9/Account;

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v5, v11}, Lcom/fsck/k9/controller/MessagingController;->notifyUserIfCertificateProblem(Lcom/fsck/k9/Account;Ljava/lang/Exception;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2431
    invoke-static {v3}, Lcom/fsck/k9/controller/MessagingController;->access$1300(Lcom/fsck/k9/mail/Folder;)V

    .line 2432
    invoke-static {v6}, Lcom/fsck/k9/controller/MessagingController;->access$1300(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_2
.end method
