.class Lcom/fsck/k9/mailstore/LocalFolder$1;
.super Ljava/lang/Object;
.source "LocalFolder.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V
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

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalFolder;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder$1;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    iput p2, p0, Lcom/fsck/k9/mailstore/LocalFolder$1;->val$mode:I

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
    .line 153
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$1;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
        }
    .end annotation

    .prologue
    .line 156
    const/4 v1, 0x0

    .line 158
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "SELECT folders.id, name, visible_limit, last_updated, status, push_state, last_pushed, integrate, top_group, poll_class, push_class, display_class, notify_class, more_messages FROM folders "

    .line 160
    .local v0, "baseQuery":Ljava/lang/String;
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalFolder$1;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-static {v4}, Lcom/fsck/k9/mailstore/LocalFolder;->access$000(Lcom/fsck/k9/mailstore/LocalFolder;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "where folders.name = ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/fsck/k9/mailstore/LocalFolder$1;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-static {v7}, Lcom/fsck/k9/mailstore/LocalFolder;->access$000(Lcom/fsck/k9/mailstore/LocalFolder;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 167
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 168
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 169
    .local v3, "folderId":I
    if-lez v3, :cond_0

    .line 170
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalFolder$1;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-virtual {v4, v1}, Lcom/fsck/k9/mailstore/LocalFolder;->open(Landroid/database/Cursor;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .end local v3    # "folderId":I
    :cond_0
    :goto_1
    invoke-static {v1}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    .line 182
    const/4 v4, 0x0

    return-object v4

    .line 163
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "where folders.id = ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/fsck/k9/mailstore/LocalFolder$1;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 164
    invoke-static {v7}, Lcom/fsck/k9/mailstore/LocalFolder;->access$100(Lcom/fsck/k9/mailstore/LocalFolder;)J

    move-result-wide v8

    .line 163
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 173
    :cond_2
    const-string v4, "Creating folder %s with existing id %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/fsck/k9/mailstore/LocalFolder$1;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalFolder;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/fsck/k9/mailstore/LocalFolder$1;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalFolder;->getDatabaseId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalFolder$1;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    sget-object v5, Lcom/fsck/k9/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/fsck/k9/mail/Folder$FolderType;

    invoke-virtual {v4, v5}, Lcom/fsck/k9/mailstore/LocalFolder;->create(Lcom/fsck/k9/mail/Folder$FolderType;)Z

    .line 175
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalFolder$1;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    iget v5, p0, Lcom/fsck/k9/mailstore/LocalFolder$1;->val$mode:I

    invoke-virtual {v4, v5}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V
    :try_end_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 177
    .end local v0    # "baseQuery":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 178
    .local v2, "e":Lcom/fsck/k9/mail/MessagingException;
    :try_start_2
    new-instance v4, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;

    invoke-direct {v4, v2}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    .end local v2    # "e":Lcom/fsck/k9/mail/MessagingException;
    :catchall_0
    move-exception v4

    invoke-static {v1}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    throw v4
.end method
