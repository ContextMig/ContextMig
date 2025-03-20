.class public final Lkotlin/jvm/internal/CollectionToArray;
.super Ljava/lang/Object;
.source "CollectionToArray.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollectionToArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionToArray.kt\nkotlin/jvm/internal/CollectionToArray\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,82:1\n57#1,23:83\n57#1,23:106\n25#2,2:129\n*E\n*S KotlinDebug\n*F\n+ 1 CollectionToArray.kt\nkotlin/jvm/internal/CollectionToArray\n*L\n19#1,23:83\n31#1,23:106\n14#1,2:129\n*E\n"
.end annotation


# static fields
.field private static final EMPTY:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    nop

    .line 129
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lkotlin/jvm/internal/CollectionToArray;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method public static final toArray(Ljava/util/Collection;)[Ljava/lang/Object;
    .locals 9
    .param p0, "collection"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const-string v8, "collection"

    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    nop

    .line 83
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v7

    .line 84
    .local v7, "size$iv":I
    if-nez v7, :cond_1

    .line 21
    sget-object v5, Lkotlin/jvm/internal/CollectionToArray;->EMPTY:[Ljava/lang/Object;

    .line 24
    :cond_0
    :goto_0
    return-object v5

    .line 85
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 86
    .local v2, "iter$iv":Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 21
    sget-object v5, Lkotlin/jvm/internal/CollectionToArray;->EMPTY:[Ljava/lang/Object;

    goto :goto_0

    .line 87
    :cond_2
    move v6, v7

    .line 22
    .local v6, "size":I
    new-array v5, v6, [Ljava/lang/Object;

    .line 88
    .local v5, "result$iv":[Ljava/lang/Object;
    const/4 v0, 0x0

    .line 90
    .local v0, "i$iv":I
    :goto_1
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i$iv":I
    .local v1, "i$iv":I
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v5, v0

    .line 92
    array-length v8, v5

    if-lt v1, v8, :cond_6

    .line 93
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 97
    mul-int/lit8 v8, v1, 0x3

    add-int/lit8 v8, v8, 0x1

    ushr-int/lit8 v3, v8, 0x1

    .line 98
    .local v3, "newSize$iv":I
    if-gt v3, v1, :cond_4

    .line 99
    const v8, 0x7ffffffd

    if-lt v1, v8, :cond_3

    new-instance v8, Ljava/lang/OutOfMemoryError;

    invoke-direct {v8}, Ljava/lang/OutOfMemoryError;-><init>()V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    .line 100
    :cond_3
    const v3, 0x7ffffffd

    .line 102
    :cond_4
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "result$iv":[Ljava/lang/Object;
    const-string v8, "Arrays.copyOf(result, newSize)"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v3    # "newSize$iv":I
    .restart local v5    # "result$iv":[Ljava/lang/Object;
    :cond_5
    move v0, v1

    .line 105
    .end local v1    # "i$iv":I
    .restart local v0    # "i$iv":I
    goto :goto_1

    .line 104
    .end local v0    # "i$iv":I
    .restart local v1    # "i$iv":I
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5

    move-object v4, v5

    .line 23
    .local v4, "result":[Ljava/lang/Object;
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "result$iv":[Ljava/lang/Object;
    const-string v8, "Arrays.copyOf(result, size)"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 11
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "a"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;[",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const-string v8, "collection"

    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    if-nez p1, :cond_0

    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    .line 31
    :cond_0
    nop

    .line 106
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v7

    .line 107
    .local v7, "size$iv":I
    if-nez v7, :cond_2

    .line 34
    array-length v8, p1

    if-lez v8, :cond_1

    aput-object v9, p1, v10

    .line 128
    .end local p1    # "a":[Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object p1

    .line 108
    .restart local p1    # "a":[Ljava/lang/Object;
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 109
    .local v2, "iter$iv":Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 34
    array-length v8, p1

    if-lez v8, :cond_1

    aput-object v9, p1, v10

    goto :goto_0

    .line 110
    :cond_3
    move v6, v7

    .line 38
    .local v6, "size":I
    array-length v8, p1

    if-gt v6, v8, :cond_4

    move-object v5, p1

    .line 111
    .local v5, "result$iv":[Ljava/lang/Object;
    :goto_1
    const/4 v0, 0x0

    .line 113
    .local v0, "i$iv":I
    :goto_2
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i$iv":I
    .local v1, "i$iv":I
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v5, v0

    .line 115
    array-length v8, v5

    if-lt v1, v8, :cond_a

    .line 116
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6

    move-object p1, v5

    goto :goto_0

    .line 38
    .end local v1    # "i$iv":I
    .end local v5    # "result$iv":[Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5

    new-instance v8, Lkotlin/TypeCastException;

    const-string v9, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-direct {v8, v9}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_5
    check-cast v8, [Ljava/lang/Object;

    move-object v5, v8

    goto :goto_1

    .line 120
    .restart local v1    # "i$iv":I
    .restart local v5    # "result$iv":[Ljava/lang/Object;
    :cond_6
    mul-int/lit8 v8, v1, 0x3

    add-int/lit8 v8, v8, 0x1

    ushr-int/lit8 v3, v8, 0x1

    .line 121
    .local v3, "newSize$iv":I
    if-gt v3, v1, :cond_8

    .line 122
    const v8, 0x7ffffffd

    if-lt v1, v8, :cond_7

    new-instance v8, Ljava/lang/OutOfMemoryError;

    invoke-direct {v8}, Ljava/lang/OutOfMemoryError;-><init>()V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    .line 123
    :cond_7
    const v3, 0x7ffffffd

    .line 125
    :cond_8
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "result$iv":[Ljava/lang/Object;
    const-string v8, "Arrays.copyOf(result, newSize)"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v3    # "newSize$iv":I
    .restart local v5    # "result$iv":[Ljava/lang/Object;
    :cond_9
    move v0, v1

    .line 128
    .end local v1    # "i$iv":I
    .restart local v0    # "i$iv":I
    goto :goto_2

    .line 127
    .end local v0    # "i$iv":I
    .restart local v1    # "i$iv":I
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_9

    move-object v4, v5

    .line 42
    .local v4, "result":[Ljava/lang/Object;
    if-ne v4, p1, :cond_b

    .line 43
    aput-object v9, p1, v1

    goto :goto_0

    .line 46
    :cond_b
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "a":[Ljava/lang/Object;
    const-string v8, "Arrays.copyOf(result, size)"

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
