.class public interface abstract Lcom/fsck/k9/helper/jsoup/NodeFilter;
.super Ljava/lang/Object;
.source "NodeFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;,
        Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;
    }
.end annotation


# virtual methods
.method public abstract head(Lorg/jsoup/nodes/Node;I)Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract tail(Lorg/jsoup/nodes/Node;I)Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method
