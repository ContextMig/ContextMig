.class public Lcom/fsck/k9/provider/MessageProvider$UnreadQueryHandler;
.super Ljava/lang/Object;
.source "MessageProvider.java"

# interfaces
.implements Lcom/fsck/k9/provider/MessageProvider$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/provider/MessageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UnreadQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/provider/MessageProvider;


# direct methods
.method protected constructor <init>(Lcom/fsck/k9/provider/MessageProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/provider/MessageProvider;

    .prologue
    .line 657
    iput-object p1, p0, Lcom/fsck/k9/provider/MessageProvider$UnreadQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAccountUnread(I)Landroid/database/Cursor;
    .locals 11
    .param p1, "accountNumber"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 686
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/fsck/k9/provider/MessageProvider;->access$200()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 691
    .local v1, "cursor":Landroid/database/MatrixCursor;
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/Object;

    .line 693
    .local v5, "values":[Ljava/lang/Object;
    iget-object v6, p0, Lcom/fsck/k9/provider/MessageProvider$UnreadQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    invoke-virtual {v6}, Lcom/fsck/k9/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fsck/k9/Preferences;->getAvailableAccounts()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account;

    .line 694
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v7

    if-ne v7, p1, :cond_0

    .line 695
    move-object v3, v0

    .line 697
    .local v3, "myAccount":Lcom/fsck/k9/Account;
    :try_start_0
    iget-object v7, p0, Lcom/fsck/k9/provider/MessageProvider$UnreadQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    invoke-virtual {v7}, Lcom/fsck/k9/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/fsck/k9/Account;->getStats(Landroid/content/Context;)Lcom/fsck/k9/AccountStats;

    move-result-object v4

    .line 698
    .local v4, "myAccountStats":Lcom/fsck/k9/AccountStats;
    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 699
    if-nez v4, :cond_1

    .line 700
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    .end local v4    # "myAccountStats":Lcom/fsck/k9/AccountStats;
    :goto_1
    invoke-virtual {v1, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 702
    .restart local v4    # "myAccountStats":Lcom/fsck/k9/AccountStats;
    :cond_1
    const/4 v7, 0x1

    :try_start_1
    iget v8, v4, Lcom/fsck/k9/AccountStats;->unreadMessageCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7
    :try_end_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 704
    .end local v4    # "myAccountStats":Lcom/fsck/k9/AccountStats;
    :catch_0
    move-exception v2

    .line 705
    .local v2, "e":Lcom/fsck/k9/mail/MessagingException;
    invoke-virtual {v2}, Lcom/fsck/k9/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 706
    const-string v7, "Unknown"

    aput-object v7, v5, v9

    .line 707
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v10

    goto :goto_1

    .line 713
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v2    # "e":Lcom/fsck/k9/mail/MessagingException;
    .end local v3    # "myAccount":Lcom/fsck/k9/Account;
    :cond_2
    return-object v1
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 661
    const-string v0, "account_unread/#"

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 667
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 668
    .local v1, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 676
    .local v0, "accountId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 678
    .local v2, "identityToken":J
    :try_start_0
    invoke-direct {p0, v0}, Lcom/fsck/k9/provider/MessageProvider$UnreadQueryHandler;->getAccountUnread(I)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 680
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 678
    return-object v4

    .line 680
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
