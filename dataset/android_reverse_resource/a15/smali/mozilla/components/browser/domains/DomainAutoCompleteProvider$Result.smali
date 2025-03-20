.class public final Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;
.super Ljava/lang/Object;
.source "DomainAutoCompleteProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmozilla/components/browser/domains/DomainAutoCompleteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private final size:I

.field private final source:Ljava/lang/String;

.field private final text:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "size"    # I

    .prologue
    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->text:Ljava/lang/String;

    iput-object p2, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->url:Ljava/lang/String;

    iput-object p3, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->source:Ljava/lang/String;

    iput p4, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->size:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;

    if-eqz v2, :cond_1

    check-cast p1, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;

    iget-object v2, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->text:Ljava/lang/String;

    iget-object v3, p1, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->text:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->url:Ljava/lang/String;

    iget-object v3, p1, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->source:Ljava/lang/String;

    iget-object v3, p1, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->source:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->size:I

    iget v3, p1, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->size:I

    if-ne v2, v3, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public final getSize()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->size:I

    return v0
.end method

.method public final getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->source:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->text:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->url:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->source:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->size:I

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result(text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
