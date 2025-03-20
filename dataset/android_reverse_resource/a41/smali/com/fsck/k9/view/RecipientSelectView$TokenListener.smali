.class public interface abstract Lcom/fsck/k9/view/RecipientSelectView$TokenListener;
.super Ljava/lang/Object;
.source "RecipientSelectView.java"

# interfaces
.implements Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/view/RecipientSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TokenListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract onTokenChanged(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
