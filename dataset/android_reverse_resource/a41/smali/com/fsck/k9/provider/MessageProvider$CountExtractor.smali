.class public Lcom/fsck/k9/provider/MessageProvider$CountExtractor;
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
    name = "CountExtractor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fsck/k9/provider/MessageProvider$FieldExtractor",
        "<TT;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private count:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 374
    .local p0, "this":Lcom/fsck/k9/provider/MessageProvider$CountExtractor;, "Lcom/fsck/k9/provider/MessageProvider$CountExtractor<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$CountExtractor;->count:Ljava/lang/Integer;

    .line 376
    return-void
.end method


# virtual methods
.method public getField(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "this":Lcom/fsck/k9/provider/MessageProvider$CountExtractor;, "Lcom/fsck/k9/provider/MessageProvider$CountExtractor<TT;>;"
    .local p1, "source":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$CountExtractor;->count:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getField(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 371
    .local p0, "this":Lcom/fsck/k9/provider/MessageProvider$CountExtractor;, "Lcom/fsck/k9/provider/MessageProvider$CountExtractor<TT;>;"
    invoke-virtual {p0, p1}, Lcom/fsck/k9/provider/MessageProvider$CountExtractor;->getField(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
