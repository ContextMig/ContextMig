.class Lcom/fsck/k9/mailstore/LocalStore$22;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalStore;->setFlagForThreads(Ljava/util/List;Lcom/fsck/k9/mail/Flag;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mailstore/LocalStore;

.field final synthetic val$flagColumn:Ljava/lang/String;

.field final synthetic val$newState:Z

.field final synthetic val$threadRootIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalStore;

    .prologue
    .line 1174
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$22;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$22;->val$threadRootIds:Ljava/util/List;

    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalStore$22;->val$flagColumn:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/fsck/k9/mailstore/LocalStore$22;->val$newState:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "selectionSet"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE messages SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$22;->val$flagColumn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/fsck/k9/mailstore/LocalStore$22;->val$newState:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE id IN (SELECT m.id FROM threads t LEFT JOIN messages m ON (t.message_id = m.id) WHERE m.empty = 0 AND m.deleted = 0 AND t.root"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1197
    return-void

    .line 1190
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public getListItem(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$22;->val$threadRootIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListSize()I
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$22;->val$threadRootIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public postDbWork()V
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$22;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalStore;->notifyChange()V

    .line 1202
    return-void
.end method
