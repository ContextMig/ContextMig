.class public Lcom/fsck/k9/provider/MessageProvider$IncrementExtractor;
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
    name = "IncrementExtractor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fsck/k9/provider/MessageProvider$FieldExtractor",
        "<",
        "Lcom/fsck/k9/activity/MessageInfoHolder;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    const/4 v0, 0x0

    iput v0, p0, Lcom/fsck/k9/provider/MessageProvider$IncrementExtractor;->count:I

    return-void
.end method


# virtual methods
.method public getField(Lcom/fsck/k9/activity/MessageInfoHolder;)Ljava/lang/Integer;
    .locals 2
    .param p1, "source"    # Lcom/fsck/k9/activity/MessageInfoHolder;

    .prologue
    .line 493
    iget v0, p0, Lcom/fsck/k9/provider/MessageProvider$IncrementExtractor;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fsck/k9/provider/MessageProvider$IncrementExtractor;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getField(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 486
    check-cast p1, Lcom/fsck/k9/activity/MessageInfoHolder;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/provider/MessageProvider$IncrementExtractor;->getField(Lcom/fsck/k9/activity/MessageInfoHolder;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
