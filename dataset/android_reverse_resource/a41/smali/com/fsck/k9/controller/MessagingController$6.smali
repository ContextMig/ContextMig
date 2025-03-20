.class Lcom/fsck/k9/controller/MessagingController$6;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Lcom/fsck/k9/mail/MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->searchLocalMessagesSynchronous(Lcom/fsck/k9/search/LocalSearch;Lcom/fsck/k9/controller/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fsck/k9/mail/MessageRetrievalListener",
        "<",
        "Lcom/fsck/k9/mailstore/LocalMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$listener:Lcom/fsck/k9/controller/MessagingListener;

.field final synthetic val$stats:Lcom/fsck/k9/AccountStats;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/AccountStats;Lcom/fsck/k9/controller/MessagingListener;Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$6;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$6;->val$stats:Lcom/fsck/k9/AccountStats;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$6;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingController$6;->val$account:Lcom/fsck/k9/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic messageFinished(Lcom/fsck/k9/mail/Message;II)V
    .locals 0

    .prologue
    .line 514
    check-cast p1, Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fsck/k9/controller/MessagingController$6;->messageFinished(Lcom/fsck/k9/mailstore/LocalMessage;II)V

    return-void
.end method

.method public messageFinished(Lcom/fsck/k9/mailstore/LocalMessage;II)V
    .locals 6
    .param p1, "message"    # Lcom/fsck/k9/mailstore/LocalMessage;
    .param p2, "number"    # I
    .param p3, "ofTotal"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 525
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$6;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-static {v1, p1}, Lcom/fsck/k9/controller/MessagingController;->access$300(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/mailstore/LocalMessage;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$6;->val$stats:Lcom/fsck/k9/AccountStats;

    iget v5, v4, Lcom/fsck/k9/AccountStats;->unreadMessageCount:I

    sget-object v1, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v1}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    add-int/2addr v1, v5

    iput v1, v4, Lcom/fsck/k9/AccountStats;->unreadMessageCount:I

    .line 530
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$6;->val$stats:Lcom/fsck/k9/AccountStats;

    iget v4, v1, Lcom/fsck/k9/AccountStats;->flaggedMessageCount:I

    sget-object v5, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v5}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    add-int/2addr v2, v4

    iput v2, v1, Lcom/fsck/k9/AccountStats;->flaggedMessageCount:I

    .line 531
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$6;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    if-eqz v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$6;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$6;->val$account:Lcom/fsck/k9/Account;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/fsck/k9/controller/MessagingListener;->listLocalMessagesAddMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;)V

    .line 535
    .end local v0    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    :cond_0
    return-void

    .restart local v0    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    :cond_1
    move v1, v3

    .line 529
    goto :goto_0

    :cond_2
    move v2, v3

    .line 530
    goto :goto_1
.end method

.method public messageStarted(Ljava/lang/String;II)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "number"    # I
    .param p3, "ofTotal"    # I

    .prologue
    .line 517
    return-void
.end method

.method public messagesFinished(I)V
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 521
    return-void
.end method
