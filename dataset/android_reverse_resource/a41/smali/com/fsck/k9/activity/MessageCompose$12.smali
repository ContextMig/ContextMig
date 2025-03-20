.class Lcom/fsck/k9/activity/MessageCompose$12;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private attachmentViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/fsck/k9/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageCompose;)V
    .locals 1
    .param p1, "this$0"    # Lcom/fsck/k9/activity/MessageCompose;

    .prologue
    .line 1669
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1670
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$12;->attachmentViews:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addAttachmentView(Lcom/fsck/k9/activity/misc/Attachment;)V
    .locals 6
    .param p1, "attachment"    # Lcom/fsck/k9/activity/misc/Attachment;

    .prologue
    .line 1721
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/MessageCompose;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030020

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-static {v4}, Lcom/fsck/k9/activity/MessageCompose;->access$900(Lcom/fsck/k9/activity/MessageCompose;)Landroid/widget/LinearLayout;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1722
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose$12;->attachmentViews:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    const v2, 0x7f0c0086

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1725
    .local v0, "deleteButton":Landroid/view/View;
    new-instance v2, Lcom/fsck/k9/activity/MessageCompose$12$1;

    invoke-direct {v2, p0, p1}, Lcom/fsck/k9/activity/MessageCompose$12$1;-><init>(Lcom/fsck/k9/activity/MessageCompose$12;Lcom/fsck/k9/activity/misc/Attachment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1732
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/MessageCompose$12;->updateAttachmentView(Lcom/fsck/k9/activity/misc/Attachment;)V

    .line 1733
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-static {v2}, Lcom/fsck/k9/activity/MessageCompose;->access$900(Lcom/fsck/k9/activity/MessageCompose;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1734
    return-void
.end method

.method public dismissWaitingForAttachmentDialog()V
    .locals 3

    .prologue
    .line 1697
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    .line 1698
    invoke-virtual {v1}, Lcom/fsck/k9/activity/MessageCompose;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "waitingForAttachment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/fragment/ProgressDialogFragment;

    .line 1700
    .local v0, "fragment":Lcom/fsck/k9/fragment/ProgressDialogFragment;
    if-eqz v0, :cond_0

    .line 1701
    invoke-virtual {v0}, Lcom/fsck/k9/fragment/ProgressDialogFragment;->dismiss()V

    .line 1703
    :cond_0
    return-void
.end method

.method public performSaveAfterChecks()V
    .locals 1

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-static {v0}, Lcom/fsck/k9/activity/MessageCompose;->access$1100(Lcom/fsck/k9/activity/MessageCompose;)V

    .line 1771
    return-void
.end method

.method public performSendAfterChecks()V
    .locals 1

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageCompose;->performSendAfterChecks()V

    .line 1766
    return-void
.end method

.method public removeAttachmentView(Lcom/fsck/k9/activity/misc/Attachment;)V
    .locals 3
    .param p1, "attachment"    # Lcom/fsck/k9/activity/misc/Attachment;

    .prologue
    .line 1758
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$12;->attachmentViews:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1759
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-static {v1}, Lcom/fsck/k9/activity/MessageCompose;->access$900(Lcom/fsck/k9/activity/MessageCompose;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1760
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$12;->attachmentViews:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1761
    return-void
.end method

.method public showMissingAttachmentsPartialMessageWarning()V
    .locals 3

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    const v2, 0x7f070294

    .line 1776
    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 1775
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1776
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1777
    return-void
.end method

.method public showPickAttachmentDialog(I)V
    .locals 3
    .param p1, "requestCode"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1708
    or-int/lit16 p1, p1, 0x400

    .line 1710
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1711
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1712
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1713
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1714
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-static {v1, v2}, Lcom/fsck/k9/activity/MessageCompose;->access$802(Lcom/fsck/k9/activity/MessageCompose;Z)Z

    .line 1716
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/fsck/k9/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1717
    return-void
.end method

.method public showWaitingForAttachmentDialog(Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;)V
    .locals 4
    .param p1, "waitingAction"    # Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    .prologue
    .line 1676
    sget-object v2, Lcom/fsck/k9/activity/MessageCompose$14;->$SwitchMap$com$fsck$k9$activity$compose$AttachmentPresenter$WaitingAction:[I

    invoke-virtual {p1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1693
    :goto_0
    return-void

    .line 1678
    :pswitch_0
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    const v3, 0x7f0701ce

    invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1690
    .local v1, "title":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    const v3, 0x7f0701cc

    .line 1691
    invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1690
    invoke-static {v1, v2}, Lcom/fsck/k9/fragment/ProgressDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/fragment/ProgressDialogFragment;

    move-result-object v0

    .line 1692
    .local v0, "fragment":Lcom/fsck/k9/fragment/ProgressDialogFragment;
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/MessageCompose;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "waitingForAttachment"

    invoke-virtual {v0, v2, v3}, Lcom/fsck/k9/fragment/ProgressDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1682
    .end local v0    # "fragment":Lcom/fsck/k9/fragment/ProgressDialogFragment;
    .end local v1    # "title":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    const v3, 0x7f0701cd

    invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1683
    .restart local v1    # "title":Ljava/lang/String;
    goto :goto_1

    .line 1676
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateAttachmentView(Lcom/fsck/k9/activity/misc/Attachment;)V
    .locals 8
    .param p1, "attachment"    # Lcom/fsck/k9/activity/misc/Attachment;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1738
    iget-object v6, p0, Lcom/fsck/k9/activity/MessageCompose$12;->attachmentViews:Ljava/util/HashMap;

    iget-object v7, p1, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1739
    .local v4, "view":Landroid/view/View;
    if-nez v4, :cond_0

    .line 1740
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 1743
    :cond_0
    const v6, 0x7f0c0087

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1744
    .local v2, "nameView":Landroid/widget/TextView;
    iget-object v6, p1, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    sget-object v7, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->URI_ONLY:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    if-eq v6, v7, :cond_2

    move v0, v1

    .line 1745
    .local v0, "hasMetadata":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 1746
    iget-object v6, p1, Lcom/fsck/k9/activity/misc/Attachment;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1751
    :goto_1
    const v6, 0x7f0c0088

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1752
    .local v3, "progressBar":Landroid/view/View;
    iget-object v6, p1, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    sget-object v7, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->COMPLETE:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    if-ne v6, v7, :cond_4

    .line 1753
    .local v1, "isLoadingComplete":Z
    :goto_2
    if-eqz v1, :cond_1

    const/16 v5, 0x8

    :cond_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1754
    return-void

    .end local v0    # "hasMetadata":Z
    .end local v1    # "isLoadingComplete":Z
    .end local v3    # "progressBar":Landroid/view/View;
    :cond_2
    move v0, v5

    .line 1744
    goto :goto_0

    .line 1748
    .restart local v0    # "hasMetadata":Z
    :cond_3
    const v6, 0x7f07027a

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .restart local v3    # "progressBar":Landroid/view/View;
    :cond_4
    move v1, v5

    .line 1752
    goto :goto_2
.end method
