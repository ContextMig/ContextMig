.class Lcom/fsck/k9/mailstore/LocalFolder$10;
.super Ljava/lang/Object;
.source "LocalFolder.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;
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
        "Lcom/fsck/k9/mailstore/LocalMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mailstore/LocalFolder;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalFolder;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 861
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder$10;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalFolder$10;->val$uid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Lcom/fsck/k9/mailstore/LocalMessage;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 865
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalFolder$10;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 866
    new-instance v2, Lcom/fsck/k9/mailstore/LocalMessage;

    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalFolder$10;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-static {v3}, Lcom/fsck/k9/mailstore/LocalFolder;->access$1200(Lcom/fsck/k9/mailstore/LocalFolder;)Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalFolder$10;->val$uid:Ljava/lang/String;

    iget-object v5, p0, Lcom/fsck/k9/mailstore/LocalFolder$10;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-direct {v2, v3, v4, v5}, Lcom/fsck/k9/mailstore/LocalMessage;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    .local v2, "message":Lcom/fsck/k9/mailstore/LocalMessage;
    const/4 v0, 0x0

    .line 870
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/fsck/k9/mailstore/LocalStore;->GET_MESSAGES_COLS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "FROM messages LEFT JOIN message_parts ON (message_parts.id = messages.message_part_id) LEFT JOIN threads ON (threads.message_id = messages.id) WHERE uid = ? AND folder_id = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 877
    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/fsck/k9/mailstore/LocalFolder$10;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-static {v6}, Lcom/fsck/k9/mailstore/LocalFolder;->access$100(Lcom/fsck/k9/mailstore/LocalFolder;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 870
    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 879
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 880
    const/4 v2, 0x0

    .line 884
    .end local v2    # "message":Lcom/fsck/k9/mailstore/LocalMessage;
    :try_start_2
    invoke-static {v0}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V
    :try_end_2
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 886
    :goto_0
    return-object v2

    .line 882
    .restart local v2    # "message":Lcom/fsck/k9/mailstore/LocalMessage;
    :cond_0
    :try_start_3
    invoke-virtual {v2, v0}, Lcom/fsck/k9/mailstore/LocalMessage;->populateFromGetMessageCursor(Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 884
    :try_start_4
    invoke-static {v0}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V
    :try_end_4
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 887
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "message":Lcom/fsck/k9/mailstore/LocalMessage;
    :catch_0
    move-exception v1

    .line 888
    .local v1, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v3, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;

    invoke-direct {v3, v1}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 884
    .end local v1    # "e":Lcom/fsck/k9/mail/MessagingException;
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "message":Lcom/fsck/k9/mailstore/LocalMessage;
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-static {v0}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    throw v3
    :try_end_5
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0
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
    .line 861
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$10;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v0

    return-object v0
.end method
