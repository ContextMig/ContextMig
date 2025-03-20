.class Lcom/fsck/k9/mailstore/LocalMessage$2;
.super Ljava/lang/Object;
.source "LocalMessage.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalMessage;->delete()V
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
.field final synthetic this$0:Lcom/fsck/k9/mailstore/LocalMessage;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalMessage;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalMessage$2;->this$0:Lcom/fsck/k9/mailstore/LocalMessage;

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
    .line 297
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalMessage$2;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 300
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 301
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "deleted"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    const-string v2, "empty"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    const-string v2, "subject"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 304
    const-string v2, "sender_list"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 305
    const-string v2, "date"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 306
    const-string v2, "to_list"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 307
    const-string v2, "cc_list"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 308
    const-string v2, "bcc_list"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 309
    const-string v2, "preview"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 310
    const-string v2, "reply_to_list"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 311
    const-string v2, "message_part_id"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 313
    const-string v2, "messages"

    const-string v3, "id = ?"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/fsck/k9/mailstore/LocalMessage$2;->this$0:Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-static {v6}, Lcom/fsck/k9/mailstore/LocalMessage;->access$200(Lcom/fsck/k9/mailstore/LocalMessage;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 316
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalMessage$2;->this$0:Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-static {v2}, Lcom/fsck/k9/mailstore/LocalMessage;->access$400(Lcom/fsck/k9/mailstore/LocalMessage;)Lcom/fsck/k9/mail/Folder;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mailstore/LocalFolder;

    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalMessage$2;->this$0:Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-static {v3}, Lcom/fsck/k9/mailstore/LocalMessage;->access$300(Lcom/fsck/k9/mailstore/LocalMessage;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/fsck/k9/mailstore/LocalFolder;->deleteMessagePartsAndDataFromDisk(J)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalMessage$2;->this$0:Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalMessage;->getFolder()Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalMessage$2;->this$0:Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-static {v3}, Lcom/fsck/k9/mailstore/LocalMessage;->access$200(Lcom/fsck/k9/mailstore/LocalMessage;)J

    move-result-wide v4

    invoke-virtual {v2, p1, v4, v5}, Lcom/fsck/k9/mailstore/LocalFolder;->deleteFulltextIndexEntry(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 323
    const/4 v2, 0x0

    return-object v2

    .line 317
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v2, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;

    invoke-direct {v2, v1}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method
