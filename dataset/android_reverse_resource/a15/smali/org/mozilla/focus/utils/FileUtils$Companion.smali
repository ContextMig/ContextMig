.class public final Lorg/mozilla/focus/utils/FileUtils$Companion;
.super Ljava/lang/Object;
.source "FileUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/utils/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileUtils.kt\norg/mozilla/focus/utils/FileUtils$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,46:1\n2995#2:47\n3428#2,2:48\n1406#3,3:50\n*E\n*S KotlinDebug\n*F\n+ 1 FileUtils.kt\norg/mozilla/focus/utils/FileUtils$Companion\n*L\n41#1:47\n41#1,2:48\n42#1,3:50\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/mozilla/focus/utils/FileUtils$Companion;-><init>()V

    return-void
.end method

.method private final deleteContent(Ljava/io/File;Ljava/util/Set;)Z
    .locals 11
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "doNotEraseWhitelist"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 41
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, [Ljava/lang/Object;

    .line 47
    .local v0, "$receiver$iv":[Ljava/lang/Object;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 48
    .local v1, "destination$iv$iv":Ljava/util/Collection;
    array-length v10, v0

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_2

    aget-object v3, v0, v9

    .local v3, "element$iv$iv":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Ljava/io/File;

    .line 41
    .local v5, "it":Ljava/io/File;
    const-string v6, "it"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    move v6, v7

    :goto_1
    if-eqz v6, :cond_0

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto :goto_0

    :cond_1
    move v6, v8

    goto :goto_1

    .end local v3    # "element$iv$iv":Ljava/lang/Object;
    .end local v5    # "it":Ljava/io/File;
    :cond_2
    move-object v4, v1

    .line 49
    check-cast v4, Ljava/util/List;

    .local v4, "filesToDelete":Ljava/util/List;
    move-object v0, v4

    .line 42
    check-cast v0, Ljava/lang/Iterable;

    .line 50
    .local v0, "$receiver$iv":Ljava/lang/Iterable;
    instance-of v6, v0, Ljava/util/Collection;

    if-eqz v6, :cond_4

    move-object v6, v0

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    .line 52
    .end local v0    # "$receiver$iv":Ljava/lang/Iterable;
    .end local v1    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "filesToDelete":Ljava/util/List;
    :goto_2
    return v6

    :cond_3
    move v6, v8

    .line 41
    goto :goto_2

    .line 51
    .restart local v0    # "$receiver$iv":Ljava/lang/Iterable;
    .restart local v1    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v4    # "filesToDelete":Ljava/util/List;
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "element$iv":Ljava/lang/Object;
    move-object v5, v2

    check-cast v5, Ljava/io/File;

    .line 42
    .restart local v5    # "it":Ljava/io/File;
    const-string v9, "it"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_5

    move v6, v8

    goto :goto_2

    .end local v2    # "element$iv":Ljava/lang/Object;
    .end local v5    # "it":Ljava/io/File;
    :cond_6
    move v6, v7

    .line 52
    goto :goto_2
.end method


# virtual methods
.method public final deleteWebViewDirectory(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v2, "app_webview"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .local v0, "webviewDirectory":Ljava/io/File;
    check-cast p0, Lorg/mozilla/focus/utils/FileUtils$Companion;

    .line 36
    .end local p0    # "this":Lorg/mozilla/focus/utils/FileUtils$Companion;
    const-string v1, "Local Storage"

    .line 33
    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/mozilla/focus/utils/FileUtils$Companion;->deleteContent(Ljava/io/File;Ljava/util/Set;)Z

    move-result v1

    return v1
.end method

.method public final truncateCacheDirectory(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    check-cast p0, Lorg/mozilla/focus/utils/FileUtils$Companion;

    .end local p0    # "this":Lorg/mozilla/focus/utils/FileUtils$Companion;
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "context.cacheDir"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 26
    const/4 v2, 0x0

    const-string v3, "org.chromium.android_webview"

    aput-object v3, v1, v2

    .line 27
    const/4 v2, 0x1

    const-string v3, "sentry-buffered-events"

    aput-object v3, v1, v2

    .line 24
    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/mozilla/focus/utils/FileUtils$Companion;->deleteContent(Ljava/io/File;Ljava/util/Set;)Z

    move-result v0

    .line 28
    return v0
.end method
