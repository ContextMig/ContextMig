.class public final Lorg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1$doResume$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1;->doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 SearchEngineListPreference.kt\norg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1\n*L\n1#1,331:1\n59#2:332\n59#2:333\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 114
    move-object v0, p1

    check-cast v0, Lmozilla/components/browser/search/SearchEngine;

    .line 332
    .local v0, "it":Lmozilla/components/browser/search/SearchEngine;
    invoke-virtual {v0}, Lmozilla/components/browser/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    check-cast p2, Lmozilla/components/browser/search/SearchEngine;

    .line 333
    .end local p2    # "b":Ljava/lang/Object;
    invoke-virtual {p2}, Lmozilla/components/browser/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-static {v1, v2}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v1

    .line 114
    return v1
.end method
