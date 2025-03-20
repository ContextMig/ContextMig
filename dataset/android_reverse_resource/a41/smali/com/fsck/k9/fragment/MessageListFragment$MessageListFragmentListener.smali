.class public interface abstract Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;
.super Ljava/lang/Object;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/fragment/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageListFragmentListener"
.end annotation


# virtual methods
.method public abstract enableActionBarProgress(Z)V
.end method

.method public abstract goBack()V
.end method

.method public abstract onCompose(Lcom/fsck/k9/Account;)V
.end method

.method public abstract onForward(Lcom/fsck/k9/activity/MessageReference;)V
.end method

.method public abstract onReply(Lcom/fsck/k9/activity/MessageReference;)V
.end method

.method public abstract onReplyAll(Lcom/fsck/k9/activity/MessageReference;)V
.end method

.method public abstract onResendMessage(Lcom/fsck/k9/activity/MessageReference;)V
.end method

.method public abstract openMessage(Lcom/fsck/k9/activity/MessageReference;)V
.end method

.method public abstract remoteSearchStarted()V
.end method

.method public abstract setMessageListProgress(I)V
.end method

.method public abstract setMessageListSubTitle(Ljava/lang/String;)V
.end method

.method public abstract setMessageListTitle(Ljava/lang/String;)V
.end method

.method public abstract setUnreadCount(I)V
.end method

.method public abstract showMoreFromSameSender(Ljava/lang/String;)V
.end method

.method public abstract showThread(Lcom/fsck/k9/Account;Ljava/lang/String;J)V
.end method

.method public abstract startSearch(Lcom/fsck/k9/Account;Ljava/lang/String;)Z
.end method

.method public abstract updateMenu()V
.end method
