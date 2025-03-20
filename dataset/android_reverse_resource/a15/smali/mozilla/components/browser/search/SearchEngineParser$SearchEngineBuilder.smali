.class final Lmozilla/components/browser/search/SearchEngineParser$SearchEngineBuilder;
.super Ljava/lang/Object;
.source "SearchEngineParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmozilla/components/browser/search/SearchEngineParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SearchEngineBuilder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchEngineParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchEngineParser.kt\nmozilla/components/browser/search/SearchEngineParser$SearchEngineBuilder\n*L\n1#1,195:1\n*E\n"
.end annotation


# instance fields
.field private icon:Landroid/graphics/Bitmap;

.field private final identifier:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private resultsUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private suggestUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmozilla/components/browser/search/SearchEngineParser$SearchEngineBuilder;->identifier:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lmozilla/components/browser/search/SearchEngineParser$SearchEngineBuilder;->resultsUris:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getResultsUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lmozilla/components/browser/search/SearchEngineParser$SearchEngineBuilder;->resultsUris:Ljava/util/List;

    return-object v0
.end method

.method public final setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "<set-?>"    # Landroid/graphics/Bitmap;

    .prologue
    .line 33
    iput-object p1, p0, Lmozilla/components/browser/search/SearchEngineParser$SearchEngineBuilder;->icon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lmozilla/components/browser/search/SearchEngineParser$SearchEngineBuilder;->name:Ljava/lang/String;

    return-void
.end method

.method public final setSuggestUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "<set-?>"    # Landroid/net/Uri;

    .prologue
    .line 31
    iput-object p1, p0, Lmozilla/components/browser/search/SearchEngineParser$SearchEngineBuilder;->suggestUri:Landroid/net/Uri;

    return-void
.end method

.method public final toSearchEngine()Lmozilla/components/browser/search/SearchEngine;
    .locals 6

    .prologue
    .line 35
    new-instance v0, Lmozilla/components/browser/search/SearchEngine;

    .line 36
    iget-object v1, p0, Lmozilla/components/browser/search/SearchEngineParser$SearchEngineBuilder;->identifier:Ljava/lang/String;

    .line 37
    iget-object v2, p0, Lmozilla/components/browser/search/SearchEngineParser$SearchEngineBuilder;->name:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 38
    :cond_0
    iget-object v3, p0, Lmozilla/components/browser/search/SearchEngineParser$SearchEngineBuilder;->icon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 39
    :cond_1
    iget-object v4, p0, Lmozilla/components/browser/search/SearchEngineParser$SearchEngineBuilder;->resultsUris:Ljava/util/List;

    .line 40
    iget-object v5, p0, Lmozilla/components/browser/search/SearchEngineParser$SearchEngineBuilder;->suggestUri:Landroid/net/Uri;

    .line 35
    invoke-direct/range {v0 .. v5}, Lmozilla/components/browser/search/SearchEngine;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/util/List;Landroid/net/Uri;)V

    .line 41
    return-object v0
.end method
