.class Lcom/fsck/k9/mailstore/LocalFolder$6;
.super Ljava/lang/Object;
.source "LocalFolder.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalFolder;->purgeToVisibleLimit(Lcom/fsck/k9/mailstore/MessageRemovalListener;)V
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

.field final synthetic val$listener:Lcom/fsck/k9/mailstore/MessageRemovalListener;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mailstore/MessageRemovalListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder$6;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalFolder$6;->val$listener:Lcom/fsck/k9/mailstore/MessageRemovalListener;

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
    .line 413
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$6;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v8, 0x0

    .line 416
    const-string v4, "SELECT uid FROM messages WHERE empty = 0 AND deleted = 0 AND folder_id = ? ORDER BY date DESC  LIMIT -1 OFFSET ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p0, Lcom/fsck/k9/mailstore/LocalFolder$6;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 420
    invoke-virtual {v6}, Lcom/fsck/k9/mailstore/LocalFolder;->getDatabaseId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/fsck/k9/mailstore/LocalFolder$6;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-static {v7}, Lcom/fsck/k9/mailstore/LocalFolder;->access$1000(Lcom/fsck/k9/mailstore/LocalFolder;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 416
    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 423
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 424
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 425
    .local v3, "uid":Ljava/lang/String;
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalFolder$6;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-virtual {v4, v3}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v2

    .line 427
    .local v2, "localMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalFolder$6;->val$listener:Lcom/fsck/k9/mailstore/MessageRemovalListener;

    if-eqz v4, :cond_0

    .line 428
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalFolder$6;->val$listener:Lcom/fsck/k9/mailstore/MessageRemovalListener;

    invoke-interface {v4, v2}, Lcom/fsck/k9/mailstore/MessageRemovalListener;->messageRemoved(Lcom/fsck/k9/mail/Message;)V

    .line 430
    :cond_0
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalFolder$6;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-virtual {v4, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->destroyMessage(Lcom/fsck/k9/mailstore/LocalMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 432
    .end local v2    # "localMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    .end local v3    # "uid":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 433
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "Got an exception"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    invoke-static {v0}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    .line 437
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v4, 0x0

    return-object v4

    .line 435
    :cond_1
    invoke-static {v0}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v0}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    throw v4
.end method
