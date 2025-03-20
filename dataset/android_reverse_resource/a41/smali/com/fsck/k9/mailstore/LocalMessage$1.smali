.class Lcom/fsck/k9/mailstore/LocalMessage$1;
.super Ljava/lang/Object;
.source "LocalMessage.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V
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

.field final synthetic val$flag:Lcom/fsck/k9/mail/Flag;

.field final synthetic val$set:Z


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalMessage;Lcom/fsck/k9/mail/Flag;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalMessage;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalMessage$1;->this$0:Lcom/fsck/k9/mailstore/LocalMessage;

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalMessage$1;->val$flag:Lcom/fsck/k9/mail/Flag;

    iput-boolean p3, p0, Lcom/fsck/k9/mailstore/LocalMessage$1;->val$set:Z

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
    .line 257
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalMessage$1;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

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
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 261
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalMessage$1;->val$flag:Lcom/fsck/k9/mail/Flag;

    sget-object v5, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    if-ne v2, v5, :cond_0

    iget-boolean v2, p0, Lcom/fsck/k9/mailstore/LocalMessage$1;->val$set:Z

    if-eqz v2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalMessage$1;->this$0:Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-static {v2}, Lcom/fsck/k9/mailstore/LocalMessage;->access$000(Lcom/fsck/k9/mailstore/LocalMessage;)V

    .line 265
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalMessage$1;->this$0:Lcom/fsck/k9/mailstore/LocalMessage;

    iget-object v5, p0, Lcom/fsck/k9/mailstore/LocalMessage$1;->val$flag:Lcom/fsck/k9/mail/Flag;

    iget-boolean v6, p0, Lcom/fsck/k9/mailstore/LocalMessage$1;->val$set:Z

    invoke-static {v2, v5, v6}, Lcom/fsck/k9/mailstore/LocalMessage;->access$101(Lcom/fsck/k9/mailstore/LocalMessage;Lcom/fsck/k9/mail/Flag;Z)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 273
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "flags"

    iget-object v5, p0, Lcom/fsck/k9/mailstore/LocalMessage$1;->this$0:Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-virtual {v5}, Lcom/fsck/k9/mailstore/LocalMessage;->getFlags()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lcom/fsck/k9/mailstore/LocalStore;->serializeFlags(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v5, "read"

    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalMessage$1;->this$0:Lcom/fsck/k9/mailstore/LocalMessage;

    sget-object v6, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v2, v6}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    const-string v5, "flagged"

    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalMessage$1;->this$0:Lcom/fsck/k9/mailstore/LocalMessage;

    sget-object v6, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v2, v6}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    const-string v5, "answered"

    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalMessage$1;->this$0:Lcom/fsck/k9/mailstore/LocalMessage;

    sget-object v6, Lcom/fsck/k9/mail/Flag;->ANSWERED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v2, v6}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    const-string v5, "forwarded"

    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalMessage$1;->this$0:Lcom/fsck/k9/mailstore/LocalMessage;

    sget-object v6, Lcom/fsck/k9/mail/Flag;->FORWARDED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v2, v6}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    const-string v2, "messages"

    const-string v5, "id = ?"

    new-array v3, v3, [Ljava/lang/String;

    iget-object v6, p0, Lcom/fsck/k9/mailstore/LocalMessage$1;->this$0:Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-static {v6}, Lcom/fsck/k9/mailstore/LocalMessage;->access$200(Lcom/fsck/k9/mailstore/LocalMessage;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {p1, v2, v0, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 281
    const/4 v2, 0x0

    return-object v2

    .line 266
    .end local v0    # "cv":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v2, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;

    invoke-direct {v2, v1}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .end local v1    # "e":Lcom/fsck/k9/mail/MessagingException;
    .restart local v0    # "cv":Landroid/content/ContentValues;
    :cond_1
    move v2, v4

    .line 274
    goto :goto_0

    :cond_2
    move v2, v4

    .line 275
    goto :goto_1

    :cond_3
    move v2, v4

    .line 276
    goto :goto_2

    :cond_4
    move v2, v4

    .line 277
    goto :goto_3
.end method
