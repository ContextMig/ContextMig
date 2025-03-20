.class Lcom/fsck/k9/mailstore/LocalFolder$15;
.super Ljava/lang/Object;
.source "LocalFolder.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalFolder;->storeSmallMessage(Lcom/fsck/k9/mail/Message;Ljava/lang/Runnable;)Lcom/fsck/k9/mailstore/LocalMessage;
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

.field final synthetic val$message:Lcom/fsck/k9/mail/Message;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mail/Message;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder$15;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalFolder$15;->val$message:Lcom/fsck/k9/mail/Message;

    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalFolder$15;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Lcom/fsck/k9/mailstore/LocalMessage;
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 1185
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalFolder$15;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalFolder$15;->val$message:Lcom/fsck/k9/mail/Message;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fsck/k9/mailstore/LocalFolder;->appendMessages(Ljava/util/List;)Ljava/util/Map;

    .line 1186
    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalFolder$15;->val$message:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 1187
    .local v2, "uid":Ljava/lang/String;
    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalFolder$15;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-virtual {v3, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v1

    .line 1188
    .local v1, "result":Lcom/fsck/k9/mailstore/LocalMessage;
    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalFolder$15;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1190
    sget-object v3, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    return-object v1

    .line 1192
    .end local v1    # "result":Lcom/fsck/k9/mailstore/LocalMessage;
    .end local v2    # "uid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1193
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v3, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;

    invoke-direct {v3, v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v3
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
    .line 1181
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$15;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v0

    return-object v0
.end method
