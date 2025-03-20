.class public Lcom/fsck/k9/ui/messageview/LockedAttachmentView;
.super Lcom/fsck/k9/view/ToolableViewAnimator;
.source "LockedAttachmentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

.field private attachmentCallback:Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

.field private attachmentViewStub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/fsck/k9/view/ToolableViewAnimator;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/view/ToolableViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/view/ToolableViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method private showUnlockedView()V
    .locals 3

    .prologue
    .line 57
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/LockedAttachmentView;->attachmentViewStub:Landroid/view/ViewStub;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot display unlocked attachment!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/LockedAttachmentView;->attachmentViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/ui/messageview/AttachmentView;

    .line 62
    .local v0, "attachmentView":Lcom/fsck/k9/ui/messageview/AttachmentView;
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/LockedAttachmentView;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messageview/AttachmentView;->setAttachment(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    .line 63
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/LockedAttachmentView;->attachmentCallback:Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messageview/AttachmentView;->setCallback(Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;)V

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fsck/k9/ui/messageview/LockedAttachmentView;->attachmentViewStub:Landroid/view/ViewStub;

    .line 66
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messageview/LockedAttachmentView;->setDisplayedChild(I)V

    .line 67
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 50
    :pswitch_0
    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/LockedAttachmentView;->showUnlockedView()V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x7f0c00de
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Lcom/fsck/k9/view/ToolableViewAnimator;->onFinishInflate()V

    .line 36
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/LockedAttachmentView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    :goto_0
    return-void

    .line 40
    :cond_0
    const v1, 0x7f0c00de

    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messageview/LockedAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "unlockButton":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v1, 0x7f0c00e0

    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messageview/LockedAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/fsck/k9/ui/messageview/LockedAttachmentView;->attachmentViewStub:Landroid/view/ViewStub;

    goto :goto_0
.end method

.method public setAttachment(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V
    .locals 0
    .param p1, "attachment"    # Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/LockedAttachmentView;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 71
    return-void
.end method

.method public setCallback(Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;)V
    .locals 0
    .param p1, "attachmentCallback"    # Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/LockedAttachmentView;->attachmentCallback:Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

    .line 75
    return-void
.end method
