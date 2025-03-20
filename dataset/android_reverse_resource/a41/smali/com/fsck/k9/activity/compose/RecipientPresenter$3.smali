.class Lcom/fsck/k9/activity/compose/RecipientPresenter$3;
.super Lcom/fsck/k9/activity/compose/RecipientLoader;
.source "RecipientPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/compose/RecipientPresenter;->addRecipientFromContactUri(Lcom/fsck/k9/mail/Message$RecipientType;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

.field final synthetic val$recipientType:Lcom/fsck/k9/mail/Message$RecipientType;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/compose/RecipientPresenter;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;ZLcom/fsck/k9/mail/Message$RecipientType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/compose/RecipientPresenter;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cryptoProvider"    # Ljava/lang/String;
    .param p4, "contactUri"    # Landroid/net/Uri;
    .param p5, "isLookupKey"    # Z

    .prologue
    .line 524
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$3;->this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    iput-object p6, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$3;->val$recipientType:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/fsck/k9/activity/compose/RecipientLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 524
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter$3;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    const/4 v4, 0x0

    .line 528
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$3;->this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-static {v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->access$500(Lcom/fsck/k9/activity/compose/RecipientPresenter;)Lcom/fsck/k9/activity/compose/RecipientMvpView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showErrorContactNoAddress()V

    .line 538
    :goto_0
    return-void

    .line 533
    :cond_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 534
    .local v0, "recipient":Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$3;->this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-static {v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->access$500(Lcom/fsck/k9/activity/compose/RecipientPresenter;)Lcom/fsck/k9/activity/compose/RecipientMvpView;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$3;->val$recipientType:Lcom/fsck/k9/mail/Message$RecipientType;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->addRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    .line 536
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter$3;->stopLoading()V

    .line 537
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter$3;->abandon()V

    goto :goto_0
.end method
