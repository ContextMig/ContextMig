.class public final Lorg/mozilla/focus/search/HiddenSearchEngineFilter;
.super Ljava/lang/Object;
.source "HiddenSearchEngineFilter.kt"

# interfaces
.implements Lmozilla/components/browser/search/provider/filter/SearchEngineFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Landroid/content/Context;Lmozilla/components/browser/search/SearchEngine;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "searchEngine"    # Lmozilla/components/browser/search/SearchEngine;

    .prologue
    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "searchEngine"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v1, Lorg/mozilla/focus/search/CustomSearchEngineStore;->INSTANCE:Lorg/mozilla/focus/search/CustomSearchEngineStore;

    invoke-virtual {v1, p1}, Lorg/mozilla/focus/search/CustomSearchEngineStore;->getRemovedSearchEngines(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 17
    .local v0, "hiddenSearchEngines":Ljava/util/Set;
    invoke-virtual {p2}, Lmozilla/components/browser/search/SearchEngine;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
