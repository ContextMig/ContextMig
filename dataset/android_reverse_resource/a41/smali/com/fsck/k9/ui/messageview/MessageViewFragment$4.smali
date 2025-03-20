.class Lcom/fsck/k9/ui/messageview/MessageViewFragment$4;
.super Ljava/lang/Object;
.source "MessageViewFragment.java"

# interfaces
.implements Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/ui/messageview/MessageViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;


# direct methods
.method constructor <init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$4;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public redisplayMessage()V
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$4;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->access$100(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)Lcom/fsck/k9/activity/MessageLoaderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->asyncReloadMessage()V

    .line 680
    return-void
.end method

.method public restartMessageCryptoProcessing()V
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$4;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->access$000(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)Lcom/fsck/k9/ui/messageview/MessageTopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setToLoadingState()V

    .line 705
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$4;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->access$100(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)Lcom/fsck/k9/activity/MessageLoaderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->asyncRestartMessageCryptoProcessing()V

    .line 706
    return-void
.end method

.method public showCryptoConfigDialog()V
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$4;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->access$300(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)V

    .line 711
    return-void
.end method

.method public showCryptoInfoDialog(Lcom/fsck/k9/view/MessageCryptoDisplayStatus;Z)V
    .locals 3
    .param p1, "displayStatus"    # Lcom/fsck/k9/view/MessageCryptoDisplayStatus;
    .param p2, "hasSecurityWarning"    # Z

    .prologue
    .line 697
    invoke-static {p1, p2}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->newInstance(Lcom/fsck/k9/view/MessageCryptoDisplayStatus;Z)Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;

    move-result-object v0

    .line 698
    .local v0, "dialog":Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$4;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 699
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$4;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "crypto_info_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method public startPendingIntentForCryptoPresenter(Landroid/content/IntentSender;Ljava/lang/Integer;Landroid/content/Intent;III)V
    .locals 7
    .param p1, "si"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # Ljava/lang/Integer;
    .param p3, "fillIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagValues"    # I
    .param p6, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 685
    if-nez p2, :cond_0

    .line 686
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$4;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V

    .line 693
    :goto_0
    return-void

    .line 690
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit16 v0, v0, 0x200

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 691
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$4;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 692
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 691
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_0
.end method
