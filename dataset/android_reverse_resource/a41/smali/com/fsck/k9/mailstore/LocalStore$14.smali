.class Lcom/fsck/k9/mailstore/LocalStore$14;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalStore;->getAttachmentInfo(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalStore$AttachmentInfo;
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
        "Lcom/fsck/k9/mailstore/LocalStore$AttachmentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mailstore/LocalStore;

.field final synthetic val$attachmentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalStore;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$14;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$14;->val$attachmentId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Lcom/fsck/k9/mailstore/LocalStore$AttachmentInfo;
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 661
    const-string v1, "message_parts"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v6

    const-string v0, "decoded_body_size"

    aput-object v0, v2, v4

    const-string v0, "mime_type"

    aput-object v0, v2, v3

    const-string v3, "id = ?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$14;->val$attachmentId:Ljava/lang/String;

    aput-object v0, v4, v6

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 667
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 681
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 679
    :goto_0
    return-object v5

    .line 670
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 671
    .local v11, "name":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 672
    .local v12, "size":J
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 674
    .local v10, "mimeType":Ljava/lang/String;
    new-instance v8, Lcom/fsck/k9/mailstore/LocalStore$AttachmentInfo;

    invoke-direct {v8}, Lcom/fsck/k9/mailstore/LocalStore$AttachmentInfo;-><init>()V

    .line 675
    .local v8, "attachmentInfo":Lcom/fsck/k9/mailstore/LocalStore$AttachmentInfo;
    iput-object v11, v8, Lcom/fsck/k9/mailstore/LocalStore$AttachmentInfo;->name:Ljava/lang/String;

    .line 676
    iput-wide v12, v8, Lcom/fsck/k9/mailstore/LocalStore$AttachmentInfo;->size:J

    .line 677
    iput-object v10, v8, Lcom/fsck/k9/mailstore/LocalStore$AttachmentInfo;->type:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 681
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v5, v8

    .line 679
    goto :goto_0

    .line 681
    .end local v8    # "attachmentInfo":Lcom/fsck/k9/mailstore/LocalStore$AttachmentInfo;
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "size":J
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
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
    .line 658
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalStore$14;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Lcom/fsck/k9/mailstore/LocalStore$AttachmentInfo;

    move-result-object v0

    return-object v0
.end method
