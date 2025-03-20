.class public Lcom/fsck/k9/provider/MessageProvider$SenderExtractor;
.super Ljava/lang/Object;
.source "MessageProvider.java"

# interfaces
.implements Lcom/fsck/k9/provider/MessageProvider$FieldExtractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/provider/MessageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SenderExtractor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fsck/k9/provider/MessageProvider$FieldExtractor",
        "<",
        "Lcom/fsck/k9/activity/MessageInfoHolder;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getField(Lcom/fsck/k9/activity/MessageInfoHolder;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "source"    # Lcom/fsck/k9/activity/MessageInfoHolder;

    .prologue
    .line 430
    iget-object v0, p1, Lcom/fsck/k9/activity/MessageInfoHolder;->sender:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public bridge synthetic getField(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 427
    check-cast p1, Lcom/fsck/k9/activity/MessageInfoHolder;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/provider/MessageProvider$SenderExtractor;->getField(Lcom/fsck/k9/activity/MessageInfoHolder;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
