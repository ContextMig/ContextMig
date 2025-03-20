.class Lcom/fsck/k9/mailstore/LocalFolder$27;
.super Ljava/lang/Object;
.source "LocalFolder.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalFolder;->getOldestMessageDate()Ljava/lang/Long;
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
.field final synthetic this$0:Lcom/fsck/k9/mailstore/LocalFolder;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalFolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 2113
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder$27;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2116
    const/4 v0, 0x0

    .line 2118
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalFolder$27;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 2119
    const-string v2, "SELECT MIN(date) FROM messages WHERE folder_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fsck/k9/mailstore/LocalFolder$27;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 2120
    invoke-static {v5}, Lcom/fsck/k9/mailstore/LocalFolder;->access$100(Lcom/fsck/k9/mailstore/LocalFolder;)J

    move-result-wide v6

    .line 2119
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2121
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 2122
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2123
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2128
    invoke-static {v0}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    .line 2130
    :goto_0
    return-object v2

    .line 2128
    :cond_0
    invoke-static {v0}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    .line 2130
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2125
    :catch_0
    move-exception v1

    .line 2126
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "Unable to fetch oldest message date: "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2128
    invoke-static {v0}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    throw v2
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
    .line 2113
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$27;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
