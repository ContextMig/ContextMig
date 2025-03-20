.class Lcom/fsck/k9/controller/MessagingController$12;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Lcom/fsck/k9/mail/MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->downloadSmallMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/concurrent/atomic/AtomicInteger;ILcom/fsck/k9/mail/FetchProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fsck/k9/mail/MessageRetrievalListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$earliestDate:Ljava/util/Date;

.field final synthetic val$folder:Ljava/lang/String;

.field final synthetic val$localFolder:Lcom/fsck/k9/mailstore/LocalFolder;

.field final synthetic val$newMessages:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$progress:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$todo:I

.field final synthetic val$unreadBeforeStart:I


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/util/Date;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 1344
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$12;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$earliestDate:Ljava/util/Date;

    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$progress:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$localFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    iput-object p6, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$newMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p7, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$folder:Ljava/lang/String;

    iput p8, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$todo:I

    iput p9, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$unreadBeforeStart:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageFinished(Lcom/fsck/k9/mail/Message;II)V
    .locals 9
    .param p2, "number"    # I
    .param p3, "ofTotal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .prologue
    .local p1, "message":Lcom/fsck/k9/mail/Message;, "TT;"
    const/4 v8, 0x0

    .line 1349
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$12;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$account:Lcom/fsck/k9/Account;

    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$earliestDate:Ljava/util/Date;

    invoke-static {v3, v4, p1, v5}, Lcom/fsck/k9/controller/MessagingController;->access$500(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1350
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$progress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1389
    :cond_0
    :goto_0
    return-void

    .line 1356
    :cond_1
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$localFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    new-instance v4, Lcom/fsck/k9/controller/MessagingController$12$1;

    invoke-direct {v4, p0}, Lcom/fsck/k9/controller/MessagingController$12$1;-><init>(Lcom/fsck/k9/controller/MessagingController$12;)V

    invoke-virtual {v3, p1, v4}, Lcom/fsck/k9/mailstore/LocalFolder;->storeSmallMessage(Lcom/fsck/k9/mail/Message;Ljava/lang/Runnable;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v1

    .line 1365
    .local v1, "localMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    sget-object v3, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v1, v3}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1366
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$newMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1369
    :cond_2
    const-string v3, "About to notify listeners that we got a new small message %s:%s:%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$account:Lcom/fsck/k9/Account;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$folder:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 1370
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1369
    invoke-static {v3, v4}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1373
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$12;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {v3}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/controller/MessagingListener;

    .line 1374
    .local v0, "l":Lcom/fsck/k9/controller/MessagingListener;
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$account:Lcom/fsck/k9/Account;

    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$folder:Ljava/lang/String;

    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$progress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    iget v7, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$todo:I

    invoke-interface {v0, v4, v5, v6, v7}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    .line 1375
    sget-object v4, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v1, v4}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1376
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$account:Lcom/fsck/k9/Account;

    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$folder:Ljava/lang/String;

    invoke-interface {v0, v4, v5, v1}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxNewMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1386
    .end local v0    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v1    # "localMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    :catch_0
    move-exception v2

    .line 1387
    .local v2, "me":Lcom/fsck/k9/mail/MessagingException;
    const-string v3, "SYNC: fetch small messages"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1381
    .end local v2    # "me":Lcom/fsck/k9/mail/MessagingException;
    .restart local v1    # "localMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$12;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$account:Lcom/fsck/k9/Account;

    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$localFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-static {v3, v4, v5, p1}, Lcom/fsck/k9/controller/MessagingController;->access$600(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mail/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1383
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$12;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-static {v3}, Lcom/fsck/k9/controller/MessagingController;->access$700(Lcom/fsck/k9/controller/MessagingController;)Lcom/fsck/k9/notification/NotificationController;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$account:Lcom/fsck/k9/Account;

    iget v5, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$unreadBeforeStart:I

    invoke-virtual {v3, v4, v1, v5}, Lcom/fsck/k9/notification/NotificationController;->addNewMailNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalMessage;I)V
    :try_end_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public messageStarted(Ljava/lang/String;II)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "number"    # I
    .param p3, "ofTotal"    # I

    .prologue
    .line 1393
    return-void
.end method

.method public messagesFinished(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 1397
    return-void
.end method
