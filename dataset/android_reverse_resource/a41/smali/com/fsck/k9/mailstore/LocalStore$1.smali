.class Lcom/fsck/k9/mailstore/LocalStore$1;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalStore;->getSize()J
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mailstore/LocalStore;

.field final synthetic val$attachmentDirectory:Ljava/io/File;

.field final synthetic val$storageManager:Lcom/fsck/k9/mailstore/StorageManager;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/io/File;Lcom/fsck/k9/mailstore/StorageManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalStore;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$attachmentDirectory:Ljava/io/File;

    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$storageManager:Lcom/fsck/k9/mailstore/StorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 285
    iget-object v5, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$attachmentDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 286
    .local v4, "files":[Ljava/io/File;
    const-wide/16 v0, 0x0

    .line 287
    .local v0, "attachmentLength":J
    if-eqz v4, :cond_1

    .line 288
    array-length v6, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v3, v4, v5

    .line 289
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 290
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v0, v8

    .line 288
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 295
    .end local v3    # "file":Ljava/io/File;
    :cond_1
    iget-object v5, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$storageManager:Lcom/fsck/k9/mailstore/StorageManager;

    iget-object v6, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-static {v6}, Lcom/fsck/k9/mailstore/LocalStore;->access$000(Lcom/fsck/k9/mailstore/LocalStore;)Lcom/fsck/k9/Account;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-static {v7}, Lcom/fsck/k9/mailstore/LocalStore;->access$100(Lcom/fsck/k9/mailstore/LocalStore;)Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LockableDatabase;->getStorageProviderId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/fsck/k9/mailstore/StorageManager;->getDatabase(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 296
    .local v2, "dbFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    return-object v5
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
    .line 282
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalStore$1;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
