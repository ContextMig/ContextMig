.class final Lorg/mozilla/focus/Components$searchEngineManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Components.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/Components;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0",
        "<",
        "Lmozilla/components/browser/search/SearchEngineManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/mozilla/focus/Components$searchEngineManager$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/focus/Components$searchEngineManager$2;

    invoke-direct {v0}, Lorg/mozilla/focus/Components$searchEngineManager$2;-><init>()V

    sput-object v0, Lorg/mozilla/focus/Components$searchEngineManager$2;->INSTANCE:Lorg/mozilla/focus/Components$searchEngineManager$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lorg/mozilla/focus/Components$searchEngineManager$2;->invoke()Lmozilla/components/browser/search/SearchEngineManager;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lmozilla/components/browser/search/SearchEngineManager;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 19
    new-instance v0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;

    .line 20
    new-instance v2, Lmozilla/components/browser/search/provider/localization/LocaleSearchLocalizationProvider;

    invoke-direct {v2}, Lmozilla/components/browser/search/provider/localization/LocaleSearchLocalizationProvider;-><init>()V

    check-cast v2, Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;

    .line 21
    new-array v4, v7, [Lmozilla/components/browser/search/provider/filter/SearchEngineFilter;

    new-instance v3, Lorg/mozilla/focus/search/BingSearchEngineFilter;

    invoke-direct {v3}, Lorg/mozilla/focus/search/BingSearchEngineFilter;-><init>()V

    check-cast v3, Lmozilla/components/browser/search/provider/filter/SearchEngineFilter;

    aput-object v3, v4, v5

    new-instance v3, Lorg/mozilla/focus/search/HiddenSearchEngineFilter;

    invoke-direct {v3}, Lorg/mozilla/focus/search/HiddenSearchEngineFilter;-><init>()V

    check-cast v3, Lmozilla/components/browser/search/provider/filter/SearchEngineFilter;

    aput-object v3, v4, v6

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 22
    const-string v4, "ddg"

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 19
    invoke-direct {v0, v2, v3, v4}, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;-><init>(Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;Ljava/util/List;Ljava/util/List;)V

    .line 24
    .local v0, "assetsProvider":Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;
    new-instance v1, Lorg/mozilla/focus/search/CustomSearchEngineProvider;

    invoke-direct {v1}, Lorg/mozilla/focus/search/CustomSearchEngineProvider;-><init>()V

    .line 26
    .local v1, "customProvider":Lorg/mozilla/focus/search/CustomSearchEngineProvider;
    new-instance v2, Lmozilla/components/browser/search/SearchEngineManager;

    new-array v3, v7, [Lmozilla/components/browser/search/provider/SearchEngineProvider;

    check-cast v0, Lmozilla/components/browser/search/provider/SearchEngineProvider;

    .end local v0    # "assetsProvider":Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;
    aput-object v0, v3, v5

    check-cast v1, Lmozilla/components/browser/search/provider/SearchEngineProvider;

    .end local v1    # "customProvider":Lorg/mozilla/focus/search/CustomSearchEngineProvider;
    aput-object v1, v3, v6

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lmozilla/components/browser/search/SearchEngineManager;-><init>(Ljava/util/List;)V

    return-object v2
.end method
