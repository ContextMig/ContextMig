.class public interface abstract Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;
.super Ljava/lang/Object;
.source "MessageViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/ui/messageview/MessageViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageViewFragmentListener"
.end annotation


# virtual methods
.method public abstract disableDeleteAction()V
.end method

.method public abstract displayMessageSubject(Ljava/lang/String;)V
.end method

.method public abstract messageHeaderViewAvailable(Lcom/fsck/k9/view/MessageHeader;)V
.end method

.method public abstract onForward(Lcom/fsck/k9/activity/MessageReference;Landroid/os/Parcelable;)V
.end method

.method public abstract onReply(Lcom/fsck/k9/activity/MessageReference;Landroid/os/Parcelable;)V
.end method

.method public abstract onReplyAll(Lcom/fsck/k9/activity/MessageReference;Landroid/os/Parcelable;)V
.end method

.method public abstract setProgress(Z)V
.end method

.method public abstract showNextMessageOrReturn()V
.end method

.method public abstract updateMenu()V
.end method
