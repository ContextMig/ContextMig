.class Lcom/fsck/k9/activity/MessageCompose$10;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageCompose;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/MessageCompose;

    .prologue
    .line 1580
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$10;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadErrorMessageNotFound()V
    .locals 2

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$10;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    new-instance v1, Lcom/fsck/k9/activity/MessageCompose$10$1;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/MessageCompose$10$1;-><init>(Lcom/fsck/k9/activity/MessageCompose$10;)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1628
    return-void
.end method

.method public onDownloadErrorNetworkError()V
    .locals 2

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$10;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    new-instance v1, Lcom/fsck/k9/activity/MessageCompose$10$2;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/MessageCompose$10$2;-><init>(Lcom/fsck/k9/activity/MessageCompose$10;)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1638
    return-void
.end method

.method public onMessageDataLoadFailed()V
    .locals 3

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$10;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-static {v0}, Lcom/fsck/k9/activity/MessageCompose;->access$500(Lcom/fsck/k9/activity/MessageCompose;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1589
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$10;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    const v1, 0x7f070393

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1590
    return-void
.end method

.method public onMessageDataLoadFinished(Lcom/fsck/k9/mailstore/LocalMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/fsck/k9/mailstore/LocalMessage;

    .prologue
    .line 1584
    return-void
.end method

.method public onMessageViewInfoLoadFailed(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 3
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$10;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-static {v0}, Lcom/fsck/k9/activity/MessageCompose;->access$500(Lcom/fsck/k9/activity/MessageCompose;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1601
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$10;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    const v1, 0x7f070393

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1602
    return-void
.end method

.method public onMessageViewInfoLoadFinished(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 2
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$10;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-static {v0}, Lcom/fsck/k9/activity/MessageCompose;->access$500(Lcom/fsck/k9/activity/MessageCompose;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1595
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$10;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$10;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-static {v1}, Lcom/fsck/k9/activity/MessageCompose;->access$600(Lcom/fsck/k9/activity/MessageCompose;)Lcom/fsck/k9/activity/MessageCompose$Action;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/activity/MessageCompose;->loadLocalMessageForDisplay(Lcom/fsck/k9/mailstore/MessageViewInfo;Lcom/fsck/k9/activity/MessageCompose$Action;)V

    .line 1596
    return-void
.end method

.method public setLoadingProgress(II)V
    .locals 0
    .param p1, "current"    # I
    .param p2, "max"    # I

    .prologue
    .line 1607
    return-void
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
    .line 1613
    or-int/lit16 p2, p2, 0x200

    .line 1614
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$10;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/fsck/k9/activity/MessageCompose;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1618
    :goto_0
    return-void

    .line 1615
    :catch_0
    move-exception v7

    .line 1616
    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v0, "Irrecoverable error calling PendingIntent!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
