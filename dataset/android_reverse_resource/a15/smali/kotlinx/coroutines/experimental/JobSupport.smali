.class public Lkotlinx/coroutines/experimental/JobSupport;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/Job;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/experimental/JobSupport$Incomplete;,
        Lkotlinx/coroutines/experimental/JobSupport$Finishing;,
        Lkotlinx/coroutines/experimental/JobSupport$NodeList;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJob.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Job.kt\nkotlinx/coroutines/experimental/JobSupport\n+ 2 AtomicFU.kt\nkotlinx/atomicfu/AtomicFU\n+ 3 LockFreeLinkedList.kt\nkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead\n+ 4 LockFreeLinkedList.kt\nkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode\n+ 5 CancellableContinuation.kt\nkotlinx/coroutines/experimental/CancellableContinuationKt\n*L\n1#1,1501:1\n719#1,2:1510\n721#1,8:1515\n729#1,2:1526\n719#1,2:1528\n721#1,8:1533\n729#1,2:1544\n629#1,2:1546\n629#1,2:1548\n629#1,2:1559\n629#1,2:1570\n629#1,2:1572\n629#1,2:1574\n629#1,2:1576\n629#1,2:1578\n629#1,2:1580\n629#1,2:1591\n119#2,2:1502\n676#3,6:1504\n676#3,3:1512\n679#3,3:1523\n676#3,3:1530\n679#3,3:1541\n156#4:1550\n96#4,3:1551\n157#4,5:1554\n167#5,9:1561\n167#5,9:1582\n*E\n*S KotlinDebug\n*F\n+ 1 Job.kt\nkotlinx/coroutines/experimental/JobSupport\n*L\n733#1,2:1510\n733#1,8:1515\n733#1,2:1526\n736#1,2:1528\n736#1,8:1533\n736#1,2:1544\n739#1,2:1546\n826#1,2:1548\n897#1,2:1559\n913#1,2:1570\n936#1,2:1572\n972#1,2:1574\n980#1,2:1576\n1053#1,2:1578\n1116#1,2:1580\n1328#1,2:1591\n619#1,2:1502\n720#1,6:1504\n733#1,3:1512\n733#1,3:1523\n736#1,3:1530\n736#1,3:1541\n870#1:1550\n870#1,3:1551\n870#1,5:1554\n903#1,9:1561\n1310#1,9:1582\n*E\n"
.end annotation


# static fields
.field private static final _state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _state:Ljava/lang/Object;

.field private volatile parentHandle:Lkotlinx/coroutines/experimental/DisposableHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/experimental/JobSupport;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/experimental/JobSupport;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    if-eqz p1, :cond_0

    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->access$getEmptyActive$p()Lkotlinx/coroutines/experimental/Empty;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lkotlinx/coroutines/experimental/JobSupport;->_state:Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->access$getEmptyNew$p()Lkotlinx/coroutines/experimental/Empty;

    move-result-object v0

    goto :goto_0
.end method

