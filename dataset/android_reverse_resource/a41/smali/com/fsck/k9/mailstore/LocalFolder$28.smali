.class Lcom/fsck/k9/mailstore/LocalFolder$28;
.super Ljava/lang/Object;
.source "LocalFolder.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalFolder;->extractNewMessages(Ljava/util/List;)Ljava/util/List;
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
        "Ljava/util/List",
        "<",
        "Lcom/fsck/k9/mail/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mailstore/LocalFolder;

.field final synthetic val$messages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 2242
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder$28;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalFolder$28;->val$messages:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2242
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$28;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 22
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
        }
    .end annotation

    .prologue
    .line 2246
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mailstore/LocalFolder$28;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2251
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 2253
    .local v17, "result":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2254
    .local v19, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 2255
    .local v14, "existingMessages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v20, 0x0

    .line 2257
    .local v20, "start":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mailstore/LocalFolder$28;->val$messages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_5

    .line 2258
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 2260
    .local v18, "selection":Ljava/lang/StringBuilder;
    const-string v2, "folder_id = ? AND UID IN ("

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mailstore/LocalFolder$28;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-static {v2}, Lcom/fsck/k9/mailstore/LocalFolder;->access$100(Lcom/fsck/k9/mailstore/LocalFolder;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mailstore/LocalFolder$28;->val$messages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int v2, v2, v20

    const/16 v3, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 2265
    .local v10, "count":I
    move/from16 v15, v20

    .local v15, "i":I
    add-int v13, v20, v10

    .local v13, "end":I
    :goto_1
    if-ge v15, v13, :cond_1

    .line 2266
    move/from16 v0, v20

    if-le v15, v0, :cond_0

    .line 2267
    const-string v2, ",?"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2272
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mailstore/LocalFolder$28;->val$messages:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/Message;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2265
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2247
    .end local v10    # "count":I
    .end local v13    # "end":I
    .end local v14    # "existingMessages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "i":I
    .end local v17    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .end local v18    # "selection":Ljava/lang/StringBuilder;
    .end local v19    # "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "start":I
    :catch_0
    move-exception v12

    .line 2248
    .local v12, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v2, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;

    invoke-direct {v2, v12}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 2269
    .end local v12    # "e":Lcom/fsck/k9/mail/MessagingException;
    .restart local v10    # "count":I
    .restart local v13    # "end":I
    .restart local v14    # "existingMessages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "i":I
    .restart local v17    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .restart local v18    # "selection":Ljava/lang/StringBuilder;
    .restart local v19    # "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "start":I
    :cond_0
    const-string v2, "?"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2275
    :cond_1
    const-string v2, ")"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2277
    const-string v3, "messages"

    sget-object v4, Lcom/fsck/k9/mailstore/LocalStore;->UID_CHECK_PROJECTION:[Ljava/lang/String;

    .line 2278
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v2, Lcom/fsck/k9/mailstore/LocalStore;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    .line 2277
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2282
    .local v11, "cursor":Landroid/database/Cursor;
    :goto_3
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2283
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 2284
    .local v21, "uid":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 2287
    .end local v21    # "uid":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-static {v11}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    throw v2

    :cond_2
    invoke-static {v11}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    .line 2290
    move/from16 v15, v20

    add-int v13, v20, v10

    :goto_4
    if-ge v15, v13, :cond_4

    .line 2291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mailstore/LocalFolder$28;->val$messages:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/fsck/k9/mail/Message;

    .line 2292
    .local v16, "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2293
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2290
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 2297
    .end local v16    # "message":Lcom/fsck/k9/mail/Message;
    :cond_4
    invoke-interface {v14}, Ljava/util/Set;->clear()V

    .line 2298
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 2299
    add-int v20, v20, v10

    .line 2300
    goto/16 :goto_0

    .line 2302
    .end local v10    # "count":I
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v13    # "end":I
    .end local v15    # "i":I
    .end local v18    # "selection":Ljava/lang/StringBuilder;
    :cond_5
    return-object v17
.end method
