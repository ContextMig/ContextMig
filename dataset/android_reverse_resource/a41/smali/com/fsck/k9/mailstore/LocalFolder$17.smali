.class Lcom/fsck/k9/mailstore/LocalFolder$17;
.super Ljava/lang/Object;
.source "LocalFolder.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalFolder;->appendMessages(Ljava/util/List;Z)Ljava/util/Map;
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

.field final synthetic val$copy:Z

.field final synthetic val$messages:Ljava/util/List;

.field final synthetic val$uidMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;ZLjava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 1285
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder$17;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalFolder$17;->val$messages:Ljava/util/List;

    iput-boolean p3, p0, Lcom/fsck/k9/mailstore/LocalFolder$17;->val$copy:Z

    iput-object p4, p0, Lcom/fsck/k9/mailstore/LocalFolder$17;->val$uidMap:Ljava/util/Map;

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
    .line 1285
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$17;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 1289
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalFolder$17;->val$messages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/Message;

    .line 1290
    .local v1, "message":Lcom/fsck/k9/mail/Message;
    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalFolder$17;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    iget-boolean v4, p0, Lcom/fsck/k9/mailstore/LocalFolder$17;->val$copy:Z

    iget-object v5, p0, Lcom/fsck/k9/mailstore/LocalFolder$17;->val$uidMap:Ljava/util/Map;

    invoke-static {v3, p1, v1, v4, v5}, Lcom/fsck/k9/mailstore/LocalFolder;->access$1400(Lcom/fsck/k9/mailstore/LocalFolder;Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mail/Message;ZLjava/util/Map;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1292
    .end local v1    # "message":Lcom/fsck/k9/mail/Message;
    :catch_0
    move-exception v0

    .line 1293
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v2, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;

    invoke-direct {v2, v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 1295
    .end local v0    # "e":Lcom/fsck/k9/mail/MessagingException;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method
