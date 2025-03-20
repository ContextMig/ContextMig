.class Lcom/fsck/k9/mailstore/LocalMessage$3;
.super Ljava/lang/Object;
.source "LocalMessage.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalMessage;->debugClearLocalData()V
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
    .line 339
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalMessage$3;->this$0:Lcom/fsck/k9/mailstore/LocalMessage;

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
    .line 339
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalMessage$3;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 342
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 343
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "message_part_id"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 345
    const-string v2, "messages"

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/fsck/k9/mailstore/LocalMessage$3;->this$0:Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-static {v5}, Lcom/fsck/k9/mailstore/LocalMessage;->access$200(Lcom/fsck/k9/mailstore/LocalMessage;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 348
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalMessage$3;->this$0:Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-static {v2}, Lcom/fsck/k9/mailstore/LocalMessage;->access$500(Lcom/fsck/k9/mailstore/LocalMessage;)Lcom/fsck/k9/mail/Folder;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mailstore/LocalFolder;

    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalMessage$3;->this$0:Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-static {v3}, Lcom/fsck/k9/mailstore/LocalMessage;->access$300(Lcom/fsck/k9/mailstore/LocalMessage;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/fsck/k9/mailstore/LocalFolder;->deleteMessagePartsAndDataFromDisk(J)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalMessage$3;->this$0:Lcom/fsck/k9/mailstore/LocalMessage;

    sget-object v3, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v2, v3, v8}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 354
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalMessage$3;->this$0:Lcom/fsck/k9/mailstore/LocalMessage;

    sget-object v3, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v2, v3, v8}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 356
    const/4 v2, 0x0

    return-object v2

    .line 349
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v2, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;

    invoke-direct {v2, v1}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method
