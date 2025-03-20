.class public Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode\n+ 2 AtomicFU.kt\nkotlinx/atomicfu/AtomicFU\n*L\n1#1,699:1\n96#1,3:704\n96#1,3:707\n119#2,2:700\n119#2,2:702\n119#2,2:710\n119#2,2:712\n*E\n*S KotlinDebug\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode\n*L\n156#1,3:704\n179#1,3:707\n106#1,2:700\n114#1,2:702\n511#1,2:710\n529#1,2:712\n*E\n"
.end annotation


# static fields
.field static final _next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field static final _prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final _removedRef$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile _next:Ljava/lang/Object;

.field volatile _prev:Ljava/lang/Object;

.field private volatile _removedRef:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_next"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_prev"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_removedRef"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_removedRef$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_next:Ljava/lang/Object;

    .line 72
    iput-object p0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_removedRef:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$finishAdd(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .param p1, "next"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->finishAdd(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    return-void
.end method

.method private final correctPrev(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/OpDescriptor;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .locals 7
    .param p1, "_prev"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .param p2, "op"    # Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    .prologue
    const/4 v4, 0x0

    .line 613
    move-object v2, p1

    .local v2, "prev":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move-object v0, v4

    .line 614
    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 615
    .local v0, "last":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :cond_0
    :goto_0
    iget-object v3, v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_next:Ljava/lang/Object;

    .line 618
    .local v3, "prevNext":Ljava/lang/Object;
    if-ne v3, p2, :cond_2

    move-object v4, v2

    .line 644
    :cond_1
    :goto_1
    return-object v4

    .line 619
    :cond_2
    instance-of v5, v3, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    if-eqz v5, :cond_3

    .line 620
    check-cast v3, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    .end local v3    # "prevNext":Ljava/lang/Object;
    invoke-virtual {v3, v2}, Lkotlinx/coroutines/experimental/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 623
    .restart local v3    # "prevNext":Ljava/lang/Object;
    :cond_3
    instance-of v5, v3, Lkotlinx/coroutines/experimental/internal/Removed;

    if-eqz v5, :cond_5

    .line 624
    if-eqz v0, :cond_4

    .line 625
    invoke-direct {v2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->markPrev()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 626
    sget-object v5, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    check-cast v3, Lkotlinx/coroutines/experimental/internal/Removed;

    .end local v3    # "prevNext":Ljava/lang/Object;
    iget-object v6, v3, Lkotlinx/coroutines/experimental/internal/Removed;->ref:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {v5, v0, v2, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 627
    move-object v2, v0

    move-object v0, v4

    .line 628
    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    goto :goto_0

    .line 630
    .restart local v3    # "prevNext":Ljava/lang/Object;
    :cond_4
    iget-object v5, v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    invoke-static {v5}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->unwrap(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v2

    goto :goto_0

    .line 634
    :cond_5
    iget-object v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    .line 635
    .local v1, "oldPrev":Ljava/lang/Object;
    instance-of v5, v1, Lkotlinx/coroutines/experimental/internal/Removed;

    if-nez v5, :cond_1

    move-object v5, p0

    .line 636
    check-cast v5, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    if-eq v3, v5, :cond_7

    .line 638
    move-object v0, v2

    .line 639
    if-nez v3, :cond_6

    new-instance v4, Lkotlin/TypeCastException;

    const-string v5, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    move-object v2, v3

    check-cast v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 640
    goto :goto_0

    .line 642
    :cond_7
    if-eq v1, v2, :cond_1

    .line 643
    sget-object v5, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 644
    iget-object v5, v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    instance-of v5, v5, Lkotlinx/coroutines/experimental/internal/Removed;

    if-nez v5, :cond_0

    goto :goto_1
.end method

.method private final findHead()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .locals 3

    .prologue
    .line 562
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 563
    .local v0, "cur":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    if-eqz v1, :cond_1

    return-object v0

    .line 565
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->unwrap(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v0

    move-object v1, p0

    .line 566
    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_0

    const-string v2, "Cannot loop to this while looking for list head"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final finishAdd(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V
    .locals 4
    .param p1, "next"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .prologue
    .line 511
    move-object v0, p1

    .line 710
    .local v0, "$receiver$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    .line 512
    .local v1, "nextPrev":Ljava/lang/Object;
    instance-of v2, v1, Lkotlinx/coroutines/experimental/internal/Removed;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_1

    .line 518
    .end local v1    # "nextPrev":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-void

    .line 513
    .restart local v1    # "nextPrev":Ljava/lang/Object;
    :cond_1
    sget-object v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p1, v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 514
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lkotlinx/coroutines/experimental/internal/Removed;

    if-eqz v2, :cond_0

    .line 516
    if-nez v1, :cond_2

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .end local v1    # "nextPrev":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->correctPrev(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/OpDescriptor;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    goto :goto_1

    .line 520
    .restart local v1    # "nextPrev":Ljava/lang/Object;
    :cond_3
    nop

    .line 710
    goto :goto_0
.end method

.method private final finishRemove(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V
    .locals 2
    .param p1, "next"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .prologue
    .line 524
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->helpDelete()V

    .line 525
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    invoke-static {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->unwrap(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->correctPrev(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/OpDescriptor;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 526
    return-void
.end method

.method private final markPrev()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .locals 5

    .prologue
    .line 529
    move-object v0, p0

    .line 712
    .local v0, "$receiver$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    .line 530
    .local v1, "prev":Ljava/lang/Object;
    instance-of v3, v1, Lkotlinx/coroutines/experimental/internal/Removed;

    if-eqz v3, :cond_0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/Removed;

    .end local v1    # "prev":Ljava/lang/Object;
    iget-object v1, v1, Lkotlinx/coroutines/experimental/internal/Removed;->ref:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 535
    :goto_1
    return-object v1

    .restart local v1    # "prev":Ljava/lang/Object;
    :cond_0
    move-object v3, p0

    .line 534
    check-cast v3, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    if-ne v1, v3, :cond_1

    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->findHead()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v3

    :goto_2
    invoke-direct {v3}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->removed()Lkotlinx/coroutines/experimental/internal/Removed;

    move-result-object v2

    .line 535
    .local v2, "removedPrev":Lkotlinx/coroutines/experimental/internal/Removed;
    sget-object v3, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    goto :goto_1

    .line 534
    .end local v2    # "removedPrev":Lkotlinx/coroutines/experimental/internal/Removed;
    :cond_1
    if-nez v1, :cond_2

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    goto :goto_2

    .line 536
    .restart local v2    # "removedPrev":Lkotlinx/coroutines/experimental/internal/Removed;
    :cond_3
    nop

    nop

    .line 712
    goto :goto_0
.end method

.method private final removed()Lkotlinx/coroutines/experimental/internal/Removed;
    .locals 2

    .prologue
    .line 76
    iget-object v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_removedRef:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/experimental/internal/Removed;

    if-eqz v1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Lkotlinx/coroutines/experimental/internal/Removed;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/experimental/internal/Removed;-><init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    .local v0, "it":Lkotlinx/coroutines/experimental/internal/Removed;
    sget-object v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_removedRef$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final addOneIfEmpty(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Z
    .locals 2
    .param p1, "node"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .prologue
    const-string v1, "node"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    sget-object v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    sget-object v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v0

    .local v0, "next":Ljava/lang/Object;
    move-object v1, p0

    .line 129
    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    .line 133
    :goto_0
    return v1

    .line 130
    :cond_1
    sget-object v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-direct {p1, p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->finishAdd(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    .line 133
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final getNext()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 106
    move-object v0, p0

    .line 700
    .local v0, "$receiver$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_next:Ljava/lang/Object;

    .line 107
    .local v1, "next":Ljava/lang/Object;
    instance-of v2, v1, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    if-nez v2, :cond_0

    return-object v1

    .line 108
    :cond_0
    check-cast v1, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    .end local v1    # "next":Ljava/lang/Object;
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/experimental/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    nop

    .line 700
    goto :goto_0
.end method

.method public final getPrev()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    .line 702
    .local v0, "$receiver$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    .line 115
    .local v1, "prev":Ljava/lang/Object;
    instance-of v2, v1, Lkotlinx/coroutines/experimental/internal/Removed;

    if-eqz v2, :cond_1

    .line 117
    :cond_0
    return-object v1

    .line 116
    :cond_1
    if-nez v1, :cond_2

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-object v2, v1

    .line 117
    check-cast v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v3

    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    if-eq v3, v2, :cond_0

    .line 118
    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .end local v1    # "prev":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->correctPrev(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/OpDescriptor;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 119
    nop

    .line 702
    goto :goto_0
.end method

.method public final helpDelete()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 573
    move-object v0, v5

    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 574
    .local v0, "last":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->markPrev()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v3

    .line 575
    .local v3, "prev":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    iget-object v6, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_next:Ljava/lang/Object;

    if-nez v6, :cond_0

    new-instance v5, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Removed"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    check-cast v6, Lkotlinx/coroutines/experimental/internal/Removed;

    iget-object v1, v6, Lkotlinx/coroutines/experimental/internal/Removed;->ref:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 576
    .local v1, "next":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v2

    .line 579
    .local v2, "nextNext":Ljava/lang/Object;
    instance-of v6, v2, Lkotlinx/coroutines/experimental/internal/Removed;

    if-eqz v6, :cond_2

    .line 580
    invoke-direct {v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->markPrev()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 581
    check-cast v2, Lkotlinx/coroutines/experimental/internal/Removed;

    .end local v2    # "nextNext":Ljava/lang/Object;
    iget-object v1, v2, Lkotlinx/coroutines/experimental/internal/Removed;->ref:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 582
    goto :goto_0

    .line 585
    .restart local v2    # "nextNext":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v4

    .line 586
    .local v4, "prevNext":Ljava/lang/Object;
    instance-of v6, v4, Lkotlinx/coroutines/experimental/internal/Removed;

    if-eqz v6, :cond_4

    .line 587
    if-eqz v0, :cond_3

    .line 588
    invoke-direct {v3}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->markPrev()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 589
    sget-object v6, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    check-cast v4, Lkotlinx/coroutines/experimental/internal/Removed;

    .end local v4    # "prevNext":Ljava/lang/Object;
    iget-object v7, v4, Lkotlinx/coroutines/experimental/internal/Removed;->ref:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {v6, v0, v3, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 590
    move-object v3, v0

    move-object v0, v5

    .line 591
    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    goto :goto_0

    .line 593
    .restart local v4    # "prevNext":Ljava/lang/Object;
    :cond_3
    iget-object v6, v3, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    invoke-static {v6}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->unwrap(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v3

    goto :goto_0

    :cond_4
    move-object v6, p0

    .line 597
    check-cast v6, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    if-eq v4, v6, :cond_6

    .line 599
    move-object v0, v3

    .line 600
    if-nez v4, :cond_5

    new-instance v5, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    move-object v3, v4

    check-cast v3, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 601
    if-ne v3, v1, :cond_1

    .line 605
    :goto_1
    return-void

    :cond_6
    sget-object v6, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, v3, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1
.end method

.method public final isRemoved()Z
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/experimental/internal/Removed;

    return v0
.end method

.method public remove()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 243
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v0

    .line 245
    .local v0, "next":Ljava/lang/Object;
    instance-of v2, v0, Lkotlinx/coroutines/experimental/internal/Removed;

    if-eqz v2, :cond_1

    move v2, v3

    .line 251
    .end local v0    # "next":Ljava/lang/Object;
    :goto_0
    return v2

    .restart local v0    # "next":Ljava/lang/Object;
    :cond_1
    move-object v2, p0

    .line 246
    check-cast v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    if-ne v0, v2, :cond_2

    move v2, v3

    goto :goto_0

    .line 247
    :cond_2
    if-nez v0, :cond_3

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-direct {v2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->removed()Lkotlinx/coroutines/experimental/internal/Removed;

    move-result-object v1

    .line 248
    .local v1, "removed":Lkotlinx/coroutines/experimental/internal/Removed;
    sget-object v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .end local v0    # "next":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->finishRemove(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    .line 251
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tryCondAddNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;)I
    .locals 1
    .param p1, "node"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .param p2, "next"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .param p3, "condAdd"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;

    .prologue
    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "condAdd"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    sget-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    sget-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 230
    iput-object p2, p3, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;->oldNext:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 231
    sget-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 233
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p3, p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method
