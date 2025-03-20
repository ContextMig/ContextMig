.class public final Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;
.super Ljava/lang/Object;
.source "DomainAutoCompleteProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmozilla/components/browser/domains/DomainAutoCompleteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Domain"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain$Companion;

.field private static final urlMatcher:Lkotlin/text/Regex;


# instance fields
.field private final hasWww:Z

.field private final host:Ljava/lang/String;

.field private final protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->Companion:Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain$Companion;

    .line 49
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(https?://)?(www.)?(.+)?"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->urlMatcher:Lkotlin/text/Regex;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "hasWww"    # Z
    .param p3, "host"    # Ljava/lang/String;

    .prologue
    const-string v0, "protocol"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->protocol:Ljava/lang/String;

    iput-boolean p2, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->hasWww:Z

    iput-object p3, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->host:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getUrlMatcher$cp()Lkotlin/text/Regex;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->urlMatcher:Lkotlin/text/Regex;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;

    if-eqz v2, :cond_1

    check-cast p1, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;

    iget-object v2, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->protocol:Ljava/lang/String;

    iget-object v3, p1, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->protocol:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->hasWww:Z

    iget-boolean v3, p1, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->hasWww:Z

    if-ne v2, v3, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->host:Ljava/lang/String;

    iget-object v3, p1, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->host:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->host:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl$domains_release()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->hasWww:Z

    if-eqz v0, :cond_0

    const-string v0, "www."

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->protocol:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->hasWww:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->host:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Domain(protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasWww="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->hasWww:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
