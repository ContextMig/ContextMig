.class Lcom/fsck/k9/provider/EmailProvider$1;
.super Ljava/lang/Object;
.source "EmailProvider.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/provider/EmailProvider;->getMessages(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
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
.method constructor <init>(Lcom/fsck/k9/provider/EmailProvider;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/provider/EmailProvider;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/fsck/k9/provider/EmailProvider$1;->this$0:Lcom/fsck/k9/provider/EmailProvider;

    iput-object p2, p0, Lcom/fsck/k9/provider/EmailProvider$1;->val$selection:Ljava/lang/String;

    iput-object p3, p0, Lcom/fsck/k9/provider/EmailProvider$1;->val$projection:[Ljava/lang/String;

    iput-object p4, p0, Lcom/fsck/k9/provider/EmailProvider$1;->val$sortOrder:Ljava/lang/String;

    iput-object p5, p0, Lcom/fsck/k9/provider/EmailProvider$1;->val$selectionArgs:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 300
    iget-object v0, p0, Lcom/fsck/k9/provider/EmailProvider$1;->val$selection:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const-string v3, "deleted = 0 AND empty = 0"

    .line 308
    .local v3, "where":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/provider/EmailProvider$1;->val$projection:[Ljava/lang/String;

    invoke-static {}, Lcom/fsck/k9/provider/EmailProvider;->access$000()[Ljava/lang/String;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/fsck/k9/helper/Utility;->arrayContainsAny([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 309
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .local v11, "query":Ljava/lang/StringBuilder;
    const-string v0, "SELECT "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const/4 v10, 0x1

    .line 312
    .local v10, "first":Z
    iget-object v1, p0, Lcom/fsck/k9/provider/EmailProvider$1;->val$projection:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v8, v1, v0

    .line 313
    .local v8, "columnName":Ljava/lang/String;
    if-nez v10, :cond_1

    .line 314
    const-string v4, ","

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :goto_2
    const-string v4, "id"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 320
    const-string v4, "m."

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string v4, "id"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string v4, " AS "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string v4, "id"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 303
    .end local v3    # "where":Ljava/lang/String;
    .end local v8    # "columnName":Ljava/lang/String;
    .end local v10    # "first":Z
    .end local v11    # "query":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/provider/EmailProvider$1;->val$selection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 0 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "where":Ljava/lang/String;
    goto :goto_0

    .line 316
    .restart local v8    # "columnName":Ljava/lang/String;
    .restart local v10    # "first":Z
    .restart local v11    # "query":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    .line 325
    :cond_2
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 329
    .end local v8    # "columnName":Ljava/lang/String;
    :cond_3
    const-string v0, " FROM messages m JOIN threads t ON (t.message_id = m.id) LEFT JOIN folders f ON (m.folder_id = f.id) WHERE "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-static {}, Lcom/fsck/k9/provider/EmailProvider;->access$100()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "m."

    invoke-static {v0, v1, v3}, Lcom/fsck/k9/search/SqlQueryBuilder;->addPrefixToSelection([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v0, " ORDER BY "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-static {}, Lcom/fsck/k9/provider/EmailProvider;->access$100()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "m."

    iget-object v2, p0, Lcom/fsck/k9/provider/EmailProvider$1;->val$sortOrder:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/search/SqlQueryBuilder;->addPrefixToSelection([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/provider/EmailProvider$1;->val$selectionArgs:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 342
    .end local v10    # "first":Z
    .end local v11    # "query":Ljava/lang/StringBuilder;
    .local v9, "cursor":Landroid/database/Cursor;
    :goto_4
    return-object v9

    .line 339
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_4
    const-string v1, "messages"

    iget-object v2, p0, Lcom/fsck/k9/provider/EmailProvider$1;->val$projection:[Ljava/lang/String;

    iget-object v4, p0, Lcom/fsck/k9/provider/EmailProvider$1;->val$selectionArgs:[Ljava/lang/String;

    iget-object v7, p0, Lcom/fsck/k9/provider/EmailProvider$1;->val$sortOrder:Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .restart local v9    # "cursor":Landroid/database/Cursor;
    goto :goto_4
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
    .line 294
    invoke-virtual {p0, p1}, Lcom/fsck/k9/provider/EmailProvider$1;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
