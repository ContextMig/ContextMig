.class public interface abstract Lcom/fsck/k9/mail/MessageRetrievalListener;
.super Ljava/lang/Object;
.source "MessageRetrievalListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fsck/k9/mail/Message;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract messageFinished(Lcom/fsck/k9/mail/Message;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation
.end method

.method public abstract messageStarted(Ljava/lang/String;II)V
.end method

.method public abstract messagesFinished(I)V
.end method
