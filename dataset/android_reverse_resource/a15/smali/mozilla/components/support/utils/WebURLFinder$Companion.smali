.class public final Lmozilla/components/support/utils/WebURLFinder$Companion;
.super Ljava/lang/Object;
.source "WebURLFinder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmozilla/components/support/utils/WebURLFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebURLFinder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebURLFinder.kt\nmozilla/components/support/utils/WebURLFinder$Companion\n*L\n1#1,361:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 66
    invoke-direct {p0}, Lmozilla/components/support/utils/WebURLFinder$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$candidateWebURLs(Lmozilla/components/support/utils/WebURLFinder$Companion;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Lmozilla/components/support/utils/WebURLFinder$Companion;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lmozilla/components/support/utils/WebURLFinder$Companion;->candidateWebURLs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final candidateWebURLs(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    invoke-static {}, Lmozilla/components/support/utils/WebURLFinder;->access$getAUTOLINK_WEB_URL$cp()Ljava/util/regex/Pattern;

    move-result-object v3

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 341
    .local v0, "matcher":Ljava/util/regex/Matcher;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 343
    .local v1, "matches":Ljava/util/LinkedList;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, p0

    .line 345
    check-cast v2, Lmozilla/components/support/utils/WebURLFinder$Companion;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    const-string v4, "matcher.group()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lmozilla/components/support/utils/WebURLFinder$Companion;->isWebURL(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_0

    .line 354
    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 357
    :cond_2
    check-cast v1, Ljava/util/List;

    .end local v1    # "matches":Ljava/util/LinkedList;
    return-object v1
.end method

.method private final isWebURL(Ljava/lang/String;)Z
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 314
    nop

    .line 315
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    invoke-static {p1}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
