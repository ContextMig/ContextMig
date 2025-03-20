.class public final Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;
.super Ljava/lang/Object;
.source "ThreadSafeHeap.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;",
        ":",
        "Ljava/lang/Comparable",
        "<-TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThreadSafeHeap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreadSafeHeap.kt\nkotlinx/coroutines/experimental/internal/ThreadSafeHeap\n*L\n1#1,148:1\n*E\n"
.end annotation


# instance fields
.field private a:[Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public volatile size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final realloc()[Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;

    .line 132
    .local v0, "a":[Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    if-nez v0, :cond_0

    const/4 v2, 0x4

    new-array v1, v2, [Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;

    .line 133
    .local v1, "it":[Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    iput-object v1, p0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;

    .line 132
    .end local v0    # "a":[Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    .end local v1    # "it":[Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    :goto_0
    return-object v1

    .line 134
    .restart local v0    # "a":[Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    :cond_0
    iget v3, p0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->size:I

    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    array-length v2, v2

    if-lt v3, v2, :cond_1

    check-cast v0, [Ljava/lang/Object;

    .end local v0    # "a":[Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    iget v2, p0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->size:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, [Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;

    .restart local v1    # "it":[Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    iput-object v1, p0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;

    check-cast v2, [Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;

    move-object v1, v2

    goto :goto_0

    .end local v1    # "it":[Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    .restart local v0    # "a":[Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    :cond_1
    move-object v1, v0

    .line 135
    goto :goto_0
.end method

.method private final siftDownFrom(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 120
    :goto_0
    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v1, v2, 0x1

    .line 121
    .local v1, "j":I
    iget v2, p0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->size:I

    if-lt v1, v2, :cond_1

    .line 124
    :cond_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 123
    .local v0, "a":[Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    :cond_2
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->size:I

    if-ge v2, v3, :cond_5

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    check-cast v2, Ljava/lang/Comparable;

    aget-object v3, v0, v1

    if-nez v3, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 124
    :cond_5
    aget-object v2, v0, p1

    if-nez v2, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    check-cast v2, Ljava/lang/Comparable;

    aget-object v3, v0, v1

    if-nez v3, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    .line 125
    invoke-direct {p0, p1, v1}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->swap(II)V

    .line 126
    move p1, v1

    goto :goto_0
.end method

.method private final siftUpFrom(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 111
    :goto_0
    if-gtz p1, :cond_1

    .line 114
    :cond_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 113
    .local v0, "a":[Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    :cond_2
    add-int/lit8 v2, p1, -0x1

    div-int/lit8 v1, v2, 0x2

    .line 114
    .local v1, "j":I
    aget-object v2, v0, v1

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    check-cast v2, Ljava/lang/Comparable;

    aget-object v3, v0, p1

    if-nez v3, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    .line 115
    invoke-direct {p0, p1, v1}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->swap(II)V

    .line 116
    move p1, v1

    goto :goto_0
.end method

.method private final swap(II)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 141
    .local v0, "a":[Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    :cond_0
    aget-object v1, v0, p2

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 142
    .local v1, "ni":Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    :cond_1
    aget-object v2, v0, p1

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 143
    .local v2, "nj":Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    :cond_2
    aput-object v1, v0, p1

    .line 144
    aput-object v2, v0, p2

    .line 145
    invoke-interface {v1, p1}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;->setIndex(I)V

    .line 146
    invoke-interface {v2, p2}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;->setIndex(I)V

    .line 147
    return-void
.end method


# virtual methods
.method public final addImpl(Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;)V
    .locals 3
    .param p1, "node"    # Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const-string v2, "node"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->realloc()[Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;

    move-result-object v0

    .line 104
    .local v0, "a":[Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    iget v1, p0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->size:I

    .line 105
    .local v1, "i":I
    aput-object p1, v0, v1

    .line 106
    invoke-interface {p1, v1}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;->setIndex(I)V

    .line 107
    invoke-direct {p0, v1}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->siftUpFrom(I)V

    .line 108
    return-void
.end method

.method public final addLastIf(Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;Lkotlin/jvm/functions/Function0;)Z
    .locals 1
    .param p1, "node"    # Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    .param p2, "cond"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/jvm/functions/Function0",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cond"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    monitor-enter p0

    nop

    .line 61
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->addImpl(Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    const/4 v0, 0x1

    .line 61
    :goto_0
    nop

    .line 60
    monitor-exit p0

    .line 66
    return v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final firstImpl()Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;

    if-eqz v0, :cond_0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final peek()Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 39
    monitor-enter p0

    nop

    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->firstImpl()Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final remove(Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;)Z
    .locals 1
    .param p1, "node"    # Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    monitor-enter p0

    nop

    .line 69
    :try_start_0
    invoke-interface {p1}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;->getIndex()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 69
    :goto_0
    nop

    .line 68
    monitor-exit p0

    .line 75
    return v0

    .line 72
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->removeAtImpl(I)Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    const/4 v0, 0x1

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final removeAtImpl(I)Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 82
    iget v3, p0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->size:I

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_1

    const-string v4, "Check failed."

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 84
    .local v0, "a":[Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    :cond_2
    iget v3, p0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->size:I

    .line 85
    iget v3, p0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->size:I

    if-ge p1, v3, :cond_5

    .line 86
    iget v3, p0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->size:I

    invoke-direct {p0, p1, v3}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->swap(II)V

    .line 87
    add-int/lit8 v3, p1, -0x1

    div-int/lit8 v1, v3, 0x2

    .line 88
    .local v1, "j":I
    if-lez p1, :cond_7

    aget-object v3, v0, p1

    if-nez v3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    check-cast v3, Ljava/lang/Comparable;

    aget-object v4, v0, v1

    if-nez v4, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_7

    .line 89
    invoke-direct {p0, p1, v1}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->swap(II)V

    .line 90
    invoke-direct {p0, v1}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->siftUpFrom(I)V

    .line 93
    .end local v1    # "j":I
    :cond_5
    :goto_1
    iget v3, p0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->size:I

    aget-object v2, v0, v3

    if-nez v2, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 96
    .local v2, "result":Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    :cond_6
    const/4 v3, -0x1

    invoke-interface {v2, v3}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;->setIndex(I)V

    .line 97
    iget v4, p0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->size:I

    const/4 v3, 0x0

    check-cast v3, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;

    aput-object v3, v0, v4

    .line 98
    return-object v2

    .line 92
    .end local v2    # "result":Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    .restart local v1    # "j":I
    :cond_7
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->siftDownFrom(I)V

    goto :goto_1
.end method

.method public final removeFirstOrNull()Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 41
    monitor-enter p0

    nop

    .line 42
    :try_start_0
    iget v0, p0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->size:I

    if-lez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->removeAtImpl(I)Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 42
    :goto_0
    nop

    .line 41
    monitor-exit p0

    .line 46
    return-object v0

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
