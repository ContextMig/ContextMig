.class Lcom/fsck/k9/mailstore/LocalFolder$20;
.super Ljava/lang/Object;
.source "LocalFolder.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalFolder;->setFlags(Ljava/util/List;Ljava/util/Set;Z)V
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

.field final synthetic val$flags:Ljava/util/Set;

.field final synthetic val$messages:Ljava/util/List;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;Ljava/util/Set;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 1729
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder$20;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalFolder$20;->val$messages:Ljava/util/List;

    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalFolder$20;->val$flags:Ljava/util/Set;

    iput-boolean p4, p0, Lcom/fsck/k9/mailstore/LocalFolder$20;->val$value:Z

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
    .line 1729
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$20;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 1734
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalFolder$20;->val$messages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/Message;

    .line 1736
    .local v1, "message":Lcom/fsck/k9/mail/Message;
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalFolder$20;->val$flags:Ljava/util/Set;

    iget-boolean v4, p0, Lcom/fsck/k9/mailstore/LocalFolder$20;->val$value:Z

    invoke-virtual {v1, v3, v4}, Lcom/fsck/k9/mail/Message;->setFlags(Ljava/util/Set;Z)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1737
    :catch_0
    move-exception v0

    .line 1738
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v3, "Something went wrong while setting flag"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1742
    .end local v0    # "e":Lcom/fsck/k9/mail/MessagingException;
    .end local v1    # "message":Lcom/fsck/k9/mail/Message;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method
