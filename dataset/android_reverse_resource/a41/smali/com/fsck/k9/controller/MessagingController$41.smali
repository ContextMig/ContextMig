.class Lcom/fsck/k9/controller/MessagingController$41;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->messagesArrived(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$flagSyncOnly:Z

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$messages:Ljava/util/List;

.field final synthetic val$remoteFolder:Lcom/fsck/k9/mail/Folder;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Ljava/util/List;ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 4006
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$41;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$41;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$41;->val$remoteFolder:Lcom/fsck/k9/mail/Folder;

    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingController$41;->val$messages:Ljava/util/List;

    iput-boolean p5, p0, Lcom/fsck/k9/controller/MessagingController$41;->val$flagSyncOnly:Z

    iput-object p6, p0, Lcom/fsck/k9/controller/MessagingController$41;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 4009
    const/4 v3, 0x0

    .line 4011
    .local v3, "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$41;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v10

    .line 4012
    .local v10, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$41;->val$remoteFolder:Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v3

    .line 4013
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 4015
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$41;->val$account:Lcom/fsck/k9/Account;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setRingNotified(Z)V

    .line 4016
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$41;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$41;->val$account:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$41;->val$remoteFolder:Lcom/fsck/k9/mail/Folder;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$41;->val$messages:Ljava/util/List;

    iget-boolean v5, p0, Lcom/fsck/k9/controller/MessagingController$41;->val$flagSyncOnly:Z

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/fsck/k9/controller/MessagingController;->access$3000(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;ZZ)I

    move-result v11

    .line 4018
    .local v11, "newCount":I
    invoke-virtual {v3}, Lcom/fsck/k9/mailstore/LocalFolder;->getUnreadMessageCount()I

    move-result v14

    .line 4020
    .local v14, "unreadMessageCount":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/fsck/k9/mailstore/LocalFolder;->setLastPush(J)V

    .line 4021
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->setStatus(Ljava/lang/String;)V

    .line 4023
    const-string v0, "messagesArrived newCount = %d, unread count = %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4025
    if-nez v14, :cond_0

    .line 4026
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$41;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->access$700(Lcom/fsck/k9/controller/MessagingController;)Lcom/fsck/k9/notification/NotificationController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$41;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/notification/NotificationController;->clearNewMailNotifications(Lcom/fsck/k9/Account;)V

    .line 4029
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$41;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {v0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fsck/k9/controller/MessagingListener;

    .line 4030
    .local v9, "l":Lcom/fsck/k9/controller/MessagingListener;
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$41;->val$account:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$41;->val$remoteFolder:Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v1, v2, v14}, Lcom/fsck/k9/controller/MessagingListener;->folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4033
    .end local v9    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v10    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v11    # "newCount":I
    .end local v14    # "unreadMessageCount":I
    :catch_0
    move-exception v7

    .line 4034
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$41;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-static {v0, v7}, Lcom/fsck/k9/controller/MessagingController;->access$3100(Lcom/fsck/k9/controller/MessagingController;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    .line 4035
    .local v12, "rootMessage":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Push failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 4037
    .local v8, "errorMessage":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v3, v8}, Lcom/fsck/k9/mailstore/LocalFolder;->setStatus(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4041
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$41;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {v0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fsck/k9/controller/MessagingListener;

    .line 4042
    .restart local v9    # "l":Lcom/fsck/k9/controller/MessagingListener;
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$41;->val$account:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$41;->val$remoteFolder:Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v1, v2, v8}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 4046
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "errorMessage":Ljava/lang/String;
    .end local v9    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v12    # "rootMessage":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/fsck/k9/controller/MessagingController;->access$1300(Lcom/fsck/k9/mail/Folder;)V

    .line 4047
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$41;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    .line 4046
    .restart local v10    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .restart local v11    # "newCount":I
    .restart local v14    # "unreadMessageCount":I
    :cond_1
    invoke-static {v3}, Lcom/fsck/k9/controller/MessagingController;->access$1300(Lcom/fsck/k9/mail/Folder;)V

    .line 4047
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$41;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4050
    .end local v10    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v11    # "newCount":I
    .end local v14    # "unreadMessageCount":I
    :goto_3
    return-void

    .line 4038
    .restart local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "errorMessage":Ljava/lang/String;
    .restart local v12    # "rootMessage":Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 4039
    .local v13, "se":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "Unable to set failed status on localFolder"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v13, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 4044
    .end local v13    # "se":Ljava/lang/Exception;
    :cond_2
    invoke-static {v7}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4046
    invoke-static {v3}, Lcom/fsck/k9/controller/MessagingController;->access$1300(Lcom/fsck/k9/mail/Folder;)V

    .line 4047
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$41;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_3
.end method
