.class Lkotlin/io/FilesKt__UtilsKt;
.super Lkotlin/io/FilesKt__FileTreeWalkKt;
.source "Utils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\nkotlin/io/FilesKt__UtilsKt\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,436:1\n1027#2,3:437\n*E\n*S KotlinDebug\n*F\n+ 1 Utils.kt\nkotlin/io/FilesKt__UtilsKt\n*L\n310#1,3:437\n*E\n"
.end annotation


# direct methods
.method public static final deleteRecursively(Ljava/io/File;)Z
    .locals 6
    .param p0, "$receiver"    # Ljava/io/File;

    .prologue
    const-string v4, "$receiver"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    invoke-static {p0}, Lkotlin/io/FilesKt;->walkBottomUp(Ljava/io/File;)Lkotlin/io/FileTreeWalk;

    move-result-object v4

    check-cast v4, Lkotlin/sequences/Sequence;

    const/4 v2, 0x1

    .line 437
    .local v2, "initial$iv":Z
    move v0, v2

    .line 438
    .local v0, "accumulator$iv":I
    invoke-interface {v4}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v0    # "accumulator$iv":I
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv":Ljava/lang/Object;
    check-cast v1, Ljava/io/File;

    .end local v1    # "element$iv":Ljava/lang/Object;
    move v3, v0

    .line 310
    .local v3, "res":Z
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .local v0, "accumulator$iv":Z
    :goto_1
    goto :goto_0

    .end local v0    # "accumulator$iv":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .end local v3    # "res":Z
    :cond_2
    return v0
.end method
