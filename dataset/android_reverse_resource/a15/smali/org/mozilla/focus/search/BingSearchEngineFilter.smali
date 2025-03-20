.class public final Lorg/mozilla/focus/search/BingSearchEngineFilter;
.super Ljava/lang/Object;
.source "BingSearchEngineFilter.kt"

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
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchEngine"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Lmozilla/components/browser/search/SearchEngine;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bing"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
