.class Lcom/fsck/k9/controller/MessagingController$11;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Lcom/fsck/k9/mail/MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->fetchUnsyncedMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;ILcom/fsck/k9/mail/FetchProfile;)V
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

.field final synthetic val$largeMessages:Ljava/util/List;

.field final synthetic val$progress:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$smallMessages:Ljava/util/List;

.field final synthetic val$todo:I


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Ljava/util/Date;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 1274
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$11;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$earliestDate:Ljava/util/Date;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$account:Lcom/fsck/k9/Account;

    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$folder:Ljava/lang/String;

    iput-object p5, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$progress:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p6, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$todo:I

    iput-object p7, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$largeMessages:Ljava/util/List;

    iput-object p8, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$smallMessages:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageFinished(Lcom/fsck/k9/mail/Message;II)V
    .locals 8
    .param p2, "number"    # I
    .param p3, "ofTotal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .prologue
    .local p1, "message":Lcom/fsck/k9/mail/Message;, "TT;"
    const/4 v7, 0x0

    .line 1278
    :try_start_0
    sget-object v2, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v2}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$earliestDate:Ljava/util/Date;

    invoke-virtual {p1, v2}, Lcom/fsck/k9/mail/Message;->olderThan(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1279
    :cond_0
    invoke-static {}, Lcom/fsck/k9/K9;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1280
    sget-object v2, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v2}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1281
    const-string v2, "Newly downloaded message %s:%s:%s was marked deleted on server, skipping"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$account:Lcom/fsck/k9/Account;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$folder:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 1282
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1281
    invoke-static {v2, v3}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1288
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$progress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1289
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$11;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {v2}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/controller/MessagingListener;

    .line 1291
    .local v1, "l":Lcom/fsck/k9/controller/MessagingListener;
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$account:Lcom/fsck/k9/Account;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$folder:Ljava/lang/String;

    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$progress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v6, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$todo:I

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1302
    .end local v1    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :catch_0
    move-exception v0

    .line 1303
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error while storing downloaded message."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1305
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void

    .line 1284
    :cond_3
    :try_start_1
    const-string v2, "Newly downloaded message %s is older than %s, skipping"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1285
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$earliestDate:Ljava/util/Date;

    aput-object v5, v3, v4

    .line 1284
    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1296
    :cond_4
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getMaximumAutoDownloadMessageSize()I

    move-result v2

    if-lez v2, :cond_5

    .line 1297
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getSize()J

    move-result-wide v2

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getMaximumAutoDownloadMessageSize()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 1298
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$largeMessages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1300
    :cond_5
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$smallMessages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public messageStarted(Ljava/lang/String;II)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "number"    # I
    .param p3, "ofTotal"    # I

    .prologue
    .line 1309
    return-void
.end method

.method public messagesFinished(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 1314
    return-void
.end method
