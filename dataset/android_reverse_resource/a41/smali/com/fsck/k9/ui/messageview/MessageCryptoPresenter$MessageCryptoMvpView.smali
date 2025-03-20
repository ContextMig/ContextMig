.class public interface abstract Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;
.super Ljava/lang/Object;
.source "MessageCryptoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageCryptoMvpView"
.end annotation


# virtual methods
.method public abstract redisplayMessage()V
.end method

.method public abstract restartMessageCryptoProcessing()V
.end method

.method public abstract showCryptoConfigDialog()V
.end method

.method public abstract showCryptoInfoDialog(Lcom/fsck/k9/view/MessageCryptoDisplayStatus;Z)V
.end method

.method public abstract startPendingIntentForCryptoPresenter(Landroid/content/IntentSender;Ljava/lang/Integer;Landroid/content/Intent;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation
.end method
