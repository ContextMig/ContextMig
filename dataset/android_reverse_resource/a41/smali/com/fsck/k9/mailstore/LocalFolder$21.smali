.class Lcom/fsck/k9/mailstore/LocalFolder$21;
.super Ljava/lang/Object;
.source "LocalFolder.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalFolder;->clearAllMessages()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mailstore/LocalFolder;

.field final synthetic val$folderIdArg:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalFolder;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 1788
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder$21;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalFolder$21;->val$folderIdArg:[Ljava/lang/String;

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
    .line 1788
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$21;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 1792
    :try_start_0
    const-string v1, "messages"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "message_part_id"

    aput-object v3, v2, v0

    const-string v3, "folder_id = ? AND empty = 0"

    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalFolder$21;->val$folderIdArg:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1796
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1797
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1798
    .local v10, "messagePartId":J
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder$21;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-static {v0, v10, v11}, Lcom/fsck/k9/mailstore/LocalFolder;->access$1600(Lcom/fsck/k9/mailstore/LocalFolder;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1801
    .end local v10    # "messagePartId":J
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1811
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 1812
    .local v9, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v0, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;

    invoke-direct {v0, v9}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 1801
    .end local v9    # "e":Lcom/fsck/k9/mail/MessagingException;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1804
    const-string v0, "DELETE FROM threads WHERE message_id IN (SELECT id FROM messages WHERE folder_id = ?)"

    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder$21;->val$folderIdArg:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1806
    const-string v0, "DELETE FROM messages WHERE folder_id = ?"

    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder$21;->val$folderIdArg:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1808
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder$21;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    sget-object v1, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->UNKNOWN:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/LocalFolder;->setMoreMessages(Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;)V
    :try_end_3
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1810
    return-object v12
.end method
