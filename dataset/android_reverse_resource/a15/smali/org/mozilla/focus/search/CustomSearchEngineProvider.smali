.class public final Lorg/mozilla/focus/search/CustomSearchEngineProvider;
.super Ljava/lang/Object;
.source "CustomSearchEngineProvider.kt"

# interfaces
.implements Lmozilla/components/browser/search/provider/SearchEngineProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadSearchEngines(Landroid/content/Context;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-",
            "Ljava/util/List",
            "<",
            "Lmozilla/components/browser/search/SearchEngine;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 18
    sget-object v0, Lorg/mozilla/focus/search/CustomSearchEngineStore;->INSTANCE:Lorg/mozilla/focus/search/CustomSearchEngineStore;

    invoke-virtual {v0, p1}, Lorg/mozilla/focus/search/CustomSearchEngineStore;->loadCustomSearchEngines(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
