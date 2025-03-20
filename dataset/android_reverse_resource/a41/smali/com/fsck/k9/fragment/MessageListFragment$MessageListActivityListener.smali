.class Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;
.super Lcom/fsck/k9/activity/ActivityListener;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/fragment/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageListActivityListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/fragment/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/fsck/k9/fragment/MessageListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/fragment/MessageListFragment;

    .prologue
    .line 1299
    iput-object p1, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-direct {p0}, Lcom/fsck/k9/activity/ActivityListener;-><init>()V

    return-void
.end method

.method private updateForMe(Lcom/fsck/k9/Account;Ljava/lang/String;)Z
    .locals 4
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1397
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1406
    :cond_0
    :goto_0
    return v1

    .line 1401
    :cond_1
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->access$800(Lcom/fsck/k9/fragment/MessageListFragment;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fsck/k9/helper/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1405
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->access$900(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/search/LocalSearch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/search/LocalSearch;->getFolderNames()Ljava/util/List;

    move-result-object v0

    .line 1406
    .local v0, "folderNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public enableProgressIndicator(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$200(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/fragment/MessageListHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fsck/k9/fragment/MessageListHandler;->progress(Z)V

    .line 1323
    return-void
.end method

.method public folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "unreadMessageCount"    # I

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->isSingleAccountMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->isSingleFolderMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$500(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    .line 1390
    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$600(Lcom/fsck/k9/fragment/MessageListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0, p3}, Lcom/fsck/k9/fragment/MessageListFragment;->access$702(Lcom/fsck/k9/fragment/MessageListFragment;I)I

    .line 1393
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/fsck/k9/activity/ActivityListener;->folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V

    .line 1394
    return-void
.end method

.method public informUserOfStatus()V
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$200(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/fragment/MessageListHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/fragment/MessageListHandler;->refreshTitle()V

    .line 1355
    return-void
.end method

.method public remoteSearchFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "err"    # Ljava/lang/String;

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$200(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/fragment/MessageListHandler;

    move-result-object v0

    new-instance v1, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener$1;

    invoke-direct {v1, p0}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener$1;-><init>(Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/fragment/MessageListHandler;->post(Ljava/lang/Runnable;)Z

    .line 1312
    return-void
.end method

.method public remoteSearchFinished(Ljava/lang/String;IILjava/util/List;)V
    .locals 5
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "numResults"    # I
    .param p3, "maxResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "extraResults":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    const/4 v4, 0x0

    .line 1327
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$200(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/fragment/MessageListHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/fsck/k9/fragment/MessageListHandler;->progress(Z)V

    .line 1328
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$200(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/fragment/MessageListHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/fragment/MessageListHandler;->remoteSearchFinished()V

    .line 1329
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0, p4}, Lcom/fsck/k9/fragment/MessageListFragment;->access$402(Lcom/fsck/k9/fragment/MessageListFragment;Ljava/util/List;)Ljava/util/List;

    .line 1330
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$200(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/fragment/MessageListHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v1}, Lcom/fsck/k9/fragment/MessageListFragment;->access$300(Lcom/fsck/k9/fragment/MessageListFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070279

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/fragment/MessageListHandler;->updateFooter(Ljava/lang/String;)V

    .line 1335
    :goto_0
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;->setMessageListProgress(I)V

    .line 1337
    return-void

    .line 1333
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$200(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/fragment/MessageListHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/fragment/MessageListHandler;->updateFooter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public remoteSearchServerQueryComplete(Ljava/lang/String;II)V
    .locals 7
    .param p1, "folderName"    # Ljava/lang/String;
    .param p2, "numResults"    # I
    .param p3, "maxResults"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1341
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$200(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/fragment/MessageListHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/fsck/k9/fragment/MessageListHandler;->progress(Z)V

    .line 1342
    if-eqz p3, :cond_0

    if-le p2, p3, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$200(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/fragment/MessageListHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v1}, Lcom/fsck/k9/fragment/MessageListFragment;->access$300(Lcom/fsck/k9/fragment/MessageListFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060005

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 1344
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 1343
    invoke-virtual {v1, v2, p3, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/fragment/MessageListHandler;->updateFooter(Ljava/lang/String;)V

    .line 1349
    :goto_0
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    invoke-interface {v0, v5}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;->setMessageListProgress(I)V

    .line 1350
    return-void

    .line 1346
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$200(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/fragment/MessageListHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v1}, Lcom/fsck/k9/fragment/MessageListFragment;->access$300(Lcom/fsck/k9/fragment/MessageListFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060004

    new-array v3, v6, [Ljava/lang/Object;

    .line 1347
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 1346
    invoke-virtual {v1, v2, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/fragment/MessageListHandler;->updateFooter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public remoteSearchStarted(Ljava/lang/String;)V
    .locals 3
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$200(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/fragment/MessageListHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/fragment/MessageListHandler;->progress(Z)V

    .line 1317
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$200(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/fragment/MessageListHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v1}, Lcom/fsck/k9/fragment/MessageListFragment;->access$300(Lcom/fsck/k9/fragment/MessageListFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07032d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/fragment/MessageListHandler;->updateFooter(Ljava/lang/String;)V

    .line 1318
    return-void
.end method

.method public synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1380
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->updateForMe(Lcom/fsck/k9/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$200(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/fragment/MessageListHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/fragment/MessageListHandler;->progress(Z)V

    .line 1382
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$200(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/fragment/MessageListHandler;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/fsck/k9/fragment/MessageListHandler;->folderLoading(Ljava/lang/String;Z)V

    .line 1384
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/fsck/k9/activity/ActivityListener;->synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    return-void
.end method

.method public synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "totalMessagesInMailbox"    # I
    .param p4, "numNewMessages"    # I

    .prologue
    const/4 v1, 0x0

    .line 1370
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->updateForMe(Lcom/fsck/k9/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1371
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$200(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/fragment/MessageListHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/fragment/MessageListHandler;->progress(Z)V

    .line 1372
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$200(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/fragment/MessageListHandler;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/fsck/k9/fragment/MessageListHandler;->folderLoading(Ljava/lang/String;Z)V

    .line 1374
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/fsck/k9/activity/ActivityListener;->synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    .line 1375
    return-void
.end method

.method public synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1359
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->updateForMe(Lcom/fsck/k9/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1360
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$200(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/fragment/MessageListHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/fragment/MessageListHandler;->progress(Z)V

    .line 1361
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$200(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/fragment/MessageListHandler;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/fsck/k9/fragment/MessageListHandler;->folderLoading(Ljava/lang/String;Z)V

    .line 1363
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/activity/ActivityListener;->synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    .line 1364
    return-void
.end method
