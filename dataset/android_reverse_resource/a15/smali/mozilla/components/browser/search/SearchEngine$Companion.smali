.class public final Lmozilla/components/browser/search/SearchEngine$Companion;
.super Ljava/lang/Object;
.source "SearchEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmozilla/components/browser/search/SearchEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchEngine.kt\nmozilla/components/browser/search/SearchEngine$Companion\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,94:1\n60#2:95\n31#2,23:96\n*E\n*S KotlinDebug\n*F\n+ 1 SearchEngine.kt\nmozilla/components/browser/search/SearchEngine$Companion\n*L\n83#1:95\n83#1,23:96\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 63
    invoke-direct {p0}, Lmozilla/components/browser/search/SearchEngine$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$normalize(Lmozilla/components/browser/search/SearchEngine$Companion;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lmozilla/components/browser/search/SearchEngine$Companion;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lmozilla/components/browser/search/SearchEngine$Companion;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 83
    move-object v0, p1

    .local v0, "$receiver$iv":Ljava/lang/String;
    move-object v1, v0

    .line 95
    check-cast v1, Ljava/lang/CharSequence;

    .line 96
    .local v1, "$receiver$iv$iv":Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 97
    .local v7, "startIndex$iv$iv":I
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    add-int/lit8 v2, v10, -0x1

    .line 98
    .local v2, "endIndex$iv$iv":I
    const/4 v6, 0x0

    .line 100
    .local v6, "startFound$iv$iv":Z
    :goto_0
    if-gt v7, v2, :cond_4

    .line 101
    if-nez v6, :cond_0

    move v3, v7

    .line 102
    .local v3, "index$iv$iv":I
    :goto_1
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 83
    .local v4, "it":C
    const/16 v10, 0x20

    if-gt v4, v10, :cond_1

    const/4 v5, 0x1

    .line 104
    .local v5, "match$iv$iv":Z
    :goto_2
    if-nez v6, :cond_3

    .line 105
    if-nez v5, :cond_2

    .line 106
    const/4 v6, 0x1

    goto :goto_0

    .end local v3    # "index$iv$iv":I
    .end local v4    # "it":C
    .end local v5    # "match$iv$iv":Z
    :cond_0
    move v3, v2

    .line 101
    goto :goto_1

    .line 83
    .restart local v3    # "index$iv$iv":I
    .restart local v4    # "it":C
    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 108
    .restart local v5    # "match$iv$iv":Z
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 111
    :cond_3
    if-nez v5, :cond_6

    .line 118
    .end local v3    # "index$iv$iv":I
    .end local v4    # "it":C
    .end local v5    # "match$iv$iv":Z
    :cond_4
    add-int/lit8 v10, v2, 0x1

    invoke-interface {v1, v7, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    .line 95
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 84
    .local v8, "trimmedInput":Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 86
    .local v9, "uri":Landroid/net/Uri;
    const-string v10, "uri"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 87
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 90
    :cond_5
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "uri.toString()"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v10

    .line 114
    .end local v8    # "trimmedInput":Ljava/lang/String;
    .end local v9    # "uri":Landroid/net/Uri;
    .restart local v3    # "index$iv$iv":I
    .restart local v4    # "it":C
    .restart local v5    # "match$iv$iv":Z
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method
