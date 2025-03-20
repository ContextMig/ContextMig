.class Lcom/fsck/k9/mailstore/LocalFolder$12;
.super Ljava/lang/Object;
.source "LocalFolder.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalFolder;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;Z)Ljava/util/List;
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
        "Lcom/fsck/k9/mailstore/LocalMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mailstore/LocalFolder;

.field final synthetic val$includeDeleted:Z

.field final synthetic val$listener:Lcom/fsck/k9/mail/MessageRetrievalListener;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mail/MessageRetrievalListener;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 941
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder$12;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalFolder$12;->val$listener:Lcom/fsck/k9/mail/MessageRetrievalListener;

    iput-boolean p3, p0, Lcom/fsck/k9/mailstore/LocalFolder$12;->val$includeDeleted:Z

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
    .line 941
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$12;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mailstore/LocalMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 945
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder$12;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 946
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder$12;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-static {v1}, Lcom/fsck/k9/mailstore/LocalFolder;->access$1200(Lcom/fsck/k9/mailstore/LocalFolder;)Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalFolder$12;->val$listener:Lcom/fsck/k9/mail/MessageRetrievalListener;

    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalFolder$12;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/fsck/k9/mailstore/LocalStore;->GET_MESSAGES_COLS:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "FROM messages LEFT JOIN message_parts ON (message_parts.id = messages.message_part_id) LEFT JOIN threads ON (threads.message_id = messages.id) WHERE empty = 0 AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v1, p0, Lcom/fsck/k9/mailstore/LocalFolder$12;->val$includeDeleted:Z

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "folder_id = ? ORDER BY date DESC"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/fsck/k9/mailstore/LocalFolder$12;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 954
    invoke-static {v7}, Lcom/fsck/k9/mailstore/LocalFolder;->access$100(Lcom/fsck/k9/mailstore/LocalFolder;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 946
    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/fsck/k9/mailstore/LocalStore;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "deleted = 0 AND "
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 955
    :catch_0
    move-exception v0

    .line 956
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v1, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;

    invoke-direct {v1, v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
