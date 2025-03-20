.class public Lcom/fsck/k9/message/extractors/PreviewResult;
.super Ljava/lang/Object;
.source "PreviewResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;
    }
.end annotation


# instance fields
.field private final previewText:Ljava/lang/String;

.field private final previewType:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;


# direct methods
.method private constructor <init>(Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;Ljava/lang/String;)V
    .locals 0
    .param p1, "previewType"    # Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;
    .param p2, "previewText"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/fsck/k9/message/extractors/PreviewResult;->previewType:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    .line 14
    iput-object p2, p0, Lcom/fsck/k9/message/extractors/PreviewResult;->previewText:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static encrypted()Lcom/fsck/k9/message/extractors/PreviewResult;
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lcom/fsck/k9/message/extractors/PreviewResult;

    sget-object v1, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;->ENCRYPTED:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/message/extractors/PreviewResult;-><init>(Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static error()Lcom/fsck/k9/message/extractors/PreviewResult;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcom/fsck/k9/message/extractors/PreviewResult;

    sget-object v1, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;->ERROR:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/message/extractors/PreviewResult;-><init>(Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static none()Lcom/fsck/k9/message/extractors/PreviewResult;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Lcom/fsck/k9/message/extractors/PreviewResult;

    sget-object v1, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;->NONE:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/message/extractors/PreviewResult;-><init>(Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static text(Ljava/lang/String;)Lcom/fsck/k9/message/extractors/PreviewResult;
    .locals 2
    .param p0, "previewText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 18
    new-instance v0, Lcom/fsck/k9/message/extractors/PreviewResult;

    sget-object v1, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;->TEXT:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    invoke-direct {v0, v1, p0}, Lcom/fsck/k9/message/extractors/PreviewResult;-><init>(Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getPreviewText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/fsck/k9/message/extractors/PreviewResult;->isPreviewTextAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preview is not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/message/extractors/PreviewResult;->previewText:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewType()Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fsck/k9/message/extractors/PreviewResult;->previewType:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    return-object v0
.end method

.method public isPreviewTextAvailable()Z
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fsck/k9/message/extractors/PreviewResult;->previewType:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    sget-object v1, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;->TEXT:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
