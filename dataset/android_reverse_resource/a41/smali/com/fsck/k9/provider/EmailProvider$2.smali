.class Lcom/fsck/k9/provider/EmailProvider$2;
.super Ljava/lang/Object;
.source "EmailProvider.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/provider/EmailProvider;->getThreadedMessages(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
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

.field final synthetic val$selection:Ljava/lang/String;

.field final synthetic val$selectionArgs:[Ljava/lang/String;

.field final synthetic val$sortOrder:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fsck/k9/provider/EmailProvider;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/provider/EmailProvider;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/fsck/k9/provider/EmailProvider$2;->this$0:Lcom/fsck/k9/provider/EmailProvider;

    iput-object p2, p0, Lcom/fsck/k9/provider/EmailProvider$2;->val$projection:[Ljava/lang/String;

    iput-object p3, p0, Lcom/fsck/k9/provider/EmailProvider$2;->val$selection:Ljava/lang/String;

    iput-object p4, p0, Lcom/fsck/k9/provider/EmailProvider$2;->val$sortOrder:Ljava/lang/String;

    iput-object p5, p0, Lcom/fsck/k9/provider/EmailProvider$2;->val$selectionArgs:[Ljava/lang/String;

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
    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .local v3, "query":Ljava/lang/StringBuilder;
    const-string v4, "SELECT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const/4 v2, 0x1

    .line 368
    .local v2, "first":Z
    iget-object v5, p0, Lcom/fsck/k9/provider/EmailProvider$2;->val$projection:[Ljava/lang/String;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v1, v5, v4

    .line 369
    .local v1, "columnName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 370
    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :goto_1
    invoke-static {}, Lcom/fsck/k9/provider/EmailProvider;->access$200()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 377
    .local v0, "aggregationFunc":Ljava/lang/String;
    const-string v7, "id"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 378
    const-string v7, "m.id AS id"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 372
    .end local v0    # "aggregationFunc":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 379
    .restart local v0    # "aggregationFunc":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 380
    const-string v7, "a."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string v7, " AS "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 385
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 389
    .end local v0    # "aggregationFunc":Ljava/lang/String;
    .end local v1    # "columnName":Ljava/lang/String;
    :cond_3
    const-string v4, " FROM ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    iget-object v4, p0, Lcom/fsck/k9/provider/EmailProvider$2;->this$0:Lcom/fsck/k9/provider/EmailProvider;

    iget-object v5, p0, Lcom/fsck/k9/provider/EmailProvider$2;->val$projection:[Ljava/lang/String;

    iget-object v6, p0, Lcom/fsck/k9/provider/EmailProvider$2;->val$selection:Ljava/lang/String;

    invoke-static {v4, v5, v6, v3}, Lcom/fsck/k9/provider/EmailProvider;->access$300(Lcom/fsck/k9/provider/EmailProvider;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 393
    const-string v4, ") a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string v4, "JOIN threads t ON (t.root = a.thread_root) JOIN messages m ON (m.id = t.message_id AND m.empty=0 AND m.deleted=0 AND m.date = a.date) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    iget-object v5, p0, Lcom/fsck/k9/provider/EmailProvider$2;->val$projection:[Ljava/lang/String;

    invoke-static {}, Lcom/fsck/k9/provider/EmailProvider;->access$000()[Ljava/lang/String;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v5, v4}, Lcom/fsck/k9/helper/Utility;->arrayContainsAny([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 405
    const-string v4, "JOIN folders f ON (m.folder_id = f.id) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_4
    const-string v4, " GROUP BY root"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    iget-object v4, p0, Lcom/fsck/k9/provider/EmailProvider$2;->val$sortOrder:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 412
    const-string v4, " ORDER BY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-static {}, Lcom/fsck/k9/provider/EmailProvider;->access$400()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "a."

    iget-object v6, p0, Lcom/fsck/k9/provider/EmailProvider$2;->val$sortOrder:Ljava/lang/String;

    .line 413
    invoke-static {v4, v5, v6}, Lcom/fsck/k9/search/SqlQueryBuilder;->addPrefixToSelection([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/provider/EmailProvider$2;->val$selectionArgs:[Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    return-object v4
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
    .line 359
    invoke-virtual {p0, p1}, Lcom/fsck/k9/provider/EmailProvider$2;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
