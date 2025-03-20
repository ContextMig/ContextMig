.class Lcom/fsck/k9/controller/MessagingController$37;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->synchronizeFolder(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;ZJLcom/fsck/k9/controller/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$accountInterval:J

.field final synthetic val$folder:Lcom/fsck/k9/mail/Folder;

.field final synthetic val$ignoreLastCheckedTime:Z

.field final synthetic val$listener:Lcom/fsck/k9/controller/MessagingListener;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;ZJLcom/fsck/k9/controller/MessagingListener;)V
    .locals 1
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 3579
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$37;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$37;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$37;->val$folder:Lcom/fsck/k9/mail/Folder;

    iput-boolean p4, p0, Lcom/fsck/k9/controller/MessagingController$37;->val$ignoreLastCheckedTime:Z

    iput-wide p5, p0, Lcom/fsck/k9/controller/MessagingController$37;->val$accountInterval:J

    iput-object p7, p0, Lcom/fsck/k9/controller/MessagingController$37;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 3582
    const/4 v2, 0x0

    .line 3586
    .local v2, "tLocalFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$37;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v1

    .line 3587
    .local v1, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$37;->val$folder:Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v2

    .line 3588
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 3590
    iget-boolean v3, p0, Lcom/fsck/k9/controller/MessagingController$37;->val$ignoreLastCheckedTime:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalFolder;->getLastChecked()J

    move-result-wide v4

    .line 3591
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/fsck/k9/controller/MessagingController$37;->val$accountInterval:J

    sub-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 3592
    const-string v3, "Not running Command for folder %s, previously synced @ %tc which would be too recent for the account period"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController$37;->val$folder:Lcom/fsck/k9/mail/Folder;

    .line 3594
    invoke-virtual {v6}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController$37;->val$folder:Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v6}, Lcom/fsck/k9/mail/Folder;->getLastChecked()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 3592
    invoke-static {v3, v4}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3607
    invoke-static {v2}, Lcom/fsck/k9/controller/MessagingController;->access$1300(Lcom/fsck/k9/mail/Folder;)V

    .line 3609
    .end local v1    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    :goto_0
    return-void

    .line 3597
    .restart local v1    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$37;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$37;->val$account:Lcom/fsck/k9/Account;

    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$37;->val$folder:Lcom/fsck/k9/mail/Folder;

    invoke-static {v3, v4, v5}, Lcom/fsck/k9/controller/MessagingController;->access$2700(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3599
    :try_start_2
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$37;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$37;->val$account:Lcom/fsck/k9/Account;

    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$37;->val$folder:Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController$37;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/fsck/k9/controller/MessagingController;->synchronizeMailboxSynchronous(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Lcom/fsck/k9/mail/Folder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3601
    :try_start_3
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$37;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$37;->val$account:Lcom/fsck/k9/Account;

    invoke-static {v3, v4}, Lcom/fsck/k9/controller/MessagingController;->access$2800(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3607
    invoke-static {v2}, Lcom/fsck/k9/controller/MessagingController;->access$1300(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_0

    .line 3601
    :catchall_0
    move-exception v3

    :try_start_4
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$37;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$37;->val$account:Lcom/fsck/k9/Account;

    invoke-static {v4, v5}, Lcom/fsck/k9/controller/MessagingController;->access$2800(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3603
    .end local v1    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    :catch_0
    move-exception v0

    .line 3604
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v3, "Exception while processing folder %s:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController$37;->val$account:Lcom/fsck/k9/Account;

    .line 3605
    invoke-virtual {v6}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController$37;->val$folder:Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v6}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 3604
    invoke-static {v0, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3607
    invoke-static {v2}, Lcom/fsck/k9/controller/MessagingController;->access$1300(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    invoke-static {v2}, Lcom/fsck/k9/controller/MessagingController;->access$1300(Lcom/fsck/k9/mail/Folder;)V

    throw v3
.end method
