.class Lcom/fsck/k9/activity/compose/RecipientMvpView$1;
.super Ljava/lang/Object;
.source "RecipientMvpView.java"

# interfaces
.implements Lcom/fsck/k9/view/RecipientSelectView$TokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/compose/RecipientMvpView;->setPresenter(Lcom/fsck/k9/activity/compose/RecipientPresenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fsck/k9/view/RecipientSelectView$TokenListener",
        "<",
        "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/compose/RecipientMvpView;

.field final synthetic val$presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/compose/RecipientMvpView;Lcom/fsck/k9/activity/compose/RecipientPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView$1;->this$0:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    iput-object p2, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView$1;->val$presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenAdded(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V
    .locals 1
    .param p1, "recipient"    # Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView$1;->val$presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onToTokenAdded()V

    .line 99
    return-void
.end method

.method public bridge synthetic onTokenAdded(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 95
    check-cast p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/compose/RecipientMvpView$1;->onTokenAdded(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    return-void
.end method

.method public onTokenChanged(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V
    .locals 1
    .param p1, "recipient"    # Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView$1;->val$presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onToTokenChanged()V

    .line 109
    return-void
.end method

.method public bridge synthetic onTokenChanged(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 95
    check-cast p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/compose/RecipientMvpView$1;->onTokenChanged(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    return-void
.end method

.method public onTokenRemoved(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V
    .locals 1
    .param p1, "recipient"    # Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView$1;->val$presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onToTokenRemoved()V

    .line 104
    return-void
.end method

.method public bridge synthetic onTokenRemoved(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 95
    check-cast p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/compose/RecipientMvpView$1;->onTokenRemoved(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    return-void
.end method
