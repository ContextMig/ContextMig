.class Lkotlin/text/StringsKt__StringsKt;
.super Lkotlin/text/StringsKt__StringsJVMKt;
.source "Strings.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStrings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1258:1\n31#1,23:1259\n66#1,5:1282\n83#1,5:1287\n31#1,23:1292\n60#1:1315\n31#1,23:1316\n66#1,5:1339\n77#1:1344\n66#1,5:1345\n83#1,5:1350\n94#1:1355\n83#1,5:1356\n31#1,23:1361\n66#1,5:1384\n83#1,5:1389\n335#1:1394\n1247#1:1411\n10329#2,2:1395\n10329#2,2:1397\n222#3,2:1399\n222#3,2:1401\n1246#3:1403\n1315#3,3:1404\n1246#3:1407\n1315#3,3:1408\n*E\n*S KotlinDebug\n*F\n+ 1 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n60#1,23:1259\n77#1,5:1282\n94#1,5:1287\n99#1,23:1292\n104#1:1315\n104#1,23:1316\n109#1,5:1339\n114#1:1344\n114#1,5:1345\n119#1,5:1350\n124#1:1355\n124#1,5:1356\n129#1,23:1361\n140#1,5:1384\n151#1,5:1389\n819#1,2:1395\n843#1,2:1397\n882#1,2:1399\n888#1,2:1401\n1181#1:1403\n1181#1,3:1404\n1206#1:1407\n1206#1,3:1408\n*E\n"
.end annotation


