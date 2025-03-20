.class public final Lmozilla/components/browser/domains/DomainAutoCompleteProvider;
.super Ljava/lang/Object;
.source "DomainAutoCompleteProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;,
        Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDomainAutoCompleteProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DomainAutoCompleteProvider.kt\nmozilla/components/browser/domains/DomainAutoCompleteProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,162:1\n1246#2:163\n1315#2,3:164\n1246#2:167\n1315#2,3:168\n1519#2,2:171\n*E\n*S KotlinDebug\n*F\n+ 1 DomainAutoCompleteProvider.kt\nmozilla/components/browser/domains/DomainAutoCompleteProvider\n*L\n129#1:163\n129#1,3:164\n130#1:167\n130#1,3:168\n138#1,2:171\n*E\n"
.end annotation


# instance fields
.field private customDomains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;",
            ">;"
        }
    .end annotation
.end field

.field private shippedDomains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;",
            ">;"
        }
    .end annotation
.end field

.field private useCustomDomains:Z

.field private useShippedDomains:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider;->customDomains:Ljava/util/List;

    .line 66
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider;->shippedDomains:Ljava/util/List;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider;->useShippedDomains:Z

    return-void
.end method

.method private final getResultText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "rawSearchText"    # Ljava/lang/String;
    .param p2, "autocomplete"    # Ljava/lang/String;

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez p2, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic initialize$default(Lmozilla/components/browser/domains/DomainAutoCompleteProvider;Landroid/content/Context;ZZZILjava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    move p2, v0

    .line 111
    :cond_0
    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_1

    .line 112
    const/4 p3, 0x0

    :cond_1
    and-int/lit8 v1, p5, 0x8

    if-eqz v1, :cond_2

    move p4, v0

    .line 113
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider;->initialize(Landroid/content/Context;ZZZ)V

    return-void
.end method

.method private final tryToAutocomplete(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;
    .locals 11
    .param p1, "rawText"    # Ljava/lang/String;
    .param p2, "domains"    # Ljava/util/List;
    .param p3, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 136
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Locale.US"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance v5, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .local v3, "searchText":Ljava/lang/String;
    move-object v0, p2

    .line 138
    check-cast v0, Ljava/lang/Iterable;

    .line 171
    .local v0, "$receiver$iv":Ljava/lang/Iterable;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;

    .line 139
    .local v2, "it":Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "www."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "wwwDomain":Ljava/lang/String;
    invoke-static {v4, v3, v9, v10, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 141
    new-instance v5, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;

    invoke-direct {p0, p1, v4}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider;->getResultText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->getUrl$domains_release()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v5, v6, v7, p3, v8}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    .end local v1    # "element$iv":Ljava/lang/Object;
    .end local v2    # "it":Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;
    .end local v4    # "wwwDomain":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 144
    .restart local v1    # "element$iv":Ljava/lang/Object;
    .restart local v2    # "it":Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;
    .restart local v4    # "wwwDomain":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3, v9, v10, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 145
    new-instance v5, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;

    invoke-virtual {v2}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider;->getResultText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->getUrl$domains_release()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v5, v6, v7, p3, v8}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 147
    :cond_2
    nop

    nop

    goto :goto_0

    .line 172
    .end local v1    # "element$iv":Ljava/lang/Object;
    .end local v2    # "it":Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;
    .end local v4    # "wwwDomain":Ljava/lang/String;
    :cond_3
    nop

    .line 149
    goto :goto_1
.end method


# virtual methods
.method public final autocomplete(Ljava/lang/String;)Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;
    .locals 5
    .param p1, "rawText"    # Ljava/lang/String;

    .prologue
    const-string v1, "rawText"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-boolean v1, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider;->useCustomDomains:Z

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider;->customDomains:Ljava/util/List;

    const-string v2, "custom"

    invoke-direct {p0, p1, v1, v2}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider;->tryToAutocomplete(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;

    move-result-object v0

    .line 82
    .local v0, "result":Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;
    if-eqz v0, :cond_1

    .line 94
    .end local v0    # "result":Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;
    :cond_0
    :goto_0
    return-object v0

    .line 87
    :cond_1
    iget-boolean v1, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider;->useShippedDomains:Z

    if-eqz v1, :cond_2

    .line 88
    iget-object v1, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider;->shippedDomains:Ljava/util/List;

    const-string v2, "default"

    invoke-direct {p0, p1, v1, v2}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider;->tryToAutocomplete(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;

    move-result-object v0

    .line 89
    .restart local v0    # "result":Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;
    if-nez v0, :cond_0

    .line 94
    .end local v0    # "result":Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;
    :cond_2
    new-instance v0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final initialize(Landroid/content/Context;ZZZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useShippedDomains"    # Z
    .param p3, "useCustomDomains"    # Z
    .param p4, "loadDomainsFromDisk"    # Z

    .prologue
    const/4 v1, 0x0

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iput-boolean p3, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider;->useCustomDomains:Z

    .line 116
    iput-boolean p2, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider;->useShippedDomains:Z

    .line 118
    if-eqz p4, :cond_0

    .line 119
    invoke-static {}, Lkotlinx/coroutines/experimental/android/HandlerContextKt;->getUI()Lkotlinx/coroutines/experimental/android/HandlerContext;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v3, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;

    invoke-direct {v3, p0, p1, v1}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;-><init>(Lmozilla/components/browser/domains/DomainAutoCompleteProvider;Landroid/content/Context;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x6

    move-object v2, v1

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 126
    :cond_0
    return-void
.end method

.method public final onDomainsLoaded$domains_release(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .param p1, "domains"    # Ljava/util/List;
    .param p2, "customDomains"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    const-string v2, "domains"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "customDomains"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    check-cast p1, Ljava/lang/Iterable;

    .line 163
    .end local p1    # "domains":Ljava/util/List;
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 164
    .local v0, "destination$iv$iv":Ljava/util/Collection;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 165
    .local v1, "item$iv$iv":Ljava/lang/Object;
    check-cast v1, Ljava/lang/String;

    .line 129
    .end local v1    # "item$iv$iv":Ljava/lang/Object;
    sget-object v3, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->Companion:Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain$Companion;

    invoke-virtual {v3, v1}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain$Companion;->create$domains_release(Ljava/lang/String;)Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    :cond_0
    check-cast v0, Ljava/util/List;

    .end local v0    # "destination$iv$iv":Ljava/util/Collection;
    iput-object v0, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider;->shippedDomains:Ljava/util/List;

    .line 130
    check-cast p2, Ljava/lang/Iterable;

    .line 167
    .end local p2    # "customDomains":Ljava/util/List;
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 168
    .restart local v0    # "destination$iv$iv":Ljava/util/Collection;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 169
    .restart local v1    # "item$iv$iv":Ljava/lang/Object;
    check-cast v1, Ljava/lang/String;

    .line 130
    .end local v1    # "item$iv$iv":Ljava/lang/Object;
    sget-object v3, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;->Companion:Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain$Companion;

    invoke-virtual {v3, v1}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain$Companion;->create$domains_release(Ljava/lang/String;)Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Domain;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 170
    :cond_1
    check-cast v0, Ljava/util/List;

    .end local v0    # "destination$iv$iv":Ljava/util/Collection;
    iput-object v0, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider;->customDomains:Ljava/util/List;

    .line 131
    return-void
.end method
