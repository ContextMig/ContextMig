.class Lcom/fsck/k9/activity/Accounts$1;
.super Lcom/fsck/k9/activity/ActivityListener;
.source "Accounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/Accounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/Accounts;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/Accounts;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/Accounts;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-direct {p0}, Lcom/fsck/k9/activity/ActivityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public accountSizeChanged(Lcom/fsck/k9/Account;JJ)V
    .locals 6
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "oldSize"    # J
    .param p4, "newSize"    # J

    .prologue
    .line 301
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$800(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->accountSizeChanged(Lcom/fsck/k9/Account;JJ)V

    .line 302
    return-void
.end method

.method public accountStatusChanged(Lcom/fsck/k9/BaseAccount;Lcom/fsck/k9/AccountStats;)V
    .locals 7
    .param p1, "account"    # Lcom/fsck/k9/BaseAccount;
    .param p2, "stats"    # Lcom/fsck/k9/AccountStats;

    .prologue
    const/16 v6, 0x2710

    .line 274
    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v3}, Lcom/fsck/k9/activity/Accounts;->access$600(Lcom/fsck/k9/activity/Accounts;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-interface {p1}, Lcom/fsck/k9/BaseAccount;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/AccountStats;

    .line 275
    .local v1, "oldStats":Lcom/fsck/k9/AccountStats;
    const/4 v2, 0x0

    .line 276
    .local v2, "oldUnreadMessageCount":I
    if-eqz v1, :cond_0

    .line 277
    iget v2, v1, Lcom/fsck/k9/AccountStats;->unreadMessageCount:I

    .line 279
    :cond_0
    if-nez p2, :cond_1

    .line 280
    new-instance p2, Lcom/fsck/k9/AccountStats;

    .end local p2    # "stats":Lcom/fsck/k9/AccountStats;
    invoke-direct {p2}, Lcom/fsck/k9/AccountStats;-><init>()V

    .line 281
    .restart local p2    # "stats":Lcom/fsck/k9/AccountStats;
    const/4 v3, 0x0

    iput-boolean v3, p2, Lcom/fsck/k9/AccountStats;->available:Z

    .line 283
    :cond_1
    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v3}, Lcom/fsck/k9/activity/Accounts;->access$600(Lcom/fsck/k9/activity/Accounts;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-interface {p1}, Lcom/fsck/k9/BaseAccount;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    instance-of v3, p1, Lcom/fsck/k9/Account;

    if-eqz v3, :cond_2

    .line 285
    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;

    iget-object v4, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v4}, Lcom/fsck/k9/activity/Accounts;->access$100(Lcom/fsck/k9/activity/Accounts;)I

    move-result v4

    iget v5, p2, Lcom/fsck/k9/AccountStats;->unreadMessageCount:I

    sub-int/2addr v5, v2

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/fsck/k9/activity/Accounts;->access$102(Lcom/fsck/k9/activity/Accounts;I)I

    .line 287
    :cond_2
    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v3}, Lcom/fsck/k9/activity/Accounts;->access$800(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->dataChanged()V

    .line 288
    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v3}, Lcom/fsck/k9/activity/Accounts;->access$900(Lcom/fsck/k9/activity/Accounts;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v3}, Lcom/fsck/k9/activity/Accounts;->access$900(Lcom/fsck/k9/activity/Accounts;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 291
    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v3}, Lcom/fsck/k9/activity/Accounts;->access$800(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->progress(I)V

    .line 292
    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v3}, Lcom/fsck/k9/activity/Accounts;->access$800(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->refreshTitle()V

    .line 297
    :goto_0
    return-void

    .line 294
    :cond_3
    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v3}, Lcom/fsck/k9/activity/Accounts;->access$500(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->getCount()I

    move-result v3

    div-int v3, v6, v3

    iget-object v4, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v4}, Lcom/fsck/k9/activity/Accounts;->access$500(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->getCount()I

    move-result v4

    iget-object v5, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v5}, Lcom/fsck/k9/activity/Accounts;->access$900(Lcom/fsck/k9/activity/Accounts;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v5

    sub-int/2addr v4, v5

    mul-int v0, v3, v4

    .line 295
    .local v0, "level":I
    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v3}, Lcom/fsck/k9/activity/Accounts;->access$800(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->progress(I)V

    goto :goto_0
.end method

.method public folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V
    .locals 5
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "unreadMessageCount"    # I

    .prologue
    const/4 v4, 0x0

    .line 262
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-virtual {p1, v2}, Lcom/fsck/k9/Account;->getStats(Landroid/content/Context;)Lcom/fsck/k9/AccountStats;

    move-result-object v1

    .line 263
    .local v1, "stats":Lcom/fsck/k9/AccountStats;
    if-nez v1, :cond_0

    .line 264
    const-string v2, "Unable to get account stats"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    .end local v1    # "stats":Lcom/fsck/k9/AccountStats;
    :goto_0
    return-void

    .line 266
    .restart local v1    # "stats":Lcom/fsck/k9/AccountStats;
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/fsck/k9/activity/Accounts$1;->accountStatusChanged(Lcom/fsck/k9/BaseAccount;Lcom/fsck/k9/AccountStats;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    .end local v1    # "stats":Lcom/fsck/k9/AccountStats;
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Unable to get account stats"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public informUserOfStatus()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$800(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->refreshTitle()V

    .line 257
    return-void
.end method

.method public synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 326
    invoke-super {p0, p1, p2, p3}, Lcom/fsck/k9/activity/ActivityListener;->synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$800(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->progress(Z)V

    .line 329
    return-void
.end method

.method public synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    .locals 3
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "totalMessagesInMailbox"    # I
    .param p4, "numNewMessages"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;

    iget-object v2, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;

    iget-object v2, v2, Lcom/fsck/k9/activity/Accounts;->mListener:Lcom/fsck/k9/activity/ActivityListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/fsck/k9/controller/MessagingController;->getAccountStats(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 311
    invoke-super {p0, p1, p2, p3, p4}, Lcom/fsck/k9/activity/ActivityListener;->synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    .line 313
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$800(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->progress(Z)V

    .line 315
    return-void
.end method

.method public synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;

    .prologue
    .line 319
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/activity/ActivityListener;->synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$800(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->progress(Z)V

    .line 321
    return-void
.end method
