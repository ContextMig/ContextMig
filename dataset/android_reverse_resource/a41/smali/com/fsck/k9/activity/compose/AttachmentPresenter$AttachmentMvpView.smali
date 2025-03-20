.class public interface abstract Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;
.super Ljava/lang/Object;
.source "AttachmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/compose/AttachmentPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AttachmentMvpView"
.end annotation


# virtual methods
.method public abstract addAttachmentView(Lcom/fsck/k9/activity/misc/Attachment;)V
.end method

.method public abstract dismissWaitingForAttachmentDialog()V
.end method

.method public abstract performSaveAfterChecks()V
.end method

.method public abstract performSendAfterChecks()V
.end method

.method public abstract removeAttachmentView(Lcom/fsck/k9/activity/misc/Attachment;)V
.end method

.method public abstract showMissingAttachmentsPartialMessageWarning()V
.end method

.method public abstract showPickAttachmentDialog(I)V
.end method

.method public abstract showWaitingForAttachmentDialog(Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;)V
.end method

.method public abstract updateAttachmentView(Lcom/fsck/k9/activity/misc/Attachment;)V
.end method
