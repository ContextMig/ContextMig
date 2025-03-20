.class public final Lmozilla/components/browser/domains/Domains;
.super Ljava/lang/Object;
.source "Domains.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDomains.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Domains.kt\nmozilla/components/browser/domains/Domains\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,83:1\n624#2:84\n713#2,2:85\n1519#2,2:87\n*E\n*S KotlinDebug\n*F\n+ 1 Domains.kt\nmozilla/components/browser/domains/Domains\n*L\n36#1:84\n36#1,2:85\n37#1,2:87\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lmozilla/components/browser/domains/Domains;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lmozilla/components/browser/domains/Domains;

    invoke-direct {v0}, Lmozilla/components/browser/domains/Domains;-><init>()V

    sput-object v0, Lmozilla/components/browser/domains/Domains;->INSTANCE:Lmozilla/components/browser/domains/Domains;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getAvailableDomainLists(Landroid/content/Context;)Ljava/util/Set;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 47
    .local v1, "availableDomains":Ljava/util/LinkedHashSet;
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 48
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    nop

    .line 49
    :try_start_0
    const-string v4, "domains"

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "domains":[Ljava/lang/String;
    :goto_0
    move-object v4, v1

    .line 53
    check-cast v4, Ljava/util/Collection;

    const-string v5, "domains"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 54
    check-cast v1, Ljava/util/Set;

    .end local v1    # "availableDomains":Ljava/util/LinkedHashSet;
    return-object v1

    .line 50
    .end local v2    # "domains":[Ljava/lang/String;
    .restart local v1    # "availableDomains":Ljava/util/LinkedHashSet;
    :catch_0
    move-exception v3

    .line 51
    .local v3, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method private final getCountriesInDefaultLocaleList()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 69
    .local v1, "countries":Ljava/util/LinkedHashSet;
    new-instance v0, Lmozilla/components/browser/domains/Domains$getCountriesInDefaultLocaleList$addIfNotEmpty$1;

    invoke-direct {v0, v1}, Lmozilla/components/browser/domains/Domains$getCountriesInDefaultLocaleList$addIfNotEmpty$1;-><init>(Ljava/util/LinkedHashSet;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 71
    .local v0, "addIfNotEmpty":Lkotlin/jvm/functions/Function1;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_0

    .line 72
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v3

    .line 73
    .local v3, "list":Landroid/os/LocaleList;
    const/4 v2, 0x0

    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v4

    :goto_0
    if-ge v2, v4, :cond_1

    .line 74
    invoke-virtual {v3, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    const-string v6, "list.get(i)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string v6, "list.get(i).country"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    add-int/lit8 v2, v2, 0x1

    .local v2, "i":I
    goto :goto_0

    .line 77
    .end local v2    # "i":I
    .end local v3    # "list":Landroid/os/LocaleList;
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "Locale.getDefault()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Locale.getDefault().country"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_1
    check-cast v1, Ljava/util/Set;

    .end local v1    # "countries":Ljava/util/LinkedHashSet;
    return-object v1
.end method

.method private final loadDomainsForLanguage(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "domains"    # Ljava/util/Set;
    .param p3, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 59
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    nop

    .line 60
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "domains/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v3, "assetManager.open(\"domains/\" + country)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v3, Ljava/io/Reader;

    const/16 v5, 0x2000

    instance-of v4, v3, Ljava/io/BufferedReader;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/io/BufferedReader;

    :goto_0
    check-cast v3, Ljava/io/Reader;

    invoke-static {v3}, Lkotlin/io/TextStreamsKt;->readLines(Ljava/io/Reader;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 64
    .local v2, "languageDomains":Ljava/util/List;
    :goto_1
    check-cast v2, Ljava/util/Collection;

    .end local v2    # "languageDomains":Ljava/util/List;
    invoke-interface {p2, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 65
    return-void

    .line 60
    :cond_0
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public final load(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lmozilla/components/browser/domains/Domains;->getCountriesInDefaultLocaleList()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmozilla/components/browser/domains/Domains;->load$domains_release(Landroid/content/Context;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final load$domains_release(Landroid/content/Context;Ljava/util/Set;)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "countries"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v6, "context"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "countries"

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 32
    .local v2, "domains":Ljava/util/LinkedHashSet;
    invoke-direct {p0, p1}, Lmozilla/components/browser/domains/Domains;->getAvailableDomainLists(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 35
    .local v0, "availableLists":Ljava/util/Set;
    check-cast p2, Ljava/lang/Iterable;

    .line 36
    .end local p2    # "countries":Ljava/util/Set;
    nop

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 85
    .local v1, "destination$iv$iv":Ljava/util/Collection;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 36
    .local v5, "it":Ljava/lang/String;
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    .end local v4    # "element$iv$iv":Ljava/lang/Object;
    .end local v5    # "it":Ljava/lang/String;
    :cond_1
    check-cast v1, Ljava/util/List;

    .end local v1    # "destination$iv$iv":Ljava/util/Collection;
    check-cast v1, Ljava/lang/Iterable;

    .line 37
    nop

    .line 87
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 37
    .restart local v5    # "it":Ljava/lang/String;
    sget-object v8, Lmozilla/components/browser/domains/Domains;->INSTANCE:Lmozilla/components/browser/domains/Domains;

    move-object v6, v2

    check-cast v6, Ljava/util/Set;

    invoke-direct {v8, p1, v6, v5}, Lmozilla/components/browser/domains/Domains;->loadDomainsForLanguage(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V

    nop

    goto :goto_1

    .line 88
    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v5    # "it":Ljava/lang/String;
    :cond_2
    nop

    move-object v6, v2

    .line 40
    check-cast v6, Ljava/util/Set;

    const-string v7, "global"

    invoke-direct {p0, p1, v6, v7}, Lmozilla/components/browser/domains/Domains;->loadDomainsForLanguage(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V

    .line 42
    check-cast v2, Ljava/lang/Iterable;

    .end local v2    # "domains":Ljava/util/LinkedHashSet;
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    return-object v6
.end method
