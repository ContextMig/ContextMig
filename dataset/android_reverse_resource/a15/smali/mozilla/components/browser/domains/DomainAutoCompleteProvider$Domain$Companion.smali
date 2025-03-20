.class public final Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain$Companion;
.super Ljava/lang/Object;
.source "DomainAutoCompleteProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDomainAutoCompleteProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DomainAutoCompleteProvider.kt\nmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain$Companion\n*L\n1#1,162:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 42
    invoke-direct {p0}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create$domains_release(Ljava/lang/String;)Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x2

    const-string v6, "url"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->access$getUrlMatcher$cp()Lkotlin/text/Regex;

    move-result-object v6

    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "url":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-static {v6, p1, v7, v8, v5}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v4

    .line 54
    .local v4, "result":Lkotlin/text/MatchResult;
    if-eqz v4, :cond_3

    move-object v2, v4

    .line 55
    .local v2, "it":Lkotlin/text/MatchResult;
    invoke-interface {v2}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 56
    .local v3, "protocol":Ljava/lang/String;
    :goto_0
    invoke-interface {v2}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object v6

    invoke-interface {v6, v8}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object v5

    :cond_0
    const-string v6, "www."

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 57
    .local v0, "hasWww":Z
    invoke-interface {v2}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 59
    .local v1, "host":Ljava/lang/String;
    new-instance v5, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;

    invoke-direct {v5, v3, v0, v1}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v5

    .line 55
    .end local v0    # "hasWww":Z
    .end local v1    # "host":Ljava/lang/String;
    .end local v3    # "protocol":Ljava/lang/String;
    :cond_1
    const-string v3, "http://"

    goto :goto_0

    .line 57
    .restart local v0    # "hasWww":Z
    .restart local v3    # "protocol":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 60
    .end local v0    # "hasWww":Z
    .end local v2    # "it":Lkotlin/text/MatchResult;
    .end local v3    # "protocol":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    check-cast v5, Ljava/lang/Throwable;

    throw v5
.end method