# direct methods
.method public static final synthetic access$findAnyOf(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)Lkotlin/Pair;
    .locals 1
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "strings"    # Ljava/util/Collection;
    .param p2, "startIndex"    # I
    .param p3, "ignoreCase"    # Z
    .param p4, "last"    # Z

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/text/StringsKt__StringsKt;->findAnyOf$StringsKt__StringsKt(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static final contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 8
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "other"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1023
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v1, p1

    .line 1024
    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p2

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 1023
    :goto_0
    return v0

    .line 1024
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1026
    :cond_1
    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-static/range {v0 .. v7}, Lkotlin/text/StringsKt__StringsKt;->indexOf$StringsKt__StringsKt$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZILjava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z
    .locals 1

    .prologue
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 1022
    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static final findAnyOf$StringsKt__StringsKt(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)Lkotlin/Pair;
    .locals 17
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "strings"    # Ljava/util/Collection;
    .param p2, "startIndex"    # I
    .param p3, "ignoreCase"    # Z
    .param p4, "last"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;IZZ)",
            "Lkotlin/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 872
    if-nez p3, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 873
    check-cast p1, Ljava/lang/Iterable;

    .end local p1    # "strings":Ljava/util/Collection;
    invoke-static/range {p1 .. p1}, Lkotlin/collections/CollectionsKt;->single(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 874
    .local v2, "string":Ljava/lang/String;
    if-nez p4, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v12

    .line 875
    .local v12, "index":I
    :goto_0
    if-gez v12, :cond_1

    const/4 v1, 0x0

    .line 892
    .end local v2    # "string":Ljava/lang/String;
    .end local v12    # "index":I
    :goto_1
    return-object v1

    .line 874
    .restart local v2    # "string":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v12

    goto :goto_0

    .line 875
    .restart local v12    # "index":I
    :cond_1
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_1

    .line 878
    .end local v2    # "string":Ljava/lang/String;
    .end local v12    # "index":I
    .restart local p1    # "strings":Ljava/util/Collection;
    :cond_2
    if-nez p4, :cond_5

    const/4 v1, 0x0

    move/from16 v0, p2

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    new-instance v1, Lkotlin/ranges/IntRange;

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-direct {v1, v4, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v1, Lkotlin/ranges/IntProgression;

    move-object v13, v1

    .line 880
    .local v13, "indices":Lkotlin/ranges/IntProgression;
    :goto_2
    move-object/from16 v0, p0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 881
    invoke-virtual {v13}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v6

    invoke-virtual {v13}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v1

    invoke-virtual {v13}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v9

    if-lez v9, :cond_6

    if-gt v6, v1, :cond_7

    :cond_3
    :goto_3
    move-object/from16 v10, p1

    .line 882
    check-cast v10, Ljava/lang/Iterable;

    .line 1399
    .local v10, "$receiver$iv":Ljava/lang/Iterable;
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v3, v11

    check-cast v3, Ljava/lang/String;

    .line 882
    .local v3, "it":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v5, p0

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    move/from16 v8, p3

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->regionMatches(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v14, v11

    .end local v3    # "it":Ljava/lang/String;
    .end local v11    # "element$iv":Ljava/lang/Object;
    :goto_4
    check-cast v14, Ljava/lang/String;

    .line 883
    .local v14, "matchingString":Ljava/lang/String;
    if-eqz v14, :cond_9

    .line 884
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_1

    .line 878
    .end local v10    # "$receiver$iv":Ljava/lang/Iterable;
    .end local v13    # "indices":Lkotlin/ranges/IntProgression;
    .end local v14    # "matchingString":Ljava/lang/String;
    :cond_5
    invoke-static/range {p0 .. p0}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v1

    move/from16 v0, p2

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lkotlin/ranges/RangesKt;->downTo(II)Lkotlin/ranges/IntProgression;

    move-result-object v13

    goto :goto_2

    .line 881
    .restart local v13    # "indices":Lkotlin/ranges/IntProgression;
    :cond_6
    if-ge v6, v1, :cond_3

    .line 892
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1400
    .restart local v10    # "$receiver$iv":Ljava/lang/Iterable;
    :cond_8
    const/4 v14, 0x0

    goto :goto_4

    .line 881
    .restart local v14    # "matchingString":Ljava/lang/String;
    :cond_9
    if-eq v6, v1, :cond_7

    add-int/2addr v6, v9

    goto :goto_3

    .line 887
    .end local v10    # "$receiver$iv":Ljava/lang/Iterable;
    .end local v14    # "matchingString":Ljava/lang/String;
    :cond_a
    invoke-virtual {v13}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v7

    invoke-virtual {v13}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v1

    invoke-virtual {v13}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v15

    if-lez v15, :cond_c

    if-gt v7, v1, :cond_7

    :goto_5
    move-object/from16 v10, p1

    .line 888
    check-cast v10, Ljava/lang/Iterable;

    .line 1401
    .restart local v10    # "$receiver$iv":Ljava/lang/Iterable;
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .restart local v11    # "element$iv":Ljava/lang/Object;
    move-object v3, v11

    check-cast v3, Ljava/lang/String;

    .restart local v3    # "it":Ljava/lang/String;
    move-object v4, v3

    .line 888
    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v6, p0

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->regionMatchesImpl(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object v14, v11

    .end local v3    # "it":Ljava/lang/String;
    .end local v11    # "element$iv":Ljava/lang/Object;
    :goto_6
    check-cast v14, Ljava/lang/String;

    .line 889
    .restart local v14    # "matchingString":Ljava/lang/String;
    if-eqz v14, :cond_e

    .line 890
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto/16 :goto_1

    .line 887
    .end local v10    # "$receiver$iv":Ljava/lang/Iterable;
    .end local v14    # "matchingString":Ljava/lang/String;
    :cond_c
    if-lt v7, v1, :cond_7

    goto :goto_5

    .line 1402
    .restart local v10    # "$receiver$iv":Ljava/lang/Iterable;
    :cond_d
    const/4 v14, 0x0

    goto :goto_6

    .line 887
    .restart local v14    # "matchingString":Ljava/lang/String;
    :cond_e
    if-eq v7, v1, :cond_7

    add-int/2addr v7, v15

    goto :goto_5
.end method

.method public static final getLastIndex(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "$receiver"    # Ljava/lang/CharSequence;

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static final indexOf(Ljava/lang/CharSequence;CIZ)I
    .locals 2
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "char"    # C
    .param p2, "startIndex"    # I
    .param p3, "ignoreCase"    # Z

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 966
    if-nez p3, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 967
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    invoke-static {p0, v0, p2, p3}, Lkotlin/text/StringsKt;->indexOfAny(Ljava/lang/CharSequence;[CIZ)I

    move-result v0

    .line 966
    .end local p0    # "$receiver":Ljava/lang/CharSequence;
    :goto_0
    return v0

    .line 969
    .restart local p0    # "$receiver":Ljava/lang/CharSequence;
    :cond_1
    check-cast p0, Ljava/lang/String;

    .end local p0    # "$receiver":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_0
.end method

.method public static final indexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I
    .locals 8
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "ignoreCase"    # Z

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 980
    if-nez p3, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    move-object v1, p1

    .line 981
    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p2

    move v4, p3

    invoke-static/range {v0 .. v7}, Lkotlin/text/StringsKt__StringsKt;->indexOf$StringsKt__StringsKt$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZILjava/lang/Object;)I

    move-result v0

    .line 980
    .end local p0    # "$receiver":Ljava/lang/CharSequence;
    :goto_0
    return v0

    .line 983
    .restart local p0    # "$receiver":Ljava/lang/CharSequence;
    :cond_1
    check-cast p0, Ljava/lang/String;

    .end local p0    # "$receiver":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private static final indexOf$StringsKt__StringsKt(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I
    .locals 9
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "other"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "ignoreCase"    # Z
    .param p5, "last"    # Z

    .prologue
    const/4 v1, 0x0

    .line 852
    if-nez p5, :cond_2

    .line 853
    invoke-static {p2, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    new-instance v0, Lkotlin/ranges/IntRange;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {p3, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v0, Lkotlin/ranges/IntProgression;

    move-object v6, v0

    .line 857
    .local v6, "indices":Lkotlin/ranges/IntProgression;
    :goto_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_6

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 858
    invoke-virtual {v6}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v3

    invoke-virtual {v6}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v7

    invoke-virtual {v6}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v8

    if-lez v8, :cond_3

    if-gt v3, v7, :cond_4

    :cond_0
    :goto_1
    move-object v0, p1

    .line 859
    check-cast v0, Ljava/lang/String;

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move v5, p4

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->regionMatches(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 867
    :cond_1
    :goto_2
    return v3

    .line 855
    .end local v6    # "indices":Lkotlin/ranges/IntProgression;
    :cond_2
    invoke-static {p0}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p2, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    invoke-static {p3, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->downTo(II)Lkotlin/ranges/IntProgression;

    move-result-object v6

    goto :goto_0

    .line 858
    .restart local v6    # "indices":Lkotlin/ranges/IntProgression;
    :cond_3
    if-ge v3, v7, :cond_0

    .line 867
    :cond_4
    const/4 v3, -0x1

    goto :goto_2

    .line 858
    :cond_5
    if-eq v3, v7, :cond_4

    add-int/2addr v3, v8

    goto :goto_1

    .line 863
    :cond_6
    invoke-virtual {v6}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v3

    invoke-virtual {v6}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v7

    invoke-virtual {v6}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v8

    if-lez v8, :cond_7

    if-gt v3, v7, :cond_4

    .line 864
    :goto_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object v0, p1

    move-object v2, p0

    move v5, p4

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->regionMatchesImpl(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 863
    if-eq v3, v7, :cond_4

    add-int/2addr v3, v8

    goto :goto_3

    :cond_7
    if-lt v3, v7, :cond_4

    goto :goto_3
.end method

.method static synthetic indexOf$StringsKt__StringsKt$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZILjava/lang/Object;)I
    .locals 6

    .prologue
    and-int/lit8 v0, p6, 0x10

    if-eqz v0, :cond_0

    .line 851
    const/4 v5, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsKt;->indexOf$StringsKt__StringsKt(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I

    move-result v0

    return v0

    :cond_0
    move v5, p5

    goto :goto_0
.end method

.method public static synthetic indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_0

    move p2, v0

    .line 965
    :cond_0
    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_1

    move p3, v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlin/text/StringsKt;->indexOf(Ljava/lang/CharSequence;CIZ)I

    move-result v0

    return v0
.end method

.method public static synthetic indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_0

    move p2, v0

    .line 979
    :cond_0
    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_1

    move p3, v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlin/text/StringsKt;->indexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public static final indexOfAny(Ljava/lang/CharSequence;[CIZ)I
    .locals 12
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "chars"    # [C
    .param p2, "startIndex"    # I
    .param p3, "ignoreCase"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v6, "$receiver"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "chars"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 812
    if-nez p3, :cond_1

    array-length v6, p1

    if-ne v6, v7, :cond_1

    instance-of v6, p0, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 813
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->single([C)C

    move-result v1

    .line 814
    .local v1, "char":C
    check-cast p0, Ljava/lang/String;

    .end local p0    # "$receiver":Ljava/lang/CharSequence;
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 822
    .end local v1    # "char":C
    :cond_0
    :goto_0
    return v4

    .line 817
    .restart local p0    # "$receiver":Ljava/lang/CharSequence;
    :cond_1
    invoke-static {p2, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    invoke-static {p0}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v9

    if-gt v4, v9, :cond_4

    .line 818
    :goto_1
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 819
    .local v2, "charAtIndex":C
    move-object v0, p1

    .line 1395
    .local v0, "$receiver$iv":[C
    array-length v10, v0

    move v6, v8

    :goto_2
    if-ge v6, v10, :cond_3

    aget-char v3, v0, v6

    .local v3, "element$iv":C
    move v5, v3

    .line 819
    .local v5, "it":C
    invoke-static {v5, v2, p3}, Lkotlin/text/CharsKt;->equals(CCZ)Z

    move-result v11

    if-eqz v11, :cond_2

    move v6, v7

    .line 1396
    .end local v3    # "element$iv":C
    .end local v5    # "it":C
    :goto_3
    if-nez v6, :cond_0

    .line 817
    if-eq v4, v9, :cond_4

    add-int/lit8 v4, v4, 0x1

    .local v4, "index":I
    goto :goto_1

    .line 819
    .end local v4    # "index":I
    .restart local v3    # "element$iv":C
    .restart local v5    # "it":C
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v3    # "element$iv":C
    .end local v5    # "it":C
    :cond_3
    move v6, v8

    .line 1396
    goto :goto_3

    .line 822
    .end local v0    # "$receiver$iv":[C
    .end local v2    # "charAtIndex":C
    :cond_4
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static final lastIndexOf(Ljava/lang/CharSequence;CIZ)I
    .locals 2
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "char"    # C
    .param p2, "startIndex"    # I
    .param p3, "ignoreCase"    # Z

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 995
    if-nez p3, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 996
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    invoke-static {p0, v0, p2, p3}, Lkotlin/text/StringsKt;->lastIndexOfAny(Ljava/lang/CharSequence;[CIZ)I

    move-result v0

    .line 995
    .end local p0    # "$receiver":Ljava/lang/CharSequence;
    :goto_0
    return v0

    .line 998
    .restart local p0    # "$receiver":Ljava/lang/CharSequence;
    :cond_1
    check-cast p0, Ljava/lang/String;

    .end local p0    # "$receiver":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    goto :goto_0
.end method

.method public static final lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I
    .locals 6
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "ignoreCase"    # Z

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1010
    if-nez p3, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    move-object v1, p1

    .line 1011
    check-cast v1, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsKt;->indexOf$StringsKt__StringsKt(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I

    move-result v0

    .line 1010
    .end local p0    # "$receiver":Ljava/lang/CharSequence;
    :goto_0
    return v0

    .line 1013
    .restart local p0    # "$receiver":Ljava/lang/CharSequence;
    :cond_1
    check-cast p0, Ljava/lang/String;

    .end local p0    # "$receiver":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static synthetic lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I
    .locals 1

    .prologue
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    .line 994
    invoke-static {p0}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result p2

    :cond_0
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlin/text/StringsKt;->lastIndexOf(Ljava/lang/CharSequence;CIZ)I

    move-result v0

    return v0
.end method

.method public static synthetic lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I
    .locals 1

    .prologue
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    .line 1009
    invoke-static {p0}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result p2

    :cond_0
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlin/text/StringsKt;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public static final lastIndexOfAny(Ljava/lang/CharSequence;[CIZ)I
    .locals 12
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "chars"    # [C
    .param p2, "startIndex"    # I
    .param p3, "ignoreCase"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v6, "$receiver"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "chars"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 835
    if-nez p3, :cond_1

    array-length v6, p1

    if-ne v6, v8, :cond_1

    instance-of v6, p0, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 836
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->single([C)C

    move-result v1

    .line 837
    .local v1, "char":C
    check-cast p0, Ljava/lang/String;

    .end local p0    # "$receiver":Ljava/lang/CharSequence;
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 847
    .end local v1    # "char":C
    :cond_0
    :goto_0
    return v6

    .line 841
    .restart local p0    # "$receiver":Ljava/lang/CharSequence;
    :cond_1
    invoke-static {p0}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-static {p2, v6}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v6

    :goto_1
    if-ltz v6, :cond_4

    .line 842
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 843
    .local v2, "charAtIndex":C
    move-object v0, p1

    .line 1397
    .local v0, "$receiver$iv":[C
    array-length v10, v0

    move v7, v9

    :goto_2
    if-ge v7, v10, :cond_3

    aget-char v3, v0, v7

    .local v3, "element$iv":C
    move v5, v3

    .line 843
    .local v5, "it":C
    invoke-static {v5, v2, p3}, Lkotlin/text/CharsKt;->equals(CCZ)Z

    move-result v11

    if-eqz v11, :cond_2

    move v7, v8

    .line 1398
    .end local v3    # "element$iv":C
    .end local v5    # "it":C
    :goto_3
    if-nez v7, :cond_0

    .line 841
    add-int/lit8 v4, v6, -0x1

    .local v4, "index":I
    move v6, v4

    goto :goto_1

    .line 843
    .end local v4    # "index":I
    .restart local v3    # "element$iv":C
    .restart local v5    # "it":C
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v3    # "element$iv":C
    .end local v5    # "it":C
    :cond_3
    move v7, v9

    .line 1398
    goto :goto_3

    .line 847
    .end local v0    # "$receiver$iv":[C
    .end local v2    # "charAtIndex":C
    :cond_4
    const/4 v6, -0x1

    goto :goto_0
.end method

.method private static final rangesDelimitedBy$StringsKt__StringsKt(Ljava/lang/CharSequence;[Ljava/lang/String;IZI)Lkotlin/sequences/Sequence;
    .locals 3
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "delimiters"    # [Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "ignoreCase"    # Z
    .param p4, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/String;",
            "IZI)",
            "Lkotlin/sequences/Sequence",
            "<",
            "Lkotlin/ranges/IntRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1138
    if-ltz p4, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Limit must be non-negative, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1139
    :cond_1
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1141
    .local v0, "delimitersList":Ljava/util/List;
    new-instance v2, Lkotlin/text/DelimitedRangesSequence;

    new-instance v1, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$4;

    invoke-direct {v1, v0, p3}, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$4;-><init>(Ljava/util/List;Z)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-direct {v2, p0, p2, p4, v1}, Lkotlin/text/DelimitedRangesSequence;-><init>(Ljava/lang/CharSequence;IILkotlin/jvm/functions/Function2;)V

    move-object v1, v2

    check-cast v1, Lkotlin/sequences/Sequence;

    return-object v1
.end method

.method static synthetic rangesDelimitedBy$StringsKt__StringsKt$default(Ljava/lang/CharSequence;[Ljava/lang/String;IZIILjava/lang/Object;)Lkotlin/sequences/Sequence;
    .locals 2

    .prologue
    const/4 v0, 0x0

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    move p2, v0

    .line 1137
    :cond_0
    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 v1, p5, 0x8

    if-eqz v1, :cond_2

    move p4, v0

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/text/StringsKt__StringsKt;->rangesDelimitedBy$StringsKt__StringsKt(Ljava/lang/CharSequence;[Ljava/lang/String;IZI)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public static final regionMatchesImpl(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z
    .locals 4
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "thisOffset"    # I
    .param p2, "other"    # Ljava/lang/CharSequence;
    .param p3, "otherOffset"    # I
    .param p4, "length"    # I
    .param p5, "ignoreCase"    # Z

    .prologue
    const/4 v1, 0x0

    const-string v2, "$receiver"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "other"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 701
    if-ltz p3, :cond_0

    if-ltz p1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p4

    if-gt p1, v2, :cond_0

    .line 702
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p4

    if-le p3, v2, :cond_1

    .line 710
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 706
    :goto_1
    if-ge v0, p4, :cond_2

    .line 707
    add-int v2, p1, v0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int v3, p3, v0

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v2, v3, p5}, Lkotlin/text/CharsKt;->equals(CCZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 706
    add-int/lit8 v0, v0, 0x1

    .local v0, "index":I
    goto :goto_1

    .line 710
    .end local v0    # "index":I
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static final split(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;
    .locals 11
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "delimiters"    # [Ljava/lang/String;
    .param p2, "ignoreCase"    # Z
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1174
    array-length v0, p1

    if-ne v0, v1, :cond_1

    .line 1175
    aget-object v8, p1, v2

    .local v8, "delimiter":Ljava/lang/String;
    move-object v0, v8

    .line 1176
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 1177
    invoke-static {p0, v8, p2, p3}, Lkotlin/text/StringsKt__StringsKt;->split$StringsKt__StringsKt(Ljava/lang/CharSequence;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v9

    .line 1406
    .end local v8    # "delimiter":Ljava/lang/String;
    :goto_1
    return-object v9

    .restart local v8    # "delimiter":Ljava/lang/String;
    :cond_0
    move v0, v2

    .line 1176
    goto :goto_0

    .line 1181
    .end local v8    # "delimiter":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Lkotlin/text/StringsKt__StringsKt;->rangesDelimitedBy$StringsKt__StringsKt$default(Ljava/lang/CharSequence;[Ljava/lang/String;IZIILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->asIterable(Lkotlin/sequences/Sequence;)Ljava/lang/Iterable;

    move-result-object v7

    .line 1403
    .local v7, "$receiver$iv":Ljava/lang/Iterable;
    new-instance v9, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v7, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v9, Ljava/util/Collection;

    .line 1404
    .local v9, "destination$iv$iv":Ljava/util/Collection;
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 1405
    .local v10, "item$iv$iv":Ljava/lang/Object;
    check-cast v10, Lkotlin/ranges/IntRange;

    .line 1181
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    invoke-static {p0, v10}, Lkotlin/text/StringsKt;->substring(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1406
    :cond_2
    check-cast v9, Ljava/util/List;

    goto :goto_1
.end method

.method private static final split$StringsKt__StringsKt(Ljava/lang/CharSequence;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 8
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "delimiter"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v1, 0x1

    .line 1218
    if-ltz p3, :cond_0

    move v6, v1

    :goto_0
    if-nez v6, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Limit must be non-negative, but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    :cond_0
    move v6, v4

    goto :goto_0

    .line 1220
    :cond_1
    const/4 v0, 0x0

    .line 1221
    .local v0, "currentOffset":I
    invoke-static {p0, p1, v0, p2}, Lkotlin/text/StringsKt;->indexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v2

    .line 1222
    .local v2, "nextIndex":I
    if-eq v2, v7, :cond_2

    if-ne p3, v1, :cond_3

    .line 1223
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1237
    :goto_1
    return-object v3

    .line 1226
    :cond_3
    if-lez p3, :cond_5

    .line 1227
    .local v1, "isLimited":Z
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    invoke-static {p3, v5}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v4

    :goto_3
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1228
    .local v3, "result":Ljava/util/ArrayList;
    :cond_4
    invoke-interface {p0, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1229
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int v0, v2, v4

    .line 1232
    if-eqz v1, :cond_7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v5, p3, -0x1

    if-ne v4, v5, :cond_7

    .line 1236
    :goto_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {p0, v0, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    check-cast v3, Ljava/util/List;

    goto :goto_1

    .end local v1    # "isLimited":Z
    .end local v3    # "result":Ljava/util/ArrayList;
    :cond_5
    move v1, v4

    .line 1226
    goto :goto_2

    .restart local v1    # "isLimited":Z
    :cond_6
    move v4, v5

    .line 1227
    goto :goto_3

    .line 1233
    .restart local v3    # "result":Ljava/util/ArrayList;
    :cond_7
    invoke-static {p0, p1, v0, p2}, Lkotlin/text/StringsKt;->indexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v2

    .line 1234
    if-ne v2, v7, :cond_4

    goto :goto_4
.end method

.method public static synthetic split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;
    .locals 2

    .prologue
    const/4 v0, 0x0

    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_0

    move p2, v0

    .line 1173
    :cond_0
    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_1

    move p3, v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlin/text/StringsKt;->split(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final splitToSequence(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lkotlin/sequences/Sequence;
    .locals 7
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "delimiters"    # [Ljava/lang/String;
    .param p2, "ignoreCase"    # Z
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/String;",
            "ZI)",
            "Lkotlin/sequences/Sequence",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1160
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Lkotlin/text/StringsKt__StringsKt;->rangesDelimitedBy$StringsKt__StringsKt$default(Ljava/lang/CharSequence;[Ljava/lang/String;IZIILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v1

    new-instance v0, Lkotlin/text/StringsKt__StringsKt$splitToSequence$1;

    invoke-direct {v0, p0}, Lkotlin/text/StringsKt__StringsKt$splitToSequence$1;-><init>(Ljava/lang/CharSequence;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic splitToSequence$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Lkotlin/sequences/Sequence;
    .locals 2

    .prologue
    const/4 v0, 0x0

    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_0

    move p2, v0

    .line 1159
    :cond_0
    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_1

    move p3, v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlin/text/StringsKt;->splitToSequence(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public static final substring(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;)Ljava/lang/String;
    .locals 2
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "range"    # Lkotlin/ranges/IntRange;

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->getStart()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->getEndInclusive()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "$receiver"    # Ljava/lang/CharSequence;

    .prologue
    const-string v7, "$receiver"

    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    move-object v0, p0

    .line 1361
    .local v0, "$receiver$iv":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 1362
    .local v6, "startIndex$iv":I
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .line 1363
    .local v1, "endIndex$iv":I
    const/4 v5, 0x0

    .line 1365
    .local v5, "startFound$iv":Z
    :goto_0
    if-gt v6, v1, :cond_3

    .line 1366
    if-nez v5, :cond_0

    move v2, v6

    .line 1367
    .local v2, "index$iv":I
    :goto_1
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 129
    .local v4, "p1":C
    invoke-static {v4}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v3

    .line 1369
    .local v3, "match$iv":Z
    if-nez v5, :cond_2

    .line 1370
    if-nez v3, :cond_1

    .line 1371
    const/4 v5, 0x1

    goto :goto_0

    .end local v2    # "index$iv":I
    .end local v3    # "match$iv":Z
    .end local v4    # "p1":C
    :cond_0
    move v2, v1

    .line 1366
    goto :goto_1

    .line 1373
    .restart local v2    # "index$iv":I
    .restart local v3    # "match$iv":Z
    .restart local v4    # "p1":C
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1376
    :cond_2
    if-nez v3, :cond_4

    .line 1383
    .end local v2    # "index$iv":I
    .end local v3    # "match$iv":Z
    .end local v4    # "p1":C
    :cond_3
    add-int/lit8 v7, v1, 0x1

    invoke-interface {v0, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 129
    return-object v7

    .line 1379
    .restart local v2    # "index$iv":I
    .restart local v3    # "match$iv":Z
    .restart local v4    # "p1":C
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method