.method private final addLastAtomic(Ljava/lang/Object;Lkotlinx/coroutines/experimental/JobSupport$NodeList;Lkotlinx/coroutines/experimental/JobNode;)Z
    .locals 6
    .param p1, "expect"    # Ljava/lang/Object;
    .param p2, "list"    # Lkotlinx/coroutines/experimental/JobSupport$NodeList;
    .param p3, "node"    # Lkotlinx/coroutines/experimental/JobNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlinx/coroutines/experimental/JobSupport$NodeList;",
            "Lkotlinx/coroutines/experimental/JobNode",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 870
    move-object v2, p2

    .line 1550
    .local v2, "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move-object v3, v2

    .line 1551
    .local v3, "this_$iv$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    new-instance v0, Lkotlinx/coroutines/experimental/JobSupport$addLastAtomic$$inlined$addLastIf$1;

    move-object v4, p3

    check-cast v4, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-object v5, p3

    check-cast v5, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-direct {v0, v4, v5, p0, p1}, Lkotlinx/coroutines/experimental/JobSupport$addLastAtomic$$inlined$addLastIf$1;-><init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/JobSupport;Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;

    .line 1553
    nop

    .line 1554
    .local v0, "condAdd$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
    :goto_0
    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getPrev()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v4, Lkotlin/TypeCastException;

    const-string v5, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .local v1, "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move-object v4, p3

    .line 1556
    check-cast v4, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {v1, v4, v2, v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->tryCondAddNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 1557
    :pswitch_0
    const/4 v4, 0x1

    .line 870
    :goto_1
    return v4

    .line 1558
    :pswitch_1
    const/4 v4, 0x0

    goto :goto_1

    .line 1556
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final cancelChildrenInternal(Lkotlinx/coroutines/experimental/Child;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "$receiver"    # Lkotlinx/coroutines/experimental/Child;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 1093
    :goto_0
    iget-object v1, p1, Lkotlinx/coroutines/experimental/Child;->childJob:Lkotlinx/coroutines/experimental/Job;

    new-instance v0, Lkotlinx/coroutines/experimental/JobCancellationException;

    const-string v2, "Child job was cancelled because of parent failure"

    iget-object v3, p1, Lkotlinx/coroutines/experimental/Child;->childJob:Lkotlinx/coroutines/experimental/Job;

    invoke-direct {v0, v2, p2, v3}, Lkotlinx/coroutines/experimental/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/experimental/Job;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/experimental/Job;->cancel(Ljava/lang/Throwable;)Z

    .line 1094
    check-cast p1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .end local p1    # "$receiver":Lkotlinx/coroutines/experimental/Child;
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/JobSupport;->nextChild(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/experimental/Child;

    move-result-object p1

    if-eqz p1, :cond_0

    .restart local p1    # "$receiver":Lkotlinx/coroutines/experimental/Child;
    goto :goto_0

    .line 1095
    .end local p1    # "$receiver":Lkotlinx/coroutines/experimental/Child;
    :cond_0
    return-void
.end method

.method private final coerceProposedUpdate(Lkotlinx/coroutines/experimental/JobSupport$Incomplete;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "expect"    # Lkotlinx/coroutines/experimental/JobSupport$Incomplete;
    .param p2, "proposedUpdate"    # Ljava/lang/Object;

    .prologue
    .line 663
    instance-of v0, p1, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    iget-object v0, v0, Lkotlinx/coroutines/experimental/JobSupport$Finishing;->cancelled:Lkotlinx/coroutines/experimental/Cancelled;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    iget-object v0, v0, Lkotlinx/coroutines/experimental/JobSupport$Finishing;->cancelled:Lkotlinx/coroutines/experimental/Cancelled;

    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/experimental/JobSupport;->isCorrespondinglyCancelled(Lkotlinx/coroutines/experimental/Cancelled;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 664
    check-cast p1, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    .end local p1    # "expect":Lkotlinx/coroutines/experimental/JobSupport$Incomplete;
    iget-object v0, p1, Lkotlinx/coroutines/experimental/JobSupport$Finishing;->cancelled:Lkotlinx/coroutines/experimental/Cancelled;

    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/experimental/JobSupport;->createCancelled(Lkotlinx/coroutines/experimental/Cancelled;Ljava/lang/Object;)Lkotlinx/coroutines/experimental/Cancelled;

    move-result-object p2

    .line 663
    .end local p2    # "proposedUpdate":Ljava/lang/Object;
    :cond_0
    return-object p2
.end method

.method private final createCancelled(Lkotlinx/coroutines/experimental/Cancelled;Ljava/lang/Object;)Lkotlinx/coroutines/experimental/Cancelled;
    .locals 3
    .param p1, "cancelled"    # Lkotlinx/coroutines/experimental/Cancelled;
    .param p2, "proposedUpdate"    # Ljava/lang/Object;

    .prologue
    .line 674
    instance-of v2, p2, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    if-nez v2, :cond_1

    .line 678
    .end local p0    # "this":Lkotlinx/coroutines/experimental/JobSupport;
    .end local p1    # "cancelled":Lkotlinx/coroutines/experimental/Cancelled;
    .end local p2    # "proposedUpdate":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p1

    .line 675
    .restart local p0    # "this":Lkotlinx/coroutines/experimental/JobSupport;
    .restart local p1    # "cancelled":Lkotlinx/coroutines/experimental/Cancelled;
    .restart local p2    # "proposedUpdate":Ljava/lang/Object;
    :cond_1
    check-cast p2, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    .end local p2    # "proposedUpdate":Ljava/lang/Object;
    invoke-virtual {p2}, Lkotlinx/coroutines/experimental/CompletedExceptionally;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .line 676
    .local v0, "exception":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/Cancelled;->getException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 677
    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/Cancelled;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    .local v1, "it":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 678
    .end local v1    # "it":Ljava/lang/Throwable;
    :cond_2
    new-instance p1, Lkotlinx/coroutines/experimental/Cancelled;

    .end local p1    # "cancelled":Lkotlinx/coroutines/experimental/Cancelled;
    check-cast p0, Lkotlinx/coroutines/experimental/Job;

    .end local p0    # "this":Lkotlinx/coroutines/experimental/JobSupport;
    invoke-direct {p1, p0, v0}, Lkotlinx/coroutines/experimental/Cancelled;-><init>(Lkotlinx/coroutines/experimental/Job;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private final firstChild(Lkotlinx/coroutines/experimental/JobSupport$Incomplete;)Lkotlinx/coroutines/experimental/Child;
    .locals 2
    .param p1, "state"    # Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    .prologue
    const/4 v1, 0x0

    .line 1101
    instance-of v0, p1, Lkotlinx/coroutines/experimental/Child;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_0
    check-cast v0, Lkotlinx/coroutines/experimental/Child;

    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {p1}, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;->getList()Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/experimental/JobSupport;->nextChild(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/experimental/Child;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method private final getExceptionOrNull(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2
    .param p1, "$receiver"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1098
    instance-of v0, p1, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    check-cast v0, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/CompletedExceptionally;->getException()Ljava/lang/Throwable;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private final isCancelling(Lkotlinx/coroutines/experimental/JobSupport$Incomplete;)Z
    .locals 1
    .param p1, "$receiver"    # Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    .prologue
    .line 1234
    instance-of v0, p1, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    .end local p1    # "$receiver":Lkotlinx/coroutines/experimental/JobSupport$Incomplete;
    iget-object v0, p1, Lkotlinx/coroutines/experimental/JobSupport$Finishing;->cancelled:Lkotlinx/coroutines/experimental/Cancelled;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final isCorrespondinglyCancelled(Lkotlinx/coroutines/experimental/Cancelled;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "cancelled"    # Lkotlinx/coroutines/experimental/Cancelled;
    .param p2, "proposedUpdate"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 667
    instance-of v0, p2, Lkotlinx/coroutines/experimental/Cancelled;

    if-nez v0, :cond_0

    .line 669
    .end local p2    # "proposedUpdate":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local p2    # "proposedUpdate":Ljava/lang/Object;
    :cond_0
    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/experimental/Cancelled;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/Cancelled;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/Cancelled;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    check-cast p2, Lkotlinx/coroutines/experimental/Cancelled;

    .end local p2    # "proposedUpdate":Ljava/lang/Object;
    invoke-virtual {p2}, Lkotlinx/coroutines/experimental/Cancelled;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/experimental/JobCancellationException;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/Cancelled;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private final makeCancelled(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 972
    move-object v1, p0

    .line 1574
    .local v1, "this_$iv":Lkotlinx/coroutines/experimental/JobSupport;
    :goto_0
    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 973
    .local v0, "state":Ljava/lang/Object;
    instance-of v2, v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 974
    .end local v0    # "state":Ljava/lang/Object;
    :goto_1
    return v2

    .restart local v0    # "state":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    .end local v0    # "state":Ljava/lang/Object;
    invoke-direct {p0, v0, p1}, Lkotlinx/coroutines/experimental/JobSupport;->updateStateCancelled(Lkotlinx/coroutines/experimental/JobSupport$Incomplete;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    .line 975
    :cond_1
    nop

    .line 1574
    goto :goto_0
.end method

.method private final makeCancelling(Ljava/lang/Throwable;)Z
    .locals 6
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 980
    move-object v1, p0

    .line 1576
    .local v1, "this_$iv":Lkotlinx/coroutines/experimental/JobSupport;
    :goto_0
    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 982
    .local v0, "state":Ljava/lang/Object;
    instance-of v2, v0, Lkotlinx/coroutines/experimental/Empty;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 983
    check-cast v2, Lkotlinx/coroutines/experimental/Empty;

    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/Empty;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 984
    check-cast v0, Lkotlinx/coroutines/experimental/Empty;

    .end local v0    # "state":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lkotlinx/coroutines/experimental/JobSupport;->promoteEmptyToNodeList(Lkotlinx/coroutines/experimental/Empty;)V

    .line 1011
    :cond_0
    :goto_1
    nop

    .line 1576
    goto :goto_0

    .line 988
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_1
    check-cast v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    .end local v0    # "state":Ljava/lang/Object;
    invoke-direct {p0, v0, p1}, Lkotlinx/coroutines/experimental/JobSupport;->updateStateCancelled(Lkotlinx/coroutines/experimental/JobSupport$Incomplete;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 1008
    :goto_2
    return v2

    .line 991
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_2
    instance-of v2, v0, Lkotlinx/coroutines/experimental/JobNode;

    if-eqz v2, :cond_3

    .line 992
    check-cast v0, Lkotlinx/coroutines/experimental/JobNode;

    .end local v0    # "state":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lkotlinx/coroutines/experimental/JobSupport;->promoteSingleToNodeList(Lkotlinx/coroutines/experimental/JobNode;)V

    goto :goto_1

    .line 994
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_3
    instance-of v2, v0, Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    if-eqz v2, :cond_5

    move-object v2, v0

    .line 995
    check-cast v2, Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->isActive()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v0

    .line 996
    check-cast v2, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    check-cast v0, Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    .end local v0    # "state":Ljava/lang/Object;
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->getList()Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    move-result-object v5

    invoke-direct {p0, v2, v5, p1}, Lkotlinx/coroutines/experimental/JobSupport;->tryMakeCancelling(Lkotlinx/coroutines/experimental/JobSupport$Incomplete;Lkotlinx/coroutines/experimental/JobSupport$NodeList;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_2

    .line 999
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_4
    check-cast v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    .end local v0    # "state":Ljava/lang/Object;
    invoke-direct {p0, v0, p1}, Lkotlinx/coroutines/experimental/JobSupport;->updateStateCancelled(Lkotlinx/coroutines/experimental/JobSupport$Incomplete;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 1000
    goto :goto_2

    .line 1003
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_5
    instance-of v2, v0, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    if-eqz v2, :cond_7

    move-object v2, v0

    .line 1004
    check-cast v2, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    iget-object v2, v2, Lkotlinx/coroutines/experimental/JobSupport$Finishing;->cancelled:Lkotlinx/coroutines/experimental/Cancelled;

    if-eqz v2, :cond_6

    move v2, v4

    goto :goto_2

    :cond_6
    move-object v2, v0

    .line 1005
    check-cast v2, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    check-cast v0, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    .end local v0    # "state":Ljava/lang/Object;
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/JobSupport$Finishing;->getList()Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    move-result-object v5

    invoke-direct {p0, v2, v5, p1}, Lkotlinx/coroutines/experimental/JobSupport;->tryMakeCancelling(Lkotlinx/coroutines/experimental/JobSupport$Incomplete;Lkotlinx/coroutines/experimental/JobSupport$NodeList;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_2

    .restart local v0    # "state":Ljava/lang/Object;
    :cond_7
    move v2, v4

    .line 1008
    goto :goto_2
.end method

.method private final makeCompletingInternal(Ljava/lang/Object;I)I
    .locals 10
    .param p1, "proposedUpdate"    # Ljava/lang/Object;
    .param p2, "mode"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1053
    move-object v5, p0

    .line 1578
    .local v5, "this_$iv":Lkotlinx/coroutines/experimental/JobSupport;
    :goto_0
    invoke-virtual {v5}, Lkotlinx/coroutines/experimental/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v4

    .line 1054
    .local v4, "state":Ljava/lang/Object;
    instance-of v6, v4, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-nez v6, :cond_0

    move v6, v8

    .line 1087
    .end local v4    # "state":Ljava/lang/Object;
    :goto_1
    return v6

    .line 1056
    .restart local v4    # "state":Ljava/lang/Object;
    :cond_0
    instance-of v6, v4, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    if-eqz v6, :cond_1

    move-object v6, v4

    check-cast v6, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    iget-boolean v6, v6, Lkotlinx/coroutines/experimental/JobSupport$Finishing;->completing:Z

    if-eqz v6, :cond_1

    move v6, v8

    .line 1057
    goto :goto_1

    :cond_1
    move-object v6, v4

    .line 1058
    check-cast v6, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    invoke-direct {p0, v6}, Lkotlinx/coroutines/experimental/JobSupport;->firstChild(Lkotlinx/coroutines/experimental/JobSupport$Incomplete;)Lkotlinx/coroutines/experimental/Child;

    move-result-object v1

    if-eqz v1, :cond_4

    .local v1, "child":Lkotlinx/coroutines/experimental/Child;
    :goto_2
    move-object v6, v4

    .line 1064
    check-cast v6, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    invoke-interface {v6}, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;->getList()Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1077
    .local v3, "list":Lkotlinx/coroutines/experimental/JobSupport$NodeList;
    instance-of v6, p1, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    if-eqz v6, :cond_2

    .line 1078
    if-eqz v1, :cond_2

    move-object v6, p1

    check-cast v6, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    invoke-virtual {v6}, Lkotlinx/coroutines/experimental/CompletedExceptionally;->getException()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lkotlinx/coroutines/experimental/JobSupport;->cancelChildrenInternal(Lkotlinx/coroutines/experimental/Child;Ljava/lang/Throwable;)V

    .line 1080
    :cond_2
    instance-of v6, v4, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    if-nez v6, :cond_e

    move-object v6, v7

    :goto_3
    check-cast v6, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    if-eqz v6, :cond_a

    iget-object v0, v6, Lkotlinx/coroutines/experimental/JobSupport$Finishing;->cancelled:Lkotlinx/coroutines/experimental/Cancelled;

    if-eqz v0, :cond_a

    .line 1081
    .local v0, "cancelled":Lkotlinx/coroutines/experimental/Cancelled;
    :goto_4
    new-instance v2, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    invoke-direct {v2, v3, v0, v9}, Lkotlinx/coroutines/experimental/JobSupport$Finishing;-><init>(Lkotlinx/coroutines/experimental/JobSupport$NodeList;Lkotlinx/coroutines/experimental/Cancelled;Z)V

    .line 1082
    .local v2, "completing":Lkotlinx/coroutines/experimental/JobSupport$Finishing;
    sget-object v6, Lkotlinx/coroutines/experimental/JobSupport;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, p0, v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1083
    instance-of v6, v4, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    if-nez v6, :cond_3

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/JobSupport;->onFinishingInternal$kotlinx_coroutines_core(Ljava/lang/Object;)V

    .line 1084
    :cond_3
    if-eqz v1, :cond_b

    invoke-direct {p0, v1, p1}, Lkotlinx/coroutines/experimental/JobSupport;->tryWaitForChild(Lkotlinx/coroutines/experimental/Child;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1085
    const/4 v6, 0x2

    goto :goto_1

    .line 1059
    .end local v0    # "cancelled":Lkotlinx/coroutines/experimental/Cancelled;
    .end local v1    # "child":Lkotlinx/coroutines/experimental/Child;
    .end local v2    # "completing":Lkotlinx/coroutines/experimental/JobSupport$Finishing;
    .end local v3    # "list":Lkotlinx/coroutines/experimental/JobSupport$NodeList;
    :cond_4
    instance-of v6, v4, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    if-nez v6, :cond_5

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/JobSupport;->hasOnFinishingHandler$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v7

    .line 1062
    check-cast v6, Lkotlinx/coroutines/experimental/Child;

    move-object v1, v6

    goto :goto_2

    .line 1061
    :cond_5
    check-cast v4, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    .end local v4    # "state":Ljava/lang/Object;
    invoke-virtual {p0, v4, p1, p2}, Lkotlinx/coroutines/experimental/JobSupport;->updateState$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/JobSupport$Incomplete;Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v9

    goto :goto_1

    .line 1066
    .restart local v1    # "child":Lkotlinx/coroutines/experimental/Child;
    .restart local v4    # "state":Ljava/lang/Object;
    :cond_6
    instance-of v6, v4, Lkotlinx/coroutines/experimental/Empty;

    if-eqz v6, :cond_8

    .line 1067
    check-cast v4, Lkotlinx/coroutines/experimental/Empty;

    .end local v4    # "state":Ljava/lang/Object;
    invoke-direct {p0, v4}, Lkotlinx/coroutines/experimental/JobSupport;->promoteEmptyToNodeList(Lkotlinx/coroutines/experimental/Empty;)V

    .line 1089
    .end local v1    # "child":Lkotlinx/coroutines/experimental/Child;
    :cond_7
    :goto_5
    nop

    .line 1578
    goto/16 :goto_0

    .line 1070
    .restart local v1    # "child":Lkotlinx/coroutines/experimental/Child;
    .restart local v4    # "state":Ljava/lang/Object;
    :cond_8
    instance-of v6, v4, Lkotlinx/coroutines/experimental/JobNode;

    if-eqz v6, :cond_9

    .line 1071
    check-cast v4, Lkotlinx/coroutines/experimental/JobNode;

    .end local v4    # "state":Ljava/lang/Object;
    invoke-direct {p0, v4}, Lkotlinx/coroutines/experimental/JobSupport;->promoteSingleToNodeList(Lkotlinx/coroutines/experimental/JobNode;)V

    goto :goto_5

    .line 1074
    .restart local v4    # "state":Ljava/lang/Object;
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected state with an empty list: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .line 1080
    .restart local v3    # "list":Lkotlinx/coroutines/experimental/JobSupport$NodeList;
    :cond_a
    instance-of v6, p1, Lkotlinx/coroutines/experimental/Cancelled;

    if-nez v6, :cond_d

    move-object v6, v7

    :goto_6
    check-cast v6, Lkotlinx/coroutines/experimental/Cancelled;

    move-object v0, v6

    goto :goto_4

    .line 1086
    .restart local v0    # "cancelled":Lkotlinx/coroutines/experimental/Cancelled;
    .restart local v2    # "completing":Lkotlinx/coroutines/experimental/JobSupport$Finishing;
    :cond_b
    check-cast v2, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    .end local v2    # "completing":Lkotlinx/coroutines/experimental/JobSupport$Finishing;
    invoke-virtual {p0, v2, p1, v8}, Lkotlinx/coroutines/experimental/JobSupport;->updateState$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/JobSupport$Incomplete;Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_c

    move v6, v9

    .line 1087
    goto/16 :goto_1

    .line 1089
    :cond_c
    nop

    goto :goto_5

    .end local v0    # "cancelled":Lkotlinx/coroutines/experimental/Cancelled;
    :cond_d
    move-object v6, p1

    goto :goto_6

    :cond_e
    move-object v6, v4

    goto/16 :goto_3
.end method

.method private final makeCompletingOnCancel(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 1025
    new-instance v1, Lkotlinx/coroutines/experimental/Cancelled;

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/experimental/Job;

    invoke-direct {v1, v0, p1}, Lkotlinx/coroutines/experimental/Cancelled;-><init>(Lkotlinx/coroutines/experimental/Job;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/experimental/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final makeNode(Lkotlin/jvm/functions/Function1;Z)Lkotlinx/coroutines/experimental/JobNode;
    .locals 6
    .param p1, "handler"    # Lkotlin/jvm/functions/Function1;
    .param p2, "onCancelling"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;Z)",
            "Lkotlinx/coroutines/experimental/JobNode",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 860
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->getOnCancelMode$kotlinx_coroutines_core()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v3

    .line 861
    .local v0, "hasCancellingState":Z
    :goto_0
    if-eqz p2, :cond_5

    if-eqz v0, :cond_5

    .line 862
    instance-of v2, p1, Lkotlinx/coroutines/experimental/JobCancellationNode;

    if-nez v2, :cond_b

    :goto_1
    check-cast v1, Lkotlinx/coroutines/experimental/JobCancellationNode;

    if-eqz v1, :cond_4

    .local v1, "it":Lkotlinx/coroutines/experimental/JobCancellationNode;
    iget-object v5, v1, Lkotlinx/coroutines/experimental/JobCancellationNode;->job:Lkotlinx/coroutines/experimental/Job;

    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/experimental/JobSupport;

    if-ne v5, v2, :cond_1

    :goto_2
    if-nez v3, :cond_2

    const-string v3, "Failed requirement."

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .end local v0    # "hasCancellingState":Z
    .end local v1    # "it":Lkotlinx/coroutines/experimental/JobCancellationNode;
    :cond_0
    move v0, v4

    .line 860
    goto :goto_0

    .restart local v0    # "hasCancellingState":Z
    .restart local v1    # "it":Lkotlinx/coroutines/experimental/JobCancellationNode;
    :cond_1
    move v3, v4

    .line 862
    goto :goto_2

    :cond_2
    if-eqz v1, :cond_4

    check-cast v1, Lkotlinx/coroutines/experimental/JobNode;

    .line 861
    .end local v1    # "it":Lkotlinx/coroutines/experimental/JobCancellationNode;
    .end local p0    # "this":Lkotlinx/coroutines/experimental/JobSupport;
    :cond_3
    :goto_3
    return-object v1

    .line 863
    .restart local p0    # "this":Lkotlinx/coroutines/experimental/JobSupport;
    :cond_4
    new-instance v2, Lkotlinx/coroutines/experimental/InvokeOnCancellation;

    check-cast p0, Lkotlinx/coroutines/experimental/Job;

    .end local p0    # "this":Lkotlinx/coroutines/experimental/JobSupport;
    invoke-direct {v2, p0, p1}, Lkotlinx/coroutines/experimental/InvokeOnCancellation;-><init>(Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lkotlinx/coroutines/experimental/JobNode;

    move-object v1, v2

    goto :goto_3

    .line 865
    .restart local p0    # "this":Lkotlinx/coroutines/experimental/JobSupport;
    :cond_5
    instance-of v2, p1, Lkotlinx/coroutines/experimental/JobNode;

    if-nez v2, :cond_a

    :goto_4
    check-cast v1, Lkotlinx/coroutines/experimental/JobNode;

    if-eqz v1, :cond_9

    .local v1, "it":Lkotlinx/coroutines/experimental/JobNode;
    iget-object v5, v1, Lkotlinx/coroutines/experimental/JobNode;->job:Lkotlinx/coroutines/experimental/Job;

    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/experimental/JobSupport;

    if-ne v5, v2, :cond_7

    if-eqz v0, :cond_6

    instance-of v2, v1, Lkotlinx/coroutines/experimental/JobCancellationNode;

    if-nez v2, :cond_7

    :cond_6
    move v2, v3

    :goto_5
    if-nez v2, :cond_8

    const-string v3, "Failed requirement."

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    :cond_7
    move v2, v4

    goto :goto_5

    :cond_8
    if-nez v1, :cond_3

    .line 866
    .end local v1    # "it":Lkotlinx/coroutines/experimental/JobNode;
    :cond_9
    new-instance v2, Lkotlinx/coroutines/experimental/InvokeOnCompletion;

    check-cast p0, Lkotlinx/coroutines/experimental/Job;

    .end local p0    # "this":Lkotlinx/coroutines/experimental/JobSupport;
    invoke-direct {v2, p0, p1}, Lkotlinx/coroutines/experimental/InvokeOnCompletion;-><init>(Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lkotlinx/coroutines/experimental/JobNode;

    move-object v1, v2

    goto :goto_3

    .restart local p0    # "this":Lkotlinx/coroutines/experimental/JobSupport;
    :cond_a
    move-object v1, p1

    goto :goto_4

    :cond_b
    move-object v1, p1

    goto :goto_1
.end method

.method private final nextChild(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/experimental/Child;
    .locals 2
    .param p1, "$receiver"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .prologue
    .line 1129
    move-object v0, p1

    .line 1130
    .local v0, "cur":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getPrev()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->unwrap(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v0

    goto :goto_0

    .line 1131
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->unwrap(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v0

    .line 1133
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1134
    instance-of v1, v0, Lkotlinx/coroutines/experimental/Child;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/experimental/Child;

    .line 1135
    .end local v0    # "cur":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :goto_1
    return-object v0

    .restart local v0    # "cur":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private final notifyCancellation(Lkotlinx/coroutines/experimental/JobSupport$NodeList;Ljava/lang/Throwable;)V
    .locals 10
    .param p1, "list"    # Lkotlinx/coroutines/experimental/JobSupport$NodeList;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 736
    move-object v6, p0

    .line 1528
    .local v6, "this_$iv":Lkotlinx/coroutines/experimental/JobSupport;
    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Throwable;

    .line 1529
    .local v3, "exception$iv":Ljava/lang/Throwable;
    move-object v7, p1

    .line 1530
    .local v7, "this_$iv$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;
    invoke-virtual {v7}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;->getNext()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v8, Lkotlin/TypeCastException;

    const-string v9, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v8, v9}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .local v1, "cur$iv$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :goto_0
    move-object v8, v7

    .line 1531
    check-cast v8, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_4

    .line 1532
    instance-of v8, v1, Lkotlinx/coroutines/experimental/JobCancellationNode;

    if-eqz v8, :cond_2

    move-object v5, v1

    check-cast v5, Lkotlinx/coroutines/experimental/JobNode;

    .line 1533
    .local v5, "node$iv":Lkotlinx/coroutines/experimental/JobNode;
    nop

    .line 1534
    :try_start_0
    invoke-virtual {v5, p2}, Lkotlinx/coroutines/experimental/JobNode;->invoke(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1539
    :cond_1
    :goto_1
    nop

    nop

    .line 1541
    .end local v5    # "node$iv":Lkotlinx/coroutines/experimental/JobNode;
    :cond_2
    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->unwrap(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v1

    .line 1531
    goto :goto_0

    .line 1535
    .restart local v5    # "node$iv":Lkotlinx/coroutines/experimental/JobNode;
    :catch_0
    move-exception v2

    .line 1536
    .local v2, "ex$iv":Ljava/lang/Throwable;
    if-eqz v3, :cond_3

    move-object v0, v3

    .local v0, "$receiver$iv":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    if-nez v3, :cond_1

    .end local v0    # "$receiver$iv":Ljava/lang/Throwable;
    :cond_3
    move-object v0, v6

    check-cast v0, Lkotlinx/coroutines/experimental/JobSupport;

    .line 1537
    .local v0, "$receiver$iv":Lkotlinx/coroutines/experimental/JobSupport;
    new-instance v3, Lkotlinx/coroutines/experimental/CompletionHandlerException;

    .end local v3    # "exception$iv":Ljava/lang/Throwable;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in completion handler "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8, v2}, Lkotlinx/coroutines/experimental/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v3, Ljava/lang/Throwable;

    .line 1538
    .restart local v3    # "exception$iv":Ljava/lang/Throwable;
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 1543
    .end local v0    # "$receiver$iv":Lkotlinx/coroutines/experimental/JobSupport;
    .end local v2    # "ex$iv":Ljava/lang/Throwable;
    .end local v5    # "node$iv":Lkotlinx/coroutines/experimental/JobNode;
    :cond_4
    nop

    .line 1544
    if-eqz v3, :cond_5

    move-object v4, v3

    .local v4, "it$iv":Ljava/lang/Throwable;
    invoke-virtual {v6, v4}, Lkotlinx/coroutines/experimental/JobSupport;->handleException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V

    .line 1545
    .end local v4    # "it$iv":Ljava/lang/Throwable;
    :cond_5
    nop

    .line 736
    return-void
.end method

.method private final notifyCompletion(Lkotlinx/coroutines/experimental/JobSupport$NodeList;Ljava/lang/Throwable;)V
    .locals 10
    .param p1, "$receiver"    # Lkotlinx/coroutines/experimental/JobSupport$NodeList;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 733
    move-object v6, p0

    .line 1510
    .local v6, "this_$iv":Lkotlinx/coroutines/experimental/JobSupport;
    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Throwable;

    .line 1511
    .local v3, "exception$iv":Ljava/lang/Throwable;
    move-object v7, p1

    .line 1512
    .local v7, "this_$iv$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;
    invoke-virtual {v7}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;->getNext()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v8, Lkotlin/TypeCastException;

    const-string v9, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v8, v9}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .local v1, "cur$iv$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :goto_0
    move-object v8, v7

    .line 1513
    check-cast v8, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_4

    .line 1514
    instance-of v8, v1, Lkotlinx/coroutines/experimental/JobNode;

    if-eqz v8, :cond_2

    move-object v5, v1

    check-cast v5, Lkotlinx/coroutines/experimental/JobNode;

    .line 1515
    .local v5, "node$iv":Lkotlinx/coroutines/experimental/JobNode;
    nop

    .line 1516
    :try_start_0
    invoke-virtual {v5, p2}, Lkotlinx/coroutines/experimental/JobNode;->invoke(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1521
    :cond_1
    :goto_1
    nop

    nop

    .line 1523
    .end local v5    # "node$iv":Lkotlinx/coroutines/experimental/JobNode;
    :cond_2
    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->unwrap(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v1

    .line 1513
    goto :goto_0

    .line 1517
    .restart local v5    # "node$iv":Lkotlinx/coroutines/experimental/JobNode;
    :catch_0
    move-exception v2

    .line 1518
    .local v2, "ex$iv":Ljava/lang/Throwable;
    if-eqz v3, :cond_3

    move-object v0, v3

    .local v0, "$receiver$iv":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    if-nez v3, :cond_1

    .end local v0    # "$receiver$iv":Ljava/lang/Throwable;
    :cond_3
    move-object v0, v6

    check-cast v0, Lkotlinx/coroutines/experimental/JobSupport;

    .line 1519
    .local v0, "$receiver$iv":Lkotlinx/coroutines/experimental/JobSupport;
    new-instance v3, Lkotlinx/coroutines/experimental/CompletionHandlerException;

    .end local v3    # "exception$iv":Ljava/lang/Throwable;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in completion handler "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8, v2}, Lkotlinx/coroutines/experimental/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v3, Ljava/lang/Throwable;

    .line 1520
    .restart local v3    # "exception$iv":Ljava/lang/Throwable;
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 1525
    .end local v0    # "$receiver$iv":Lkotlinx/coroutines/experimental/JobSupport;
    .end local v2    # "ex$iv":Ljava/lang/Throwable;
    .end local v5    # "node$iv":Lkotlinx/coroutines/experimental/JobNode;
    :cond_4
    nop

    .line 1526
    if-eqz v3, :cond_5

    move-object v4, v3

    .local v4, "it$iv":Ljava/lang/Throwable;
    invoke-virtual {v6, v4}, Lkotlinx/coroutines/experimental/JobSupport;->handleException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V

    .line 1527
    .end local v4    # "it$iv":Ljava/lang/Throwable;
    :cond_5
    nop

    .line 733
    return-void
.end method

.method private final promoteEmptyToNodeList(Lkotlinx/coroutines/experimental/Empty;)V
    .locals 3
    .param p1, "state"    # Lkotlinx/coroutines/experimental/Empty;

    .prologue
    .line 874
    sget-object v0, Lkotlinx/coroutines/experimental/JobSupport;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v1, Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/Empty;->isActive()Z

    move-result v2

    invoke-direct {v1, v2}, Lkotlinx/coroutines/experimental/JobSupport$NodeList;-><init>(Z)V

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 875
    return-void
.end method

.method private final promoteSingleToNodeList(Lkotlinx/coroutines/experimental/JobNode;)V
    .locals 3
    .param p1, "state"    # Lkotlinx/coroutines/experimental/JobNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/JobNode",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 879
    new-instance v1, Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lkotlinx/coroutines/experimental/JobSupport$NodeList;-><init>(Z)V

    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/experimental/JobNode;->addOneIfEmpty(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Z

    .line 881
    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/JobNode;->getNext()Ljava/lang/Object;

    move-result-object v0

    .line 883
    .local v0, "list":Ljava/lang/Object;
    sget-object v1, Lkotlinx/coroutines/experimental/JobSupport;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 884
    return-void
.end method

.method private final startInternal(Ljava/lang/Object;)I
    .locals 4
    .param p1, "state"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 752
    .line 753
    instance-of v1, p1, Lkotlinx/coroutines/experimental/Empty;

    if-eqz v1, :cond_3

    move-object v1, p1

    .line 754
    check-cast v1, Lkotlinx/coroutines/experimental/Empty;

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/Empty;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 764
    .end local p1    # "state":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 755
    .restart local p1    # "state":Ljava/lang/Object;
    :cond_1
    sget-object v1, Lkotlinx/coroutines/experimental/JobSupport;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->access$getEmptyActive$p()Lkotlinx/coroutines/experimental/Empty;

    move-result-object v3

    invoke-virtual {v1, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    .line 756
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->onStartInternal$kotlinx_coroutines_core()V

    move v0, v2

    .line 757
    goto :goto_0

    .line 759
    :cond_3
    instance-of v1, p1, Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    if-eqz v1, :cond_0

    .line 760
    check-cast p1, Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    .end local p1    # "state":Ljava/lang/Object;
    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->tryMakeActive()I

    move-result v0

    .line 761
    .local v0, "result":I
    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->onStartInternal$kotlinx_coroutines_core()V

    .line 762
    :cond_4
    nop

    .line 760
    goto :goto_0
.end method

.method private final stateString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1203
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v1

    .line 1205
    .local v1, "state":Ljava/lang/Object;
    instance-of v2, v1, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "$receiver":Ljava/lang/StringBuilder;
    move-object v2, v1

    .line 1206
    check-cast v2, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    iget-object v2, v2, Lkotlinx/coroutines/experimental/JobSupport$Finishing;->cancelled:Lkotlinx/coroutines/experimental/Cancelled;

    if-eqz v2, :cond_0

    const-string v2, "Cancelling"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    :cond_0
    check-cast v1, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    .end local v1    # "state":Ljava/lang/Object;
    iget-boolean v2, v1, Lkotlinx/coroutines/experimental/JobSupport$Finishing;->completing:Z

    if-eqz v2, :cond_1

    const-string v2, "Completing"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1208
    :cond_1
    nop

    .line 1205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1204
    .end local v0    # "$receiver":Ljava/lang/StringBuilder;
    :goto_0
    return-object v2

    .line 1209
    .restart local v1    # "state":Ljava/lang/Object;
    :cond_2
    instance-of v2, v1, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-eqz v2, :cond_4

    check-cast v1, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    .end local v1    # "state":Ljava/lang/Object;
    invoke-interface {v1}, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;->isActive()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Active"

    goto :goto_0

    :cond_3
    const-string v2, "New"

    goto :goto_0

    .line 1210
    .restart local v1    # "state":Ljava/lang/Object;
    :cond_4
    instance-of v2, v1, Lkotlinx/coroutines/experimental/Cancelled;

    if-eqz v2, :cond_5

    const-string v2, "Cancelled"

    goto :goto_0

    .line 1211
    :cond_5
    instance-of v2, v1, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    if-eqz v2, :cond_6

    const-string v2, "CompletedExceptionally"

    goto :goto_0

    .line 1212
    :cond_6
    const-string v2, "Completed"

    goto :goto_0
.end method

.method private final toCancellationException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .locals 1
    .param p1, "$receiver"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 788
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    .end local p0    # "this":Lkotlinx/coroutines/experimental/JobSupport;
    :goto_1
    return-object v0

    .restart local p0    # "this":Lkotlinx/coroutines/experimental/JobSupport;
    :cond_0
    new-instance v0, Lkotlinx/coroutines/experimental/JobCancellationException;

    check-cast p0, Lkotlinx/coroutines/experimental/Job;

    .end local p0    # "this":Lkotlinx/coroutines/experimental/JobSupport;
    invoke-direct {v0, p2, p1, p0}, Lkotlinx/coroutines/experimental/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/experimental/Job;)V

    check-cast v0, Ljava/util/concurrent/CancellationException;

    goto :goto_1

    .restart local p0    # "this":Lkotlinx/coroutines/experimental/JobSupport;
    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private final tryMakeCancelling(Lkotlinx/coroutines/experimental/JobSupport$Incomplete;Lkotlinx/coroutines/experimental/JobSupport$NodeList;Ljava/lang/Throwable;)Z
    .locals 4
    .param p1, "expect"    # Lkotlinx/coroutines/experimental/JobSupport$Incomplete;
    .param p2, "list"    # Lkotlinx/coroutines/experimental/JobSupport$NodeList;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    const/4 v2, 0x0

    .line 1016
    new-instance v0, Lkotlinx/coroutines/experimental/Cancelled;

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/experimental/Job;

    invoke-direct {v0, v1, p3}, Lkotlinx/coroutines/experimental/Cancelled;-><init>(Lkotlinx/coroutines/experimental/Job;Ljava/lang/Throwable;)V

    .line 1017
    .local v0, "cancelled":Lkotlinx/coroutines/experimental/Cancelled;
    sget-object v1, Lkotlinx/coroutines/experimental/JobSupport;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v3, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    invoke-direct {v3, p2, v0, v2}, Lkotlinx/coroutines/experimental/JobSupport$Finishing;-><init>(Lkotlinx/coroutines/experimental/JobSupport$NodeList;Lkotlinx/coroutines/experimental/Cancelled;Z)V

    invoke-virtual {v1, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 1021
    .end local v0    # "cancelled":Lkotlinx/coroutines/experimental/Cancelled;
    :goto_0
    return v1

    .line 1018
    .restart local v0    # "cancelled":Lkotlinx/coroutines/experimental/Cancelled;
    :cond_0
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/JobSupport;->onFinishingInternal$kotlinx_coroutines_core(Ljava/lang/Object;)V

    .line 1019
    check-cast v0, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    .end local v0    # "cancelled":Lkotlinx/coroutines/experimental/Cancelled;
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/JobSupport;->onCancellationInternal$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/CompletedExceptionally;)V

    .line 1020
    invoke-direct {p0, p2, p3}, Lkotlinx/coroutines/experimental/JobSupport;->notifyCancellation(Lkotlinx/coroutines/experimental/JobSupport$NodeList;Ljava/lang/Throwable;)V

    .line 1021
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private final tryWaitForChild(Lkotlinx/coroutines/experimental/Child;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "child"    # Lkotlinx/coroutines/experimental/Child;
    .param p2, "proposedUpdate"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1105
    :goto_0
    iget-object v0, p1, Lkotlinx/coroutines/experimental/Child;->childJob:Lkotlinx/coroutines/experimental/Job;

    .line 1106
    new-instance v3, Lkotlinx/coroutines/experimental/ChildCompletion;

    invoke-direct {v3, p0, p1, p2}, Lkotlinx/coroutines/experimental/ChildCompletion;-><init>(Lkotlinx/coroutines/experimental/JobSupport;Lkotlinx/coroutines/experimental/Child;Ljava/lang/Object;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    move v2, v1

    .line 1105
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/experimental/Job$DefaultImpls;->invokeOnCompletion$default(Lkotlinx/coroutines/experimental/Job;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/DisposableHandle;

    move-result-object v6

    .line 1107
    .local v6, "handle":Lkotlinx/coroutines/experimental/DisposableHandle;
    sget-object v0, Lkotlinx/coroutines/experimental/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/experimental/NonDisposableHandle;

    if-eq v6, v0, :cond_0

    .line 1108
    .end local p1    # "child":Lkotlinx/coroutines/experimental/Child;
    :goto_1
    return v4

    .restart local p1    # "child":Lkotlinx/coroutines/experimental/Child;
    :cond_0
    check-cast p1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .end local p1    # "child":Lkotlinx/coroutines/experimental/Child;
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/JobSupport;->nextChild(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/experimental/Child;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1109
    .local v7, "nextChild":Lkotlinx/coroutines/experimental/Child;
    move-object p1, v7

    .restart local p1    # "child":Lkotlinx/coroutines/experimental/Child;
    goto :goto_0

    .end local v7    # "nextChild":Lkotlinx/coroutines/experimental/Child;
    .end local p1    # "child":Lkotlinx/coroutines/experimental/Child;
    :cond_1
    move v4, v1

    .line 1108
    goto :goto_1
.end method

.method private final updateStateCancelled(Lkotlinx/coroutines/experimental/JobSupport$Incomplete;Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "state"    # Lkotlinx/coroutines/experimental/JobSupport$Incomplete;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 968
    new-instance v1, Lkotlinx/coroutines/experimental/Cancelled;

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/experimental/Job;

    invoke-direct {v1, v0, p2}, Lkotlinx/coroutines/experimental/Cancelled;-><init>(Lkotlinx/coroutines/experimental/Job;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lkotlinx/coroutines/experimental/JobSupport;->updateState$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/JobSupport$Incomplete;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final attachChild(Lkotlinx/coroutines/experimental/Job;)Lkotlinx/coroutines/experimental/DisposableHandle;
    .locals 6
    .param p1, "child"    # Lkotlinx/coroutines/experimental/Job;

    .prologue
    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1151
    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lkotlinx/coroutines/experimental/Child;

    invoke-direct {v3, p0, p1}, Lkotlinx/coroutines/experimental/Child;-><init>(Lkotlinx/coroutines/experimental/JobSupport;Lkotlinx/coroutines/experimental/Job;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/experimental/Job$DefaultImpls;->invokeOnCompletion$default(Lkotlinx/coroutines/experimental/Job;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/DisposableHandle;

    move-result-object v0

    return-object v0
.end method

.method public final awaitInternal$kotlinx_coroutines_core(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1297
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 1299
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-nez v1, :cond_1

    .line 1301
    instance-of v1, v0, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    if-eqz v1, :cond_2

    check-cast v0, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    .end local v0    # "state":Ljava/lang/Object;
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/CompletedExceptionally;->getException()Ljava/lang/Throwable;

    move-result-object v1

    throw v1

    .line 1305
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/experimental/JobSupport;->startInternal(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1307
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/JobSupport;->awaitSuspend(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "state":Ljava/lang/Object;
    :cond_2
    return-object v0
.end method

.method final awaitSuspend(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1310
    nop

    .line 1582
    const/4 v3, 0x0

    .line 1585
    .local v3, "holdCancellability$iv":Z
    invoke-static {p1}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->normalizeContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v2

    .line 1586
    .local v2, "cont$iv":Lkotlin/coroutines/experimental/Continuation;
    new-instance v0, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/experimental/Continuation;I)V

    .line 1587
    .local v0, "cancellable$iv":Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->initCancellability()V

    move-object v1, v0

    .line 1588
    check-cast v1, Lkotlinx/coroutines/experimental/CancellableContinuation;

    .local v1, "cont":Lkotlinx/coroutines/experimental/CancellableContinuation;
    move-object v4, v1

    .line 1311
    check-cast v4, Lkotlinx/coroutines/experimental/Job;

    new-instance v5, Lkotlinx/coroutines/experimental/JobSupport$awaitSuspend$$inlined$suspendCancellableCoroutine$lambda$1;

    invoke-direct {v5, v1, p0}, Lkotlinx/coroutines/experimental/JobSupport$awaitSuspend$$inlined$suspendCancellableCoroutine$lambda$1;-><init>(Lkotlinx/coroutines/experimental/CancellableContinuation;Lkotlinx/coroutines/experimental/JobSupport;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v5}, Lkotlinx/coroutines/experimental/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/experimental/DisposableHandle;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlinx/coroutines/experimental/JobKt;->disposeOnCompletion(Lkotlinx/coroutines/experimental/Job;Lkotlinx/coroutines/experimental/DisposableHandle;)Lkotlinx/coroutines/experimental/DisposableHandle;

    .line 1319
    nop

    .line 1589
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v4

    nop

    .line 1585
    nop

    .line 1590
    nop

    .line 1319
    return-object v4
.end method

.method public cancel(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 958
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->getOnCancelMode$kotlinx_coroutines_core()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid onCancelMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->getOnCancelMode$kotlinx_coroutines_core()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 959
    :pswitch_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/JobSupport;->makeCancelled(Ljava/lang/Throwable;)Z

    move-result v0

    .line 958
    :goto_0
    return v0

    .line 960
    :pswitch_1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/JobSupport;->makeCancelling(Ljava/lang/Throwable;)Z

    move-result v0

    goto :goto_0

    .line 961
    :pswitch_2
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/JobSupport;->makeCompletingOnCancel(Ljava/lang/Throwable;)Z

    move-result v0

    goto :goto_0

    .line 958
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final completeUpdateState$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/JobSupport$Incomplete;Ljava/lang/Object;I)V
    .locals 7
    .param p1, "expect"    # Lkotlinx/coroutines/experimental/JobSupport$Incomplete;
    .param p2, "update"    # Ljava/lang/Object;
    .param p3, "mode"    # I

    .prologue
    const/4 v4, 0x0

    const-string v5, "expect"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 701
    instance-of v5, p2, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    if-nez v5, :cond_4

    move-object v3, v4

    :goto_0
    check-cast v3, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    .line 703
    .local v3, "exceptionally":Lkotlinx/coroutines/experimental/CompletedExceptionally;
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/JobSupport;->isCancelling(Lkotlinx/coroutines/experimental/JobSupport$Incomplete;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v3}, Lkotlinx/coroutines/experimental/JobSupport;->onCancellationInternal$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/CompletedExceptionally;)V

    .line 704
    :cond_0
    invoke-virtual {p0, p2, p3}, Lkotlinx/coroutines/experimental/JobSupport;->onCompletionInternal$kotlinx_coroutines_core(Ljava/lang/Object;I)V

    .line 706
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/CompletedExceptionally;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 707
    .local v1, "cause":Ljava/lang/Throwable;
    :goto_1
    instance-of v4, p1, Lkotlinx/coroutines/experimental/JobNode;

    if-eqz v4, :cond_3

    .line 708
    nop

    .line 709
    :try_start_0
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/experimental/JobNode;

    move-object v4, v0

    invoke-virtual {v4, v1}, Lkotlinx/coroutines/experimental/JobNode;->invoke(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :cond_1
    :goto_2
    return-void

    .end local v1    # "cause":Ljava/lang/Throwable;
    :cond_2
    move-object v1, v4

    .line 706
    goto :goto_1

    .line 710
    .restart local v1    # "cause":Ljava/lang/Throwable;
    :catch_0
    move-exception v2

    .line 711
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v4, Lkotlinx/coroutines/experimental/CompletionHandlerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in completion handler "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lkotlinx/coroutines/experimental/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {p0, v4}, Lkotlinx/coroutines/experimental/JobSupport;->handleException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 714
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_3
    invoke-interface {p1}, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;->getList()Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v4, v1}, Lkotlinx/coroutines/experimental/JobSupport;->notifyCompletion(Lkotlinx/coroutines/experimental/JobSupport$NodeList;Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v1    # "cause":Ljava/lang/Throwable;
    .end local v3    # "exceptionally":Lkotlinx/coroutines/experimental/CompletedExceptionally;
    :cond_4
    move-object v3, p2

    goto :goto_0
.end method

.method public final continueCompleting$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/Child;Ljava/lang/Object;)V
    .locals 6
    .param p1, "lastChild"    # Lkotlinx/coroutines/experimental/Child;
    .param p2, "proposedUpdate"    # Ljava/lang/Object;

    .prologue
    const-string v3, "lastChild"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    move-object v1, p0

    .line 1580
    .local v1, "this_$iv":Lkotlinx/coroutines/experimental/JobSupport;
    :goto_0
    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 1117
    .local v0, "state":Ljava/lang/Object;
    instance-of v3, v0, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    if-nez v3, :cond_0

    .line 1118
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Job "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is found in expected state while completing with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2}, Lkotlinx/coroutines/experimental/JobSupport;->getExceptionOrNull(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    :cond_0
    move-object v3, p1

    .line 1120
    check-cast v3, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-direct {p0, v3}, Lkotlinx/coroutines/experimental/JobSupport;->nextChild(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/experimental/Child;

    move-result-object v2

    .line 1122
    .local v2, "waitChild":Lkotlinx/coroutines/experimental/Child;
    if-eqz v2, :cond_2

    invoke-direct {p0, v2, p2}, Lkotlinx/coroutines/experimental/JobSupport;->tryWaitForChild(Lkotlinx/coroutines/experimental/Child;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1124
    .end local v0    # "state":Ljava/lang/Object;
    :cond_1
    return-void

    .restart local v0    # "state":Ljava/lang/Object;
    :cond_2
    check-cast v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    .end local v0    # "state":Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, p2, v3}, Lkotlinx/coroutines/experimental/JobSupport;->updateState$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/JobSupport$Incomplete;Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1125
    nop

    nop

    .line 1580
    goto :goto_0
.end method

.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "initial"    # Ljava/lang/Object;
    .param p2, "operation"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2",
            "<-TR;-",
            "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
            "+TR;>;)TR;"
        }
    .end annotation

    .prologue
    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/experimental/Job$DefaultImpls;->fold(Lkotlinx/coroutines/experimental/Job;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;
    .locals 1
    .param p1, "key"    # Lkotlin/coroutines/experimental/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
            ">(",
            "Lkotlin/coroutines/experimental/CoroutineContext$Key",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    invoke-static {p0, p1}, Lkotlinx/coroutines/experimental/Job$DefaultImpls;->get(Lkotlinx/coroutines/experimental/Job;Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v0

    return-object v0
.end method

.method public final getCancellationException()Ljava/util/concurrent/CancellationException;
    .locals 4

    .prologue
    .line 775
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 776
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    iget-object v1, v1, Lkotlinx/coroutines/experimental/JobSupport$Finishing;->cancelled:Lkotlinx/coroutines/experimental/Cancelled;

    if-eqz v1, :cond_0

    .line 778
    check-cast v0, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    .end local v0    # "state":Ljava/lang/Object;
    iget-object v1, v0, Lkotlinx/coroutines/experimental/JobSupport$Finishing;->cancelled:Lkotlinx/coroutines/experimental/Cancelled;

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/Cancelled;->getException()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "Job is being cancelled"

    invoke-direct {p0, v1, v2}, Lkotlinx/coroutines/experimental/JobSupport;->toCancellationException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v1

    .line 776
    .end local p0    # "this":Lkotlinx/coroutines/experimental/JobSupport;
    :goto_0
    return-object v1

    .line 779
    .restart local v0    # "state":Ljava/lang/Object;
    .restart local p0    # "this":Lkotlinx/coroutines/experimental/JobSupport;
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-eqz v1, :cond_1

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job was not completed or cancelled yet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 781
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    if-eqz v1, :cond_2

    .line 782
    check-cast v0, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    .end local v0    # "state":Ljava/lang/Object;
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/CompletedExceptionally;->getException()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "Job has failed"

    invoke-direct {p0, v1, v2}, Lkotlinx/coroutines/experimental/JobSupport;->toCancellationException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v1

    goto :goto_0

    .line 783
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_2
    new-instance v1, Lkotlinx/coroutines/experimental/JobCancellationException;

    const-string v2, "Job has completed normally"

    const/4 v3, 0x0

    check-cast p0, Lkotlinx/coroutines/experimental/Job;

    .end local p0    # "this":Lkotlinx/coroutines/experimental/JobSupport;
    invoke-direct {v1, v2, v3, p0}, Lkotlinx/coroutines/experimental/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/experimental/Job;)V

    check-cast v1, Ljava/util/concurrent/CancellationException;

    goto :goto_0
.end method

.method public final getKey()Lkotlin/coroutines/experimental/CoroutineContext$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/experimental/CoroutineContext$Key",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 523
    sget-object v0, Lkotlinx/coroutines/experimental/Job;->Key:Lkotlinx/coroutines/experimental/Job$Key;

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    return-object v0
.end method

.method public getOnCancelMode$kotlinx_coroutines_core()I
    .locals 1

    .prologue
    .line 956
    const/4 v0, 0x1

    return v0
.end method

.method public final getState$kotlinx_coroutines_core()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 619
    move-object v0, p0

    .line 1502
    .local v0, "$receiver$iv":Lkotlinx/coroutines/experimental/JobSupport;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/experimental/JobSupport;->_state:Ljava/lang/Object;

    .line 620
    .local v1, "state":Ljava/lang/Object;
    instance-of v2, v1, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    if-nez v2, :cond_0

    return-object v1

    .line 621
    :cond_0
    check-cast v1, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    .end local v1    # "state":Ljava/lang/Object;
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/experimental/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    nop

    .line 1502
    goto :goto_0
.end method

.method public handleException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1164
    throw p1
.end method

.method public hasOnFinishingHandler$kotlinx_coroutines_core(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "update"    # Ljava/lang/Object;

    .prologue
    .line 1179
    const/4 v0, 0x0

    return v0
.end method

.method public final initParentJobInternal$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/Job;)V
    .locals 3
    .param p1, "parent"    # Lkotlinx/coroutines/experimental/Job;

    .prologue
    .line 596
    iget-object v1, p0, Lkotlinx/coroutines/experimental/JobSupport;->parentHandle:Lkotlinx/coroutines/experimental/DisposableHandle;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    const-string v2, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 597
    :cond_1
    if-nez p1, :cond_3

    .line 598
    sget-object v1, Lkotlinx/coroutines/experimental/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/experimental/NonDisposableHandle;

    check-cast v1, Lkotlinx/coroutines/experimental/DisposableHandle;

    iput-object v1, p0, Lkotlinx/coroutines/experimental/JobSupport;->parentHandle:Lkotlinx/coroutines/experimental/DisposableHandle;

    .line 610
    :cond_2
    :goto_1
    return-void

    .line 601
    :cond_3
    invoke-interface {p1}, Lkotlinx/coroutines/experimental/Job;->start()Z

    move-object v1, p0

    .line 603
    check-cast v1, Lkotlinx/coroutines/experimental/Job;

    invoke-interface {p1, v1}, Lkotlinx/coroutines/experimental/Job;->attachChild(Lkotlinx/coroutines/experimental/Job;)Lkotlinx/coroutines/experimental/DisposableHandle;

    move-result-object v0

    .line 604
    .local v0, "handle":Lkotlinx/coroutines/experimental/DisposableHandle;
    iput-object v0, p0, Lkotlinx/coroutines/experimental/JobSupport;->parentHandle:Lkotlinx/coroutines/experimental/DisposableHandle;

    .line 606
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 607
    invoke-interface {v0}, Lkotlinx/coroutines/experimental/DisposableHandle;->dispose()V

    .line 608
    sget-object v1, Lkotlinx/coroutines/experimental/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/experimental/NonDisposableHandle;

    check-cast v1, Lkotlinx/coroutines/experimental/DisposableHandle;

    iput-object v1, p0, Lkotlinx/coroutines/experimental/JobSupport;->parentHandle:Lkotlinx/coroutines/experimental/DisposableHandle;

    goto :goto_1
.end method

.method public final invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/experimental/DisposableHandle;
    .locals 2
    .param p1, "handler"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/experimental/DisposableHandle;"
        }
    .end annotation

    .prologue
    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 809
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lkotlinx/coroutines/experimental/JobSupport;->invokeOnCompletion(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/experimental/DisposableHandle;

    move-result-object v0

    return-object v0
.end method

.method public invokeOnCompletion(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/experimental/DisposableHandle;
    .locals 8
    .param p1, "onCancelling"    # Z
    .param p2, "invokeImmediately"    # Z
    .param p3, "handler"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/experimental/DisposableHandle;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const-string v7, "handler"

    invoke-static {p3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v6

    .line 825
    check-cast v3, Lkotlinx/coroutines/experimental/JobNode;

    .line 826
    .local v3, "nodeCache":Lkotlinx/coroutines/experimental/JobNode;
    move-object v5, p0

    .line 1548
    .local v5, "this_$iv":Lkotlinx/coroutines/experimental/JobSupport;
    :goto_0
    invoke-virtual {v5}, Lkotlinx/coroutines/experimental/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v4

    .line 828
    .local v4, "state":Ljava/lang/Object;
    instance-of v7, v4, Lkotlinx/coroutines/experimental/Empty;

    if-eqz v7, :cond_3

    move-object v7, v4

    .line 829
    check-cast v7, Lkotlinx/coroutines/experimental/Empty;

    invoke-virtual {v7}, Lkotlinx/coroutines/experimental/Empty;->isActive()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 831
    if-eqz v3, :cond_0

    move-object v2, v3

    .line 832
    .local v2, "node":Lkotlinx/coroutines/experimental/JobNode;
    :goto_1
    sget-object v7, Lkotlinx/coroutines/experimental/JobSupport;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v7, p0, v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    check-cast v2, Lkotlinx/coroutines/experimental/DisposableHandle;

    .line 853
    .end local v2    # "node":Lkotlinx/coroutines/experimental/JobNode;
    .end local v4    # "state":Ljava/lang/Object;
    :goto_2
    return-object v2

    .line 831
    .restart local v4    # "state":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, p3, p1}, Lkotlinx/coroutines/experimental/JobSupport;->makeNode(Lkotlin/jvm/functions/Function1;Z)Lkotlinx/coroutines/experimental/JobNode;

    move-result-object v0

    .local v0, "it":Lkotlinx/coroutines/experimental/JobNode;
    move-object v3, v0

    move-object v2, v0

    goto :goto_1

    .line 834
    .end local v0    # "it":Lkotlinx/coroutines/experimental/JobNode;
    :cond_1
    check-cast v4, Lkotlinx/coroutines/experimental/Empty;

    .end local v4    # "state":Ljava/lang/Object;
    invoke-direct {p0, v4}, Lkotlinx/coroutines/experimental/JobSupport;->promoteEmptyToNodeList(Lkotlinx/coroutines/experimental/Empty;)V

    .line 856
    :cond_2
    :goto_3
    nop

    .line 1548
    goto :goto_0

    .line 836
    .restart local v4    # "state":Ljava/lang/Object;
    :cond_3
    instance-of v7, v4, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-eqz v7, :cond_b

    move-object v7, v4

    .line 837
    check-cast v7, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    invoke-interface {v7}, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;->getList()Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    move-result-object v1

    .line 838
    .local v1, "list":Lkotlinx/coroutines/experimental/JobSupport$NodeList;
    if-nez v1, :cond_5

    .line 839
    if-nez v4, :cond_4

    new-instance v6, Lkotlin/TypeCastException;

    const-string v7, "null cannot be cast to non-null type kotlinx.coroutines.experimental.JobNode<*>"

    invoke-direct {v6, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    check-cast v4, Lkotlinx/coroutines/experimental/JobNode;

    .end local v4    # "state":Ljava/lang/Object;
    invoke-direct {p0, v4}, Lkotlinx/coroutines/experimental/JobSupport;->promoteSingleToNodeList(Lkotlinx/coroutines/experimental/JobNode;)V

    goto :goto_3

    .line 841
    .restart local v4    # "state":Ljava/lang/Object;
    :cond_5
    instance-of v7, v4, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    if-eqz v7, :cond_9

    move-object v7, v4

    check-cast v7, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    iget-object v7, v7, Lkotlinx/coroutines/experimental/JobSupport$Finishing;->cancelled:Lkotlinx/coroutines/experimental/Cancelled;

    if-eqz v7, :cond_9

    if-eqz p1, :cond_9

    .line 842
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->getOnCancelMode$kotlinx_coroutines_core()I

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    :goto_4
    if-nez v6, :cond_7

    const-string v7, "Check failed."

    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    :cond_6
    const/4 v6, 0x0

    goto :goto_4

    .line 844
    :cond_7
    if-eqz p2, :cond_8

    check-cast v4, Lkotlinx/coroutines/experimental/JobSupport$Finishing;

    .end local v4    # "state":Ljava/lang/Object;
    iget-object v6, v4, Lkotlinx/coroutines/experimental/JobSupport$Finishing;->cancelled:Lkotlinx/coroutines/experimental/Cancelled;

    invoke-virtual {v6}, Lkotlinx/coroutines/experimental/Cancelled;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-interface {p3, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    :cond_8
    sget-object v6, Lkotlinx/coroutines/experimental/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/experimental/NonDisposableHandle;

    check-cast v6, Lkotlinx/coroutines/experimental/DisposableHandle;

    move-object v2, v6

    goto :goto_2

    .line 847
    .restart local v4    # "state":Ljava/lang/Object;
    :cond_9
    if-eqz v3, :cond_a

    move-object v2, v3

    .line 848
    .restart local v2    # "node":Lkotlinx/coroutines/experimental/JobNode;
    :goto_5
    invoke-direct {p0, v4, v1, v2}, Lkotlinx/coroutines/experimental/JobSupport;->addLastAtomic(Ljava/lang/Object;Lkotlinx/coroutines/experimental/JobSupport$NodeList;Lkotlinx/coroutines/experimental/JobNode;)Z

    move-result v7

    if-eqz v7, :cond_2

    check-cast v2, Lkotlinx/coroutines/experimental/DisposableHandle;

    goto :goto_2

    .line 847
    .end local v2    # "node":Lkotlinx/coroutines/experimental/JobNode;
    :cond_a
    invoke-direct {p0, p3, p1}, Lkotlinx/coroutines/experimental/JobSupport;->makeNode(Lkotlin/jvm/functions/Function1;Z)Lkotlinx/coroutines/experimental/JobNode;

    move-result-object v0

    .restart local v0    # "it":Lkotlinx/coroutines/experimental/JobNode;
    move-object v3, v0

    move-object v2, v0

    goto :goto_5

    .line 852
    .end local v0    # "it":Lkotlinx/coroutines/experimental/JobNode;
    .end local v1    # "list":Lkotlinx/coroutines/experimental/JobSupport$NodeList;
    :cond_b
    if-eqz p2, :cond_d

    instance-of v7, v4, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    if-nez v7, :cond_e

    move-object v7, v6

    :goto_6
    check-cast v7, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Lkotlinx/coroutines/experimental/CompletedExceptionally;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    :cond_c
    invoke-interface {p3, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    :cond_d
    sget-object v6, Lkotlinx/coroutines/experimental/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/experimental/NonDisposableHandle;

    check-cast v6, Lkotlinx/coroutines/experimental/DisposableHandle;

    move-object v2, v6

    goto/16 :goto_2

    :cond_e
    move-object v7, v4

    goto :goto_6
.end method

.method public final isActive()Z
    .locals 2

    .prologue
    .line 635
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 636
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    .end local v0    # "state":Ljava/lang/Object;
    invoke-interface {v0}, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isCompleted()Z
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "proposedUpdate"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 1031
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/experimental/JobSupport;->makeCompletingInternal(Ljava/lang/Object;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1033
    const/4 v0, 0x1

    .line 1031
    :pswitch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final makeCompletingOnce$kotlinx_coroutines_core(Ljava/lang/Object;I)Z
    .locals 3
    .param p1, "proposedUpdate"    # Ljava/lang/Object;
    .param p2, "mode"    # I

    .prologue
    .line 1045
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/experimental/JobSupport;->makeCompletingInternal(Ljava/lang/Object;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1048
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already complete or completing, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "but is being completed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1049
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/JobSupport;->getExceptionOrNull(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    .line 1048
    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1046
    :pswitch_0
    const/4 v0, 0x1

    .line 1045
    :goto_0
    return v0

    .line 1047
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1045
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public minusKey(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 1
    .param p1, "key"    # Lkotlin/coroutines/experimental/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/CoroutineContext$Key",
            "<*>;)",
            "Lkotlin/coroutines/experimental/CoroutineContext;"
        }
    .end annotation

    .prologue
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    invoke-static {p0, p1}, Lkotlinx/coroutines/experimental/Job$DefaultImpls;->minusKey(Lkotlinx/coroutines/experimental/Job;Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public nameString$kotlinx_coroutines_core()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1200
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "this::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCancellationInternal$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/CompletedExceptionally;)V
    .locals 0
    .param p1, "exceptionally"    # Lkotlinx/coroutines/experimental/CompletedExceptionally;

    .prologue
    .line 1174
    return-void
.end method

.method public onCompletionInternal$kotlinx_coroutines_core(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "state"    # Ljava/lang/Object;
    .param p2, "mode"    # I

    .prologue
    .line 1191
    return-void
.end method

.method public onFinishingInternal$kotlinx_coroutines_core(Ljava/lang/Object;)V
    .locals 0
    .param p1, "update"    # Ljava/lang/Object;

    .prologue
    .line 1184
    return-void
.end method

.method public onStartInternal$kotlinx_coroutines_core()V
    .locals 0

    .prologue
    .line 772
    return-void
.end method

.method public plus(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 1
    .param p1, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    invoke-static {p0, p1}, Lkotlinx/coroutines/experimental/Job$DefaultImpls;->plus(Lkotlinx/coroutines/experimental/Job;Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final removeNode$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/JobNode;)V
    .locals 4
    .param p1, "node"    # Lkotlinx/coroutines/experimental/JobNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/JobNode",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const-string v2, "node"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 936
    move-object v1, p0

    .line 1572
    .local v1, "this_$iv":Lkotlinx/coroutines/experimental/JobSupport;
    :goto_0
    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 938
    .local v0, "state":Ljava/lang/Object;
    instance-of v2, v0, Lkotlinx/coroutines/experimental/JobNode;

    if-eqz v2, :cond_2

    .line 939
    if-eq v0, p1, :cond_1

    .line 948
    .end local v0    # "state":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-void

    .line 941
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_1
    sget-object v2, Lkotlinx/coroutines/experimental/JobSupport;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->access$getEmptyActive$p()Lkotlinx/coroutines/experimental/Empty;

    move-result-object v3

    invoke-virtual {v2, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 950
    nop

    .line 1572
    goto :goto_0

    .line 943
    :cond_2
    instance-of v2, v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-eqz v2, :cond_0

    .line 945
    check-cast v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    .end local v0    # "state":Ljava/lang/Object;
    invoke-interface {v0}, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;->getList()Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/JobNode;->remove()Z

    goto :goto_1
.end method

.method public final start()Z
    .locals 3

    .prologue
    .line 739
    move-object v1, p0

    .line 1546
    .local v1, "this_$iv":Lkotlinx/coroutines/experimental/JobSupport;
    :goto_0
    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 740
    .local v0, "state":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lkotlinx/coroutines/experimental/JobSupport;->startInternal(Ljava/lang/Object;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 744
    nop

    .line 1546
    goto :goto_0

    .line 741
    :pswitch_0
    const/4 v2, 0x0

    .line 742
    :goto_1
    return v2

    :pswitch_1
    const/4 v2, 0x1

    goto :goto_1

    .line 740
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->nameString$kotlinx_coroutines_core()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lkotlinx/coroutines/experimental/JobSupport;->stateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/coroutines/experimental/DebugKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tryUpdateState$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/JobSupport$Incomplete;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "expect"    # Lkotlinx/coroutines/experimental/JobSupport$Incomplete;
    .param p2, "update"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "expect"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 686
    instance-of v3, p2, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-nez v3, :cond_0

    move v3, v2

    :goto_0
    if-nez v3, :cond_1

    const-string v2, "Failed requirement."

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_0
    move v3, v1

    goto :goto_0

    .line 687
    :cond_1
    sget-object v3, Lkotlinx/coroutines/experimental/JobSupport;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 693
    :goto_1
    return v1

    .line 689
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/experimental/JobSupport;->parentHandle:Lkotlinx/coroutines/experimental/DisposableHandle;

    if-eqz v0, :cond_3

    .line 690
    .local v0, "it":Lkotlinx/coroutines/experimental/DisposableHandle;
    invoke-interface {v0}, Lkotlinx/coroutines/experimental/DisposableHandle;->dispose()V

    .line 691
    sget-object v1, Lkotlinx/coroutines/experimental/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/experimental/NonDisposableHandle;

    check-cast v1, Lkotlinx/coroutines/experimental/DisposableHandle;

    iput-object v1, p0, Lkotlinx/coroutines/experimental/JobSupport;->parentHandle:Lkotlinx/coroutines/experimental/DisposableHandle;

    .line 692
    nop

    .end local v0    # "it":Lkotlinx/coroutines/experimental/DisposableHandle;
    :cond_3
    move v1, v2

    .line 693
    goto :goto_1
.end method

.method public final updateState$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/JobSupport$Incomplete;Ljava/lang/Object;I)Z
    .locals 2
    .param p1, "expect"    # Lkotlinx/coroutines/experimental/JobSupport$Incomplete;
    .param p2, "proposedUpdate"    # Ljava/lang/Object;
    .param p3, "mode"    # I

    .prologue
    const-string v1, "expect"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/experimental/JobSupport;->coerceProposedUpdate(Lkotlinx/coroutines/experimental/JobSupport$Incomplete;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 654
    .local v0, "update":Ljava/lang/Object;
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/experimental/JobSupport;->tryUpdateState$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/JobSupport$Incomplete;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 656
    :goto_0
    return v1

    .line 655
    :cond_0
    invoke-virtual {p0, p1, v0, p3}, Lkotlinx/coroutines/experimental/JobSupport;->completeUpdateState$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/JobSupport$Incomplete;Ljava/lang/Object;I)V

    .line 656
    const/4 v1, 0x1

    goto :goto_0
.end method
