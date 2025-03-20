.class Lcom/fsck/k9/mailstore/LocalStore$9;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalStore;->getPendingCommands()Ljava/util/List;
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
        "<",
        "Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mailstore/LocalStore;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalStore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalStore;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$9;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

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
    .line 493
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalStore$9;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 18
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
        }
    .end annotation

    .prologue
    .line 496
    const/4 v13, 0x0

    .line 498
    .local v13, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "pending_commands"

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "command"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "data"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "id ASC"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 505
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v12, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;>;"
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 507
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 508
    .local v16, "databaseId":J
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 509
    .local v11, "commandName":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 510
    .local v14, "data":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mailstore/LocalStore$9;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-static {v2}, Lcom/fsck/k9/mailstore/LocalStore;->access$200(Lcom/fsck/k9/mailstore/LocalStore;)Lcom/fsck/k9/controller/PendingCommandSerializer;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1, v11, v14}, Lcom/fsck/k9/controller/PendingCommandSerializer;->unserialize(JLjava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;

    move-result-object v10

    .line 512
    .local v10, "command":Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 516
    .end local v10    # "command":Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    .end local v11    # "commandName":Ljava/lang/String;
    .end local v12    # "commands":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;>;"
    .end local v14    # "data":Ljava/lang/String;
    .end local v16    # "databaseId":J
    :catchall_0
    move-exception v2

    invoke-static {v13}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    throw v2

    .restart local v12    # "commands":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;>;"
    :cond_0
    invoke-static {v13}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    .line 514
    return-object v12
.end method
