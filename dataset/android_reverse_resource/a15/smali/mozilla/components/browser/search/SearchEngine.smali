.class public final Lmozilla/components/browser/search/SearchEngine;
.super Ljava/lang/Object;
.source "SearchEngine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmozilla/components/browser/search/SearchEngine$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchEngine.kt\nmozilla/components/browser/search/SearchEngine\n*L\n1#1,94:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lmozilla/components/browser/search/SearchEngine$Companion;


# instance fields
.field private final icon:Landroid/graphics/Bitmap;

.field private final identifier:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final resultsUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final suggestUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmozilla/components/browser/search/SearchEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmozilla/components/browser/search/SearchEngine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lmozilla/components/browser/search/SearchEngine;->Companion:Lmozilla/components/browser/search/SearchEngine$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/util/List;Landroid/net/Uri;)V
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/Bitmap;
    .param p4, "resultsUris"    # Ljava/util/List;
    .param p5, "suggestUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<+",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultsUris"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmozilla/components/browser/search/SearchEngine;->identifier:Ljava/lang/String;

    iput-object p2, p0, Lmozilla/components/browser/search/SearchEngine;->name:Ljava/lang/String;

    iput-object p3, p0, Lmozilla/components/browser/search/SearchEngine;->icon:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lmozilla/components/browser/search/SearchEngine;->resultsUris:Ljava/util/List;

    iput-object p5, p0, Lmozilla/components/browser/search/SearchEngine;->suggestUri:Landroid/net/Uri;

    .line 23
    iget-object v0, p0, Lmozilla/components/browser/search/SearchEngine;->resultsUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Results uri list should not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_0
    return-void
.end method

.method private final paramSubstitution(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 44
    move-object v0, p1

    .line 45
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "locale":Ljava/lang/String;
    const-string v1, "{moz:locale}"

    const-string v6, "locale"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 48
    const-string v7, "{moz:distributionID}"

    const-string v8, ""

    move-object v6, v0

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string v7, "{moz:official}"

    const-string v8, "unofficial"

    move-object v6, v0

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string v7, "{searchTerms}"

    move-object v6, v0

    move-object v8, p2

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string v7, "{inputEncoding}"

    const-string v8, "UTF-8"

    move-object v6, v0

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string v1, "{language}"

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v7, "{outputEncoding}"

    const-string v8, "UTF-8"

    move-object v6, v0

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 58
    check-cast v0, Ljava/lang/CharSequence;

    .end local v0    # "result":Ljava/lang/String;
    const-string v1, "\\{(?:\\w+:)?\\w+?\\}"

    new-instance v3, Lkotlin/text/Regex;

    invoke-direct {v3, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v3, v0, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .restart local v0    # "result":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public final buildSearchUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "searchTerm"    # Ljava/lang/String;

    .prologue
    const-string v3, "searchTerm"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v3, p0, Lmozilla/components/browser/search/SearchEngine;->resultsUris:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 35
    .local v0, "searchUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "template":Ljava/lang/String;
    const-string v3, "template"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Uri.encode(searchTerm)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v3}, Lmozilla/components/browser/search/SearchEngine;->paramSubstitution(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "urlWithSubstitutions":Ljava/lang/String;
    sget-object v3, Lmozilla/components/browser/search/SearchEngine;->Companion:Lmozilla/components/browser/search/SearchEngine$Companion;

    invoke-static {v3, v2}, Lmozilla/components/browser/search/SearchEngine$Companion;->access$normalize(Lmozilla/components/browser/search/SearchEngine$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public final getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lmozilla/components/browser/search/SearchEngine;->icon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lmozilla/components/browser/search/SearchEngine;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lmozilla/components/browser/search/SearchEngine;->name:Ljava/lang/String;

    return-object v0
.end method
