.class Lcom/fsck/k9/activity/compose/RecipientPresenter$2;
.super Lcom/fsck/k9/activity/compose/RecipientLoader;
.source "RecipientPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/compose/RecipientPresenter;->addRecipientsFromAddresses(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

.field final synthetic val$recipientType:Lcom/fsck/k9/mail/Message$RecipientType;


# direct methods
.method varargs constructor <init>(Lcom/fsck/k9/activity/compose/RecipientPresenter;Landroid/content/Context;Ljava/lang/String;[Lcom/fsck/k9/mail/Address;Lcom/fsck/k9/mail/Message$RecipientType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/compose/RecipientPresenter;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cryptoProvider"    # Ljava/lang/String;
    .param p4, "addresses"    # [Lcom/fsck/k9/mail/Address;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$2;->this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    iput-object p5, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$2;->val$recipientType:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-direct {p0, p2, p3, p4}, Lcom/fsck/k9/activity/compose/RecipientLoader;-><init>(Landroid/content/Context;Ljava/lang/String;[Lcom/fsck/k9/mail/Address;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 511
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter$2;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 3
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
    .line 514
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 515
    .local v0, "recipientArray":[Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$2;->this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-static {v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->access$500(Lcom/fsck/k9/activity/compose/RecipientPresenter;)Lcom/fsck/k9/activity/compose/RecipientMvpView;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$2;->val$recipientType:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {v1, v2, v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->addRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    .line 517
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter$2;->stopLoading()V

    .line 518
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter$2;->abandon()V

    .line 519
    return-void
.end method
