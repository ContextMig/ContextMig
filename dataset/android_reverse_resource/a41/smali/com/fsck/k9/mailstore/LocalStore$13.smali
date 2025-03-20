.class Lcom/fsck/k9/mailstore/LocalStore$13;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalStore;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mailstore/LocalStore;

.field final synthetic val$folder:Lcom/fsck/k9/mailstore/LocalFolder;

.field final synthetic val$listener:Lcom/fsck/k9/mail/MessageRetrievalListener;

.field final synthetic val$messages:Ljava/util/List;

.field final synthetic val$placeHolders:[Ljava/lang/String;

.field final synthetic val$queryString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;[Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalStore;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$13;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$13;->val$queryString:Ljava/lang/String;

    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalStore$13;->val$placeHolders:[Ljava/lang/String;

    iput-object p4, p0, Lcom/fsck/k9/mailstore/LocalStore$13;->val$folder:Lcom/fsck/k9/mailstore/LocalFolder;

    iput-object p5, p0, Lcom/fsck/k9/mailstore/LocalStore$13;->val$messages:Ljava/util/List;

    iput-object p6, p0, Lcom/fsck/k9/mailstore/LocalStore$13;->val$listener:Lcom/fsck/k9/mail/MessageRetrievalListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
        }
    .end annotation

    .prologue
    .line 604
    const/4 v0, 0x0

    .line 605
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 607
    .local v2, "i":I
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/mailstore/LocalStore$13;->val$queryString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIMIT 10"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/mailstore/LocalStore$13;->val$placeHolders:[Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 609
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 610
    new-instance v3, Lcom/fsck/k9/mailstore/LocalMessage;

    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalStore$13;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/fsck/k9/mailstore/LocalStore$13;->val$folder:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-direct {v3, v4, v5, v6}, Lcom/fsck/k9/mailstore/LocalMessage;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V

    .line 611
    .local v3, "message":Lcom/fsck/k9/mailstore/LocalMessage;
    invoke-virtual {v3, v0}, Lcom/fsck/k9/mailstore/LocalMessage;->populateFromGetMessageCursor(Landroid/database/Cursor;)V

    .line 613
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalStore$13;->val$messages:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalStore$13;->val$listener:Lcom/fsck/k9/mail/MessageRetrievalListener;

    if-eqz v4, :cond_0

    .line 615
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalStore$13;->val$listener:Lcom/fsck/k9/mail/MessageRetrievalListener;

    const/4 v5, -0x1

    invoke-interface {v4, v3, v2, v5}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/Message;II)V

    .line 617
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 618
    goto :goto_0

    .line 619
    .end local v3    # "message":Lcom/fsck/k9/mailstore/LocalMessage;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 620
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/mailstore/LocalStore$13;->val$queryString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIMIT -1 OFFSET 10"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/mailstore/LocalStore$13;->val$placeHolders:[Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 622
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 623
    new-instance v3, Lcom/fsck/k9/mailstore/LocalMessage;

    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalStore$13;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/fsck/k9/mailstore/LocalStore$13;->val$folder:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-direct {v3, v4, v5, v6}, Lcom/fsck/k9/mailstore/LocalMessage;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V

    .line 624
    .restart local v3    # "message":Lcom/fsck/k9/mailstore/LocalMessage;
    invoke-virtual {v3, v0}, Lcom/fsck/k9/mailstore/LocalMessage;->populateFromGetMessageCursor(Landroid/database/Cursor;)V

    .line 626
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalStore$13;->val$messages:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalStore$13;->val$listener:Lcom/fsck/k9/mail/MessageRetrievalListener;

    if-eqz v4, :cond_2

    .line 628
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalStore$13;->val$listener:Lcom/fsck/k9/mail/MessageRetrievalListener;

    const/4 v5, -0x1

    invoke-interface {v4, v3, v2, v5}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/Message;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 631
    goto :goto_1

    .line 635
    .end local v3    # "message":Lcom/fsck/k9/mailstore/LocalMessage;
    :cond_3
    invoke-static {v0}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    .line 637
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 632
    :catch_0
    move-exception v1

    .line 633
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "Got an exception"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 635
    invoke-static {v0}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v0}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    throw v4
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
    .line 601
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalStore$13;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
