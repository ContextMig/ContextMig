.class Lcom/fsck/k9/mailstore/LocalFolder$18;
.super Ljava/lang/Object;
.source "LocalFolder.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalFolder;->addPartToMessage(Lcom/fsck/k9/mailstore/LocalMessage;Lcom/fsck/k9/mail/Part;)V
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

.field final synthetic val$message:Lcom/fsck/k9/mailstore/LocalMessage;

.field final synthetic val$part:Lcom/fsck/k9/mail/Part;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mailstore/LocalMessage;Lcom/fsck/k9/mail/Part;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 1670
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder$18;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalFolder$18;->val$message:Lcom/fsck/k9/mailstore/LocalMessage;

    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalFolder$18;->val$part:Lcom/fsck/k9/mail/Part;

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
    .line 1670
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$18;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 1675
    const-string v1, "message_parts"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "id"

    aput-object v3, v2, v0

    const-string v3, "root = ? AND server_extra = ?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/fsck/k9/mailstore/LocalFolder$18;->val$message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 1676
    invoke-virtual {v6}, Lcom/fsck/k9/mailstore/LocalMessage;->getMessagePartId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    const/4 v0, 0x1

    iget-object v6, p0, Lcom/fsck/k9/mailstore/LocalFolder$18;->val$part:Lcom/fsck/k9/mail/Part;

    invoke-interface {v6}, Lcom/fsck/k9/mail/Part;->getServerExtra()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 1675
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1679
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1680
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Message part not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1685
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1683
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    .line 1685
    .local v4, "messagePartId":J
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1689
    :try_start_2
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder$18;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalFolder$18;->val$part:Lcom/fsck/k9/mail/Part;

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/fsck/k9/mailstore/LocalFolder;->access$1500(Lcom/fsck/k9/mailstore/LocalFolder;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Lcom/fsck/k9/mail/Part;J)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1694
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 1690
    :catch_0
    move-exception v9

    .line 1691
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "Error writing message part"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
