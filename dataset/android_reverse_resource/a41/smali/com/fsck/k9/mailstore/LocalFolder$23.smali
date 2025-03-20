.class Lcom/fsck/k9/mailstore/LocalFolder$23;
.super Ljava/lang/Object;
.source "LocalFolder.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalFolder;->destroyMessage(JJLjava/lang/String;)V
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

.field final synthetic val$messageId:J

.field final synthetic val$messageIdHeader:Ljava/lang/String;

.field final synthetic val$messagePartId:J


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalFolder;JJLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 1874
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder$23;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    iput-wide p2, p0, Lcom/fsck/k9/mailstore/LocalFolder$23;->val$messagePartId:J

    iput-wide p4, p0, Lcom/fsck/k9/mailstore/LocalFolder$23;->val$messageId:J

    iput-object p6, p0, Lcom/fsck/k9/mailstore/LocalFolder$23;->val$messageIdHeader:Ljava/lang/String;

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
    .line 1874
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$23;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1879
    :try_start_0
    iget-object v6, p0, Lcom/fsck/k9/mailstore/LocalFolder$23;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    iget-wide v8, p0, Lcom/fsck/k9/mailstore/LocalFolder$23;->val$messagePartId:J

    invoke-virtual {v6, v8, v9}, Lcom/fsck/k9/mailstore/LocalFolder;->deleteMessagePartsAndDataFromDisk(J)V

    .line 1881
    iget-object v6, p0, Lcom/fsck/k9/mailstore/LocalFolder$23;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    iget-wide v8, p0, Lcom/fsck/k9/mailstore/LocalFolder$23;->val$messageId:J

    invoke-virtual {v6, p1, v8, v9}, Lcom/fsck/k9/mailstore/LocalFolder;->deleteFulltextIndexEntry(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1883
    iget-object v6, p0, Lcom/fsck/k9/mailstore/LocalFolder$23;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    iget-wide v8, p0, Lcom/fsck/k9/mailstore/LocalFolder$23;->val$messageId:J

    invoke-static {v6, p1, v8, v9}, Lcom/fsck/k9/mailstore/LocalFolder;->access$1700(Lcom/fsck/k9/mailstore/LocalFolder;Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1886
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1887
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v6, "id"

    iget-wide v8, p0, Lcom/fsck/k9/mailstore/LocalFolder$23;->val$messageId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1888
    const-string v6, "folder_id"

    iget-object v7, p0, Lcom/fsck/k9/mailstore/LocalFolder$23;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalFolder;->getDatabaseId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1889
    const-string v6, "deleted"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1890
    const-string v6, "message_id"

    iget-object v7, p0, Lcom/fsck/k9/mailstore/LocalFolder$23;->val$messageIdHeader:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    const-string v6, "empty"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1893
    const-string v6, "messages"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1927
    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-object v10

    .line 1900
    :cond_1
    iget-object v6, p0, Lcom/fsck/k9/mailstore/LocalFolder$23;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    iget-wide v8, p0, Lcom/fsck/k9/mailstore/LocalFolder$23;->val$messageId:J

    invoke-static {v6, p1, v8, v9}, Lcom/fsck/k9/mailstore/LocalFolder;->access$1800(Lcom/fsck/k9/mailstore/LocalFolder;Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v0

    .line 1903
    .local v0, "currentId":J
    iget-object v6, p0, Lcom/fsck/k9/mailstore/LocalFolder$23;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    iget-wide v8, p0, Lcom/fsck/k9/mailstore/LocalFolder$23;->val$messageId:J

    invoke-static {v6, p1, v8, v9}, Lcom/fsck/k9/mailstore/LocalFolder;->access$1900(Lcom/fsck/k9/mailstore/LocalFolder;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1909
    :goto_0
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-eqz v6, :cond_0

    .line 1910
    iget-object v6, p0, Lcom/fsck/k9/mailstore/LocalFolder$23;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-static {v6, p1, v0, v1}, Lcom/fsck/k9/mailstore/LocalFolder;->access$1700(Lcom/fsck/k9/mailstore/LocalFolder;Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1916
    iget-object v6, p0, Lcom/fsck/k9/mailstore/LocalFolder$23;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-static {v6, p1, v0, v1}, Lcom/fsck/k9/mailstore/LocalFolder;->access$1800(Lcom/fsck/k9/mailstore/LocalFolder;Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v4

    .line 1919
    .local v4, "newId":J
    iget-object v6, p0, Lcom/fsck/k9/mailstore/LocalFolder$23;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-static {v6, p1, v0, v1}, Lcom/fsck/k9/mailstore/LocalFolder;->access$1900(Lcom/fsck/k9/mailstore/LocalFolder;Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1921
    move-wide v0, v4

    .line 1922
    goto :goto_0

    .line 1924
    .end local v0    # "currentId":J
    .end local v4    # "newId":J
    :catch_0
    move-exception v3

    .line 1925
    .local v3, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v6, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;

    invoke-direct {v6, v3}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method
