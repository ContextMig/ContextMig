.class public interface abstract Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;
.super Ljava/lang/Object;
.source "MessageLoaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/MessageLoaderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageLoaderCallbacks"
.end annotation


# virtual methods
.method public abstract onDownloadErrorMessageNotFound()V
.end method

.method public abstract onDownloadErrorNetworkError()V
.end method

.method public abstract onMessageDataLoadFailed()V
.end method

.method public abstract onMessageDataLoadFinished(Lcom/fsck/k9/mailstore/LocalMessage;)V
.end method

.method public abstract onMessageViewInfoLoadFailed(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
.end method

.method public abstract onMessageViewInfoLoadFinished(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
.end method

.method public abstract setLoadingProgress(II)V
.end method

.method public abstract startIntentSenderForMessageLoaderHelper(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
.end method
