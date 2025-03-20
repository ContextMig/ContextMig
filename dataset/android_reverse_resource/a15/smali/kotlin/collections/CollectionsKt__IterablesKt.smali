.class Lkotlin/collections/CollectionsKt__IterablesKt;
.super Lkotlin/collections/CollectionsKt__CollectionsKt;
.source "Iterables.kt"


# direct methods
.method public static final collectionSizeOrDefault(Ljava/lang/Iterable;I)I
    .locals 1
    .param p0, "$receiver"    # Ljava/lang/Iterable;
    .param p1, "default"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;I)I"
        }
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    .end local p0    # "$receiver":Ljava/lang/Iterable;
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p1

    .end local p1    # "default":I
    :cond_0
    return p1
.end method

.method public static final convertToSetForSetOperationWith(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 2
    .param p0, "$receiver"    # Ljava/lang/Iterable;
    .param p1, "source"    # Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    .line 56
    .end local p0    # "$receiver":Ljava/lang/Iterable;
    :goto_0
    return-object p0

    .line 58
    .restart local p0    # "$receiver":Ljava/lang/Iterable;
    :cond_0
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 59
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Collection;

    .end local p1    # "source":Ljava/lang/Iterable;
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    check-cast p0, Ljava/util/Collection;

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 61
    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->safeToConvertToSet$CollectionsKt__IterablesKt(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .end local p0    # "$receiver":Ljava/lang/Iterable;
    :goto_1
    move-object p0, v0

    .line 59
    goto :goto_0

    .line 61
    .restart local p0    # "$receiver":Ljava/lang/Iterable;
    :cond_2
    check-cast p0, Ljava/util/Collection;

    move-object v0, p0

    goto :goto_1

    .line 63
    .restart local p1    # "source":Ljava/lang/Iterable;
    :cond_3
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    move-object p0, v0

    goto :goto_0
.end method

.method private static final safeToConvertToSet$CollectionsKt__IterablesKt(Ljava/util/Collection;)Z
    .locals 2
    .param p0, "$receiver"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 52
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
