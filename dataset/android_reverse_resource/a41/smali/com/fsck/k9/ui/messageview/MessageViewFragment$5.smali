.class Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;
.super Ljava/lang/Object;
.source "MessageViewFragment.java"

# interfaces
.implements Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;


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
    .line 741
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadErrorMessageNotFound()V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->access$000(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)Lcom/fsck/k9/ui/messageview/MessageTopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->enableDownloadButton()V

    .line 782
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5$1;

    invoke-direct {v1, p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5$1;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 788
    return-void
.end method

.method public onDownloadErrorNetworkError()V
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->access$000(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)Lcom/fsck/k9/ui/messageview/MessageTopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->enableDownloadButton()V

    .line 793
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5$2;

    invoke-direct {v1, p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5$2;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 799
    return-void
.end method

.method public onMessageDataLoadFailed()V
    .locals 3

    .prologue
    .line 753
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070397

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 754
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->access$602(Lcom/fsck/k9/ui/messageview/MessageViewFragment;Ljava/lang/Long;)Ljava/lang/Long;

    .line 755
    return-void
.end method

.method public onMessageDataLoadFinished(Lcom/fsck/k9/mailstore/LocalMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/fsck/k9/mailstore/LocalMessage;

    .prologue
    .line 744
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-static {v0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->access$402(Lcom/fsck/k9/ui/messageview/MessageViewFragment;Lcom/fsck/k9/mailstore/LocalMessage;)Lcom/fsck/k9/mailstore/LocalMessage;

    .line 746
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-static {v0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->access$500(Lcom/fsck/k9/ui/messageview/MessageViewFragment;Lcom/fsck/k9/mailstore/LocalMessage;)V

    .line 747
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->access$000(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)Lcom/fsck/k9/ui/messageview/MessageTopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setToLoadingState()V

    .line 748
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->access$602(Lcom/fsck/k9/ui/messageview/MessageViewFragment;Ljava/lang/Long;)Ljava/lang/Long;

    .line 749
    return-void
.end method

.method public onMessageViewInfoLoadFailed(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 2
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;

    .prologue
    .line 765
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-static {v0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->access$700(Lcom/fsck/k9/ui/messageview/MessageViewFragment;Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 766
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->access$602(Lcom/fsck/k9/ui/messageview/MessageViewFragment;Ljava/lang/Long;)Ljava/lang/Long;

    .line 767
    return-void
.end method

.method public onMessageViewInfoLoadFinished(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 2
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;

    .prologue
    .line 759
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-static {v0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->access$700(Lcom/fsck/k9/ui/messageview/MessageViewFragment;Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 760
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->access$602(Lcom/fsck/k9/ui/messageview/MessageViewFragment;Ljava/lang/Long;)Ljava/lang/Long;

    .line 761
    return-void
.end method

.method public setLoadingProgress(II)V
    .locals 6
    .param p1, "current"    # I
    .param p2, "max"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 771
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->access$600(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    .line 772
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x7a120

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->access$602(Lcom/fsck/k9/ui/messageview/MessageViewFragment;Ljava/lang/Long;)Ljava/lang/Long;

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->access$600(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-static {v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->access$600(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 774
    :cond_2
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->access$602(Lcom/fsck/k9/ui/messageview/MessageViewFragment;Ljava/lang/Long;)Ljava/lang/Long;

    .line 775
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->access$000(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)Lcom/fsck/k9/ui/messageview/MessageTopView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setLoadingProgress(II)V

    goto :goto_0
.end method

.method public startIntentSenderForMessageLoaderHelper(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 8
    .param p1, "si"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagValues"    # I
    .param p6, "extraFlags"    # I

    .prologue
    .line 804
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->access$602(Lcom/fsck/k9/ui/messageview/MessageViewFragment;Ljava/lang/Long;)Ljava/lang/Long;

    .line 806
    or-int/lit16 p2, p2, 0x100

    .line 807
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :goto_0
    return-void

    .line 809
    :catch_0
    move-exception v7

    .line 810
    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v0, "Irrecoverable error calling PendingIntent!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
