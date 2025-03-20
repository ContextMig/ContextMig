.class Lcom/fsck/k9/mailstore/LocalStore$16;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalStore;->writeAttachmentDataToOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)V
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
.field final synthetic this$0:Lcom/fsck/k9/mailstore/LocalStore;

.field final synthetic val$outputStream:Ljava/io/OutputStream;

.field final synthetic val$partId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalStore;

    .prologue
    .line 700
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$16;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$16;->val$partId:Ljava/lang/String;

    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalStore$16;->val$outputStream:Ljava/io/OutputStream;

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
    .line 700
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalStore$16;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 703
    const-string v1, "message_parts"

    .line 704
    invoke-static {}, Lcom/fsck/k9/mailstore/LocalStore;->access$400()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/fsck/k9/mailstore/LocalStore$16;->val$partId:Ljava/lang/String;

    aput-object v6, v4, v0

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 703
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 708
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$16;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$16;->val$outputStream:Ljava/io/OutputStream;

    invoke-static {v0, p1, v8, v1}, Lcom/fsck/k9/mailstore/LocalStore;->access$500(Lcom/fsck/k9/mailstore/LocalStore;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 712
    invoke-static {v8}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    .line 715
    return-object v5

    .line 709
    :catch_0
    move-exception v9

    .line 710
    .local v9, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v0, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;

    invoke-direct {v0, v9}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 712
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    throw v0
.end method
