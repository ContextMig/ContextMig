.class Lcom/fsck/k9/mailstore/LocalFolder$22;
.super Ljava/lang/Object;
.source "LocalFolder.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalFolder;->delete(Z)V
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


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalFolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 1831
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder$22;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

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
    .line 1831
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$22;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 1836
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalFolder$22;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 1837
    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalFolder$22;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;)Ljava/util/List;

    move-result-object v2

    .line 1838
    .local v2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 1839
    .local v1, "message":Lcom/fsck/k9/mailstore/LocalMessage;
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalFolder$22;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalMessage;->getMessagePartId()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/fsck/k9/mailstore/LocalFolder;->access$1600(Lcom/fsck/k9/mailstore/LocalFolder;J)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1841
    .end local v1    # "message":Lcom/fsck/k9/mailstore/LocalMessage;
    .end local v2    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    :catch_0
    move-exception v0

    .line 1842
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v3, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;

    invoke-direct {v3, v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 1844
    .end local v0    # "e":Lcom/fsck/k9/mail/MessagingException;
    .restart local v2    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    :cond_0
    const-string v3, "DELETE FROM folders WHERE id = ?"

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/fsck/k9/mailstore/LocalFolder$22;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 1845
    invoke-static {v6}, Lcom/fsck/k9/mailstore/LocalFolder;->access$100(Lcom/fsck/k9/mailstore/LocalFolder;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1844
    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1846
    return-object v8
.end method
