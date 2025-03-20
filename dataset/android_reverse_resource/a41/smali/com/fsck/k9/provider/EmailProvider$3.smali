.class Lcom/fsck/k9/provider/EmailProvider$3;
.super Ljava/lang/Object;
.source "EmailProvider.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/provider/EmailProvider;->getThread(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/provider/EmailProvider;

.field final synthetic val$projection:[Ljava/lang/String;

.field final synthetic val$sortOrder:Ljava/lang/String;

.field final synthetic val$threadId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fsck/k9/provider/EmailProvider;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/provider/EmailProvider;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/fsck/k9/provider/EmailProvider$3;->this$0:Lcom/fsck/k9/provider/EmailProvider;

    iput-object p2, p0, Lcom/fsck/k9/provider/EmailProvider$3;->val$projection:[Ljava/lang/String;

    iput-object p3, p0, Lcom/fsck/k9/provider/EmailProvider$3;->val$sortOrder:Ljava/lang/String;

    iput-object p4, p0, Lcom/fsck/k9/provider/EmailProvider$3;->val$threadId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    .local v2, "query":Ljava/lang/StringBuilder;
    const-string v3, "SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    const/4 v1, 0x1

    .line 494
    .local v1, "first":Z
    iget-object v5, p0, Lcom/fsck/k9/provider/EmailProvider$3;->val$projection:[Ljava/lang/String;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v0, v5, v3

    .line 495
    .local v0, "columnName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 496
    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    :goto_1
    const-string v7, "id"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 502
    const-string v7, "m.id AS id"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 498
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 504
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 508
    .end local v0    # "columnName":Ljava/lang/String;
    :cond_2
    const-string v3, " FROM threads t JOIN messages m ON (m.id = t.message_id) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    iget-object v5, p0, Lcom/fsck/k9/provider/EmailProvider$3;->val$projection:[Ljava/lang/String;

    invoke-static {}, Lcom/fsck/k9/provider/EmailProvider;->access$000()[Ljava/lang/String;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v5, v3}, Lcom/fsck/k9/helper/Utility;->arrayContainsAny([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 512
    const-string v3, "LEFT JOIN folders f ON (m.folder_id = f.id) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :cond_3
    const-string v3, "WHERE root = ? AND deleted = 0 AND empty = 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    const-string v3, " ORDER BY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-static {}, Lcom/fsck/k9/provider/EmailProvider;->access$100()[Ljava/lang/String;

    move-result-object v3

    const-string v5, "m."

    iget-object v6, p0, Lcom/fsck/k9/provider/EmailProvider$3;->val$sortOrder:Ljava/lang/String;

    invoke-static {v3, v5, v6}, Lcom/fsck/k9/search/SqlQueryBuilder;->addPrefixToSelection([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p0, Lcom/fsck/k9/provider/EmailProvider$3;->val$threadId:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-virtual {p1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 486
    invoke-virtual {p0, p1}, Lcom/fsck/k9/provider/EmailProvider$3;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
