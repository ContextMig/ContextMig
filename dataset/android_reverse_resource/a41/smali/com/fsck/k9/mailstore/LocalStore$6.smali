.class Lcom/fsck/k9/mailstore/LocalStore$6;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalStore;->getPersonalNamespaces(Z)Ljava/util/List;
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
        "<+",
        "Lcom/fsck/k9/mail/Folder;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mailstore/LocalStore;

.field final synthetic val$folders:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalStore;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$6;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$6;->val$folders:Ljava/util/List;

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
    .line 401
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalStore$6;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Folder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
        }
    .end annotation

    .prologue
    .line 404
    const/4 v0, 0x0

    .line 407
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "SELECT folders.id, name, visible_limit, last_updated, status, push_state, last_pushed, integrate, top_group, poll_class, push_class, display_class, notify_class, more_messages FROM folders ORDER BY name ASC"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 409
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 410
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 413
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 414
    .local v3, "folderName":Ljava/lang/String;
    new-instance v2, Lcom/fsck/k9/mailstore/LocalFolder;

    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalStore$6;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-direct {v2, v4, v3}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;)V

    .line 415
    .local v2, "folder":Lcom/fsck/k9/mailstore/LocalFolder;
    invoke-virtual {v2, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->open(Landroid/database/Cursor;)V

    .line 417
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalStore$6;->val$folders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 420
    .end local v2    # "folder":Lcom/fsck/k9/mailstore/LocalFolder;
    .end local v3    # "folderName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 421
    .local v1, "e":Lcom/fsck/k9/mail/MessagingException;
    :try_start_1
    new-instance v4, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;

    invoke-direct {v4, v1}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    .end local v1    # "e":Lcom/fsck/k9/mail/MessagingException;
    :catchall_0
    move-exception v4

    invoke-static {v0}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    throw v4

    .line 419
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalStore$6;->val$folders:Ljava/util/List;
    :try_end_2
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 423
    invoke-static {v0}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    .line 419
    return-object v4
.end method
