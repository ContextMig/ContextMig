.class public abstract Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
.super Lkotlinx/coroutines/experimental/internal/AtomicOp;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CondAddOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/experimental/internal/AtomicOp",
        "<",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        ">;"
    }
.end annotation


# instance fields
.field public final newNode:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

.field public oldNext:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V
    .locals 1
    .param p1, "newNode"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .prologue
    const-string v0, "newNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/AtomicOp;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;->newNode:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    return-void
.end method


# virtual methods
.method public bridge synthetic complete(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 79
    check-cast p1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;->complete(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Ljava/lang/Object;)V

    return-void
.end method

.method public complete(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Ljava/lang/Object;)V
    .locals 4
    .param p1, "affected"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .param p2, "failure"    # Ljava/lang/Object;

    .prologue
    const-string v2, "affected"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    if-nez p2, :cond_2

    const/4 v0, 0x1

    .line 86
    .local v0, "success":Z
    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;->newNode:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 87
    .local v1, "update":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :goto_1
    if-eqz v1, :cond_1

    sget-object v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p1, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    if-eqz v0, :cond_1

    iget-object v2, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;->newNode:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    iget-object v3, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;->oldNext:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-static {v2, v3}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->access$finishAdd(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    .line 91
    :cond_1
    return-void

    .line 85
    .end local v0    # "success":Z
    .end local v1    # "update":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    .restart local v0    # "success":Z
    :cond_3
    iget-object v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;->oldNext:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    goto :goto_1
.end method
