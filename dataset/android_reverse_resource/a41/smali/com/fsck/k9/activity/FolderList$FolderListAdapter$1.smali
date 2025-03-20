.class Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;
.super Lcom/fsck/k9/activity/ActivityListener;
.source "FolderList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    .prologue
    .line 679
    iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    invoke-direct {p0}, Lcom/fsck/k9/activity/ActivityListener;-><init>()V

    return-void
.end method

.method private refreshFolder(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 6
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;

    .prologue
    .line 799
    const/4 v2, 0x0

    .line 801
    .local v2, "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 802
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v3, v3, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-virtual {p1, v3}, Lcom/fsck/k9/Account;->isAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 803
    const-string v3, "not refreshing folder of unavailable account"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    if-eqz v2, :cond_0

    .line 819
    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalFolder;->close()V

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v2

    .line 807
    iget-object v3, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    invoke-virtual {v3, p2}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/activity/FolderInfoHolder;

    move-result-object v1

    .line 808
    .local v1, "folderHolder":Lcom/fsck/k9/activity/FolderInfoHolder;
    if-eqz v1, :cond_2

    .line 809
    iget-object v3, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v3, v3, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v3}, Lcom/fsck/k9/activity/FolderList;->access$1300(Lcom/fsck/k9/activity/FolderList;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v4, v4, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v4}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/fsck/k9/activity/FolderInfoHolder;->populate(Landroid/content/Context;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/Account;I)V

    .line 810
    const/4 v3, -0x1

    iput v3, v1, Lcom/fsck/k9/activity/FolderInfoHolder;->flaggedMessageCount:I

    .line 812
    iget-object v3, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v3, v3, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v3}, Lcom/fsck/k9/activity/FolderList;->access$900(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->dataChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 818
    .end local v1    # "folderHolder":Lcom/fsck/k9/activity/FolderInfoHolder;
    :cond_2
    if-eqz v2, :cond_0

    .line 819
    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalFolder;->close()V

    goto :goto_0

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Exception while populating folder"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 818
    if-eqz v2, :cond_0

    .line 819
    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalFolder;->close()V

    goto :goto_0

    .line 818
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    .line 819
    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalFolder;->close()V

    :cond_3
    throw v3
.end method


# virtual methods
.method public accountSizeChanged(Lcom/fsck/k9/Account;JJ)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "oldSize"    # J
    .param p4, "newSize"    # J

    .prologue
    .line 912
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$900(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->accountSizeChanged(JJ)V

    .line 915
    :cond_0
    return-void
.end method

.method public accountStatusChanged(Lcom/fsck/k9/BaseAccount;Lcom/fsck/k9/AccountStats;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/BaseAccount;
    .param p2, "stats"    # Lcom/fsck/k9/AccountStats;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    if-eqz p2, :cond_0

    .line 693
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    iget v1, p2, Lcom/fsck/k9/AccountStats;->unreadMessageCount:I

    invoke-static {v0, v1}, Lcom/fsck/k9/activity/FolderList;->access$102(Lcom/fsck/k9/activity/FolderList;I)I

    .line 694
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$900(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->refreshTitle()V

    goto :goto_0
.end method

.method public emptyTrashCompleted(Lcom/fsck/k9/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 872
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->refreshFolder(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    .line 875
    :cond_0
    return-void
.end method

.method public folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "unreadMessageCount"    # I

    .prologue
    .line 879
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->refreshFolder(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    .line 881
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->informUserOfStatus()V

    .line 883
    :cond_0
    return-void
.end method

.method public informUserOfStatus()V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$900(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->refreshTitle()V

    .line 683
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$900(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->dataChanged()V

    .line 684
    return-void
.end method

.method public listFolders(Lcom/fsck/k9/Account;Ljava/util/List;)V
    .locals 11
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mailstore/LocalFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalFolder;>;"
    const/4 v10, -0x1

    .line 729
    iget-object v7, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v7, v7, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v7}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 731
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 732
    .local v5, "newFolders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/FolderInfoHolder;>;"
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 734
    .local v6, "topFolders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/FolderInfoHolder;>;"
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getFolderDisplayMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v0

    .line 735
    .local v0, "aMode":Lcom/fsck/k9/Account$FolderMode;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 736
    .local v2, "folder":Lcom/fsck/k9/mailstore/LocalFolder;
    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalFolder;->getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v1

    .line 738
    .local v1, "fMode":Lcom/fsck/k9/mail/Folder$FolderClass;
    sget-object v8, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    if-ne v0, v8, :cond_1

    sget-object v8, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v1, v8, :cond_0

    :cond_1
    sget-object v8, Lcom/fsck/k9/Account$FolderMode;->FIRST_AND_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    if-ne v0, v8, :cond_2

    sget-object v8, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-eq v1, v8, :cond_2

    sget-object v8, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v1, v8, :cond_0

    :cond_2
    sget-object v8, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    if-ne v0, v8, :cond_3

    sget-object v8, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-eq v1, v8, :cond_0

    .line 746
    :cond_3
    const/4 v4, 0x0

    .line 748
    .local v4, "holder":Lcom/fsck/k9/activity/FolderInfoHolder;
    iget-object v8, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalFolder;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getFolderIndex(Ljava/lang/String;)I

    move-result v3

    .line 749
    .local v3, "folderIndex":I
    if-ltz v3, :cond_4

    .line 750
    iget-object v8, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    invoke-virtual {v8, v3}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "holder":Lcom/fsck/k9/activity/FolderInfoHolder;
    check-cast v4, Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 753
    .restart local v4    # "holder":Lcom/fsck/k9/activity/FolderInfoHolder;
    :cond_4
    if-nez v4, :cond_5

    .line 754
    new-instance v4, Lcom/fsck/k9/activity/FolderInfoHolder;

    .end local v4    # "holder":Lcom/fsck/k9/activity/FolderInfoHolder;
    iget-object v8, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v8, v8, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v8}, Lcom/fsck/k9/activity/FolderList;->access$1300(Lcom/fsck/k9/activity/FolderList;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v9, v9, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v9}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v9

    invoke-direct {v4, v8, v2, v9, v10}, Lcom/fsck/k9/activity/FolderInfoHolder;-><init>(Landroid/content/Context;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/Account;I)V

    .line 759
    .restart local v4    # "holder":Lcom/fsck/k9/activity/FolderInfoHolder;
    :goto_1
    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalFolder;->isInTopGroup()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 760
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 756
    :cond_5
    iget-object v8, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v8, v8, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v8}, Lcom/fsck/k9/activity/FolderList;->access$1300(Lcom/fsck/k9/activity/FolderList;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v9, v9, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v9}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v9

    invoke-virtual {v4, v8, v2, v9, v10}, Lcom/fsck/k9/activity/FolderInfoHolder;->populate(Landroid/content/Context;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/Account;I)V

    goto :goto_1

    .line 762
    :cond_6
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 765
    .end local v1    # "fMode":Lcom/fsck/k9/mail/Folder$FolderClass;
    .end local v2    # "folder":Lcom/fsck/k9/mailstore/LocalFolder;
    .end local v3    # "folderIndex":I
    .end local v4    # "holder":Lcom/fsck/k9/activity/FolderInfoHolder;
    :cond_7
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 766
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 767
    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 768
    iget-object v7, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v7, v7, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v7}, Lcom/fsck/k9/activity/FolderList;->access$900(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->newFolders(Ljava/util/List;)V

    .line 770
    .end local v0    # "aMode":Lcom/fsck/k9/Account$FolderMode;
    .end local v5    # "newFolders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/FolderInfoHolder;>;"
    .end local v6    # "topFolders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/FolderInfoHolder;>;"
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/activity/ActivityListener;->listFolders(Lcom/fsck/k9/Account;Ljava/util/List;)V

    .line 771
    return-void
.end method

.method public listFoldersFailed(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 3
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 708
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$900(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->progress(Z)V

    .line 710
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$1300(Lcom/fsck/k9/activity/FolderList;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0701cf

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 712
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/activity/ActivityListener;->listFoldersFailed(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method public listFoldersFinished(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 717
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$900(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->progress(Z)V

    .line 720
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$300(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$400(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Lcom/fsck/k9/activity/ActivityListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->refreshListener(Lcom/fsck/k9/controller/MessagingListener;)V

    .line 721
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$900(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->dataChanged()V

    .line 723
    :cond_0
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/ActivityListener;->listFoldersFinished(Lcom/fsck/k9/Account;)V

    .line 725
    return-void
.end method

.method public listFoldersStarted(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 699
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$900(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->progress(Z)V

    .line 702
    :cond_0
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/ActivityListener;->listFoldersStarted(Lcom/fsck/k9/Account;)V

    .line 704
    return-void
.end method

.method public messageDeleted(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 867
    invoke-virtual {p0, p1, p2, p3}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->synchronizeMailboxRemovedMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    .line 868
    return-void
.end method

.method public sendPendingMessagesCompleted(Lcom/fsck/k9/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 887
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/ActivityListener;->sendPendingMessagesCompleted(Lcom/fsck/k9/Account;)V

    .line 888
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->refreshFolder(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    .line 891
    :cond_0
    return-void
.end method

.method public sendPendingMessagesFailed(Lcom/fsck/k9/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 904
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/ActivityListener;->sendPendingMessagesFailed(Lcom/fsck/k9/Account;)V

    .line 905
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->refreshFolder(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    .line 908
    :cond_0
    return-void
.end method

.method public sendPendingMessagesStarted(Lcom/fsck/k9/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 895
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/ActivityListener;->sendPendingMessagesStarted(Lcom/fsck/k9/Account;)V

    .line 897
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$900(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->dataChanged()V

    .line 900
    :cond_0
    return-void
.end method

.method public setPushActive(Lcom/fsck/k9/Account;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .prologue
    .line 852
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    invoke-virtual {v1, p2}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/activity/FolderInfoHolder;

    move-result-object v0

    .line 857
    .local v0, "holder":Lcom/fsck/k9/activity/FolderInfoHolder;
    if-eqz v0, :cond_0

    .line 858
    iput-boolean p3, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->pushActive:Z

    .line 860
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$900(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->dataChanged()V

    goto :goto_0
.end method

.method public synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 827
    invoke-super {p0, p1, p2, p3}, Lcom/fsck/k9/activity/ActivityListener;->synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 848
    :goto_0
    return-void

    .line 833
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$900(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->progress(Z)V

    .line 835
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$900(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    move-result-object v1

    invoke-virtual {v1, p2, v2}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->folderLoading(Ljava/lang/String;Z)V

    .line 840
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    invoke-virtual {v1, p2}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/activity/FolderInfoHolder;

    move-result-object v0

    .line 842
    .local v0, "holder":Lcom/fsck/k9/activity/FolderInfoHolder;
    if-eqz v0, :cond_1

    .line 843
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->lastChecked:J

    .line 846
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$900(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->dataChanged()V

    goto :goto_0
.end method

.method public synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "totalMessagesInMailbox"    # I
    .param p4, "numNewMessages"    # I

    .prologue
    const/4 v1, 0x0

    .line 787
    invoke-super {p0, p1, p2, p3, p4}, Lcom/fsck/k9/activity/ActivityListener;->synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    .line 788
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$900(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->progress(Z)V

    .line 790
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$900(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->folderLoading(Ljava/lang/String;Z)V

    .line 792
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->refreshFolder(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    .line 795
    :cond_0
    return-void
.end method

.method public synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 775
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/activity/ActivityListener;->synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$900(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->progress(Z)V

    .line 779
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$900(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->folderLoading(Ljava/lang/String;Z)V

    .line 780
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$900(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->dataChanged()V

    .line 783
    :cond_0
    return-void
.end method
