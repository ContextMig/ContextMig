.class public final Lorg/mozilla/focus/ext/StringKt;
.super Ljava/lang/Object;
.source "String.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 String.kt\norg/mozilla/focus/ext/StringKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,78:1\n10940#2,2:79\n*E\n*S KotlinDebug\n*F\n+ 1 String.kt\norg/mozilla/focus/ext/StringKt\n*L\n69#1,2:79\n*E\n"
.end annotation


# direct methods
.method public static final beautifyUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "$receiver"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 18
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v12

    :goto_0
    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/mozilla/focus/utils/UrlUtils;->isHttpOrHttps(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 58
    .end local p0    # "$receiver":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p0

    .restart local p0    # "$receiver":Ljava/lang/String;
    :cond_1
    move v0, v2

    .line 18
    goto :goto_0

    .line 22
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .local v6, "beautifulUrl":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 28
    .local v11, "uri":Landroid/net/Uri;
    const-string v0, "uri"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lorg/mozilla/focus/ext/UriKt;->truncatedHost(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .local v9, "truncatedHost":Ljava/lang/String;
    move-object v0, v9

    .line 29
    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_3
    move v0, v12

    :goto_2
    if-nez v0, :cond_0

    .line 33
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {v11}, Lorg/mozilla/focus/ext/UriKt;->truncatedPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .local v10, "truncatedPath":Ljava/lang/String;
    move-object v0, v10

    .line 38
    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_c

    :cond_4
    move v0, v12

    :goto_3
    if-nez v0, :cond_5

    .line 39
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_5
    invoke-virtual {v11}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v8

    .local v8, "query":Ljava/lang/String;
    move-object v0, v8

    .line 45
    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_d

    :cond_6
    move v0, v12

    :goto_4
    if-nez v0, :cond_7

    .line 46
    const-string v0, "?"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v0, "query"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v8

    check-cast v0, Ljava/lang/CharSequence;

    new-array v1, v12, [Ljava/lang/String;

    const-string v3, "&"

    aput-object v3, v1, v2

    const/4 v4, 0x6

    const/4 v5, 0x0

    move v3, v2

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_7
    invoke-virtual {v11}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v7

    .local v7, "fragment":Ljava/lang/String;
    move-object v0, v7

    .line 53
    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    move v2, v12

    :cond_9
    if-nez v2, :cond_a

    .line 54
    const-string v0, "#"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "$receiver":Ljava/lang/String;
    const-string v0, "beautifulUrl.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v7    # "fragment":Ljava/lang/String;
    .end local v8    # "query":Ljava/lang/String;
    .end local v10    # "truncatedPath":Ljava/lang/String;
    .restart local p0    # "$receiver":Ljava/lang/String;
    :cond_b
    move v0, v2

    .line 29
    goto :goto_2

    .restart local v10    # "truncatedPath":Ljava/lang/String;
    :cond_c
    move v0, v2

    .line 38
    goto :goto_3

    .restart local v8    # "query":Ljava/lang/String;
    :cond_d
    move v0, v2

    .line 45
    goto :goto_4
.end method
