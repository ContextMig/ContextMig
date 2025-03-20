.class public Lcom/fsck/k9/provider/MessageProvider$AccountsQueryHandler;
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
    name = "AccountsQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/provider/MessageProvider;


# direct methods
.method protected constructor <init>(Lcom/fsck/k9/provider/MessageProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/provider/MessageProvider;

    .prologue
    .line 607
    iput-object p1, p0, Lcom/fsck/k9/provider/MessageProvider$AccountsQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllAccounts([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 622
    if-nez p1, :cond_0

    .line 623
    invoke-static {}, Lcom/fsck/k9/provider/MessageProvider;->access$100()[Ljava/lang/String;

    move-result-object p1

    .line 626
    :cond_0
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 628
    .local v1, "cursor":Landroid/database/MatrixCursor;
    iget-object v5, p0, Lcom/fsck/k9/provider/MessageProvider$AccountsQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    invoke-virtual {v5}, Lcom/fsck/k9/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account;

    .line 629
    .local v0, "account":Lcom/fsck/k9/Account;
    array-length v5, p1

    new-array v4, v5, [Ljava/lang/Object;

    .line 631
    .local v4, "values":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 632
    .local v3, "fieldIndex":I
    array-length v7, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_5

    aget-object v2, p1, v5

    .line 633
    .local v2, "field":Ljava/lang/String;
    const-string v8, "accountNumber"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 634
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v3

    .line 644
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 632
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 635
    :cond_1
    const-string v8, "accountName"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 636
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v3

    goto :goto_2

    .line 637
    :cond_2
    const-string v8, "accountUuid"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 638
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v3

    goto :goto_2

    .line 639
    :cond_3
    const-string v8, "accountColor"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 640
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getChipColor()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v3

    goto :goto_2

    .line 642
    :cond_4
    const/4 v8, 0x0

    aput-object v8, v4, v3

    goto :goto_2

    .line 647
    .end local v2    # "field":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 650
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v3    # "fieldIndex":I
    .end local v4    # "values":[Ljava/lang/Object;
    :cond_6
    return-object v1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    const-string v0, "accounts"

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
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
    .line 618
    invoke-virtual {p0, p2}, Lcom/fsck/k9/provider/MessageProvider$AccountsQueryHandler;->getAllAccounts([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
