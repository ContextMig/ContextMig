.class Lcom/fsck/k9/mailstore/LocalFolder$8;
.super Ljava/lang/Object;
.source "LocalFolder.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalFolder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
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

.field final synthetic val$fp:Lcom/fsck/k9/mail/FetchProfile;

.field final synthetic val$messages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mail/FetchProfile;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 686
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder$8;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalFolder$8;->val$fp:Lcom/fsck/k9/mail/FetchProfile;

    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalFolder$8;->val$messages:Ljava/util/List;

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
    .line 686
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$8;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
        }
    .end annotation

    .prologue
    .line 690
    :try_start_0
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalFolder$8;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 691
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalFolder$8;->val$fp:Lcom/fsck/k9/mail/FetchProfile;

    sget-object v5, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v4, v5}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 692
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalFolder$8;->val$messages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/mail/Message;

    .line 693
    .local v3, "message":Lcom/fsck/k9/mail/Message;
    move-object v0, v3

    check-cast v0, Lcom/fsck/k9/mailstore/LocalMessage;

    move-object v2, v0

    .line 695
    .local v2, "localMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    iget-object v5, p0, Lcom/fsck/k9/mailstore/LocalFolder$8;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-static {v5, p1, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->access$1100(Lcom/fsck/k9/mailstore/LocalFolder;Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/LocalMessage;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 698
    .end local v2    # "localMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    .end local v3    # "message":Lcom/fsck/k9/mail/Message;
    :catch_0
    move-exception v1

    .line 699
    .local v1, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v4, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;

    invoke-direct {v4, v1}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 701
    .end local v1    # "e":Lcom/fsck/k9/mail/MessagingException;
    :cond_0
    const/4 v4, 0x0

    return-object v4
.end method
