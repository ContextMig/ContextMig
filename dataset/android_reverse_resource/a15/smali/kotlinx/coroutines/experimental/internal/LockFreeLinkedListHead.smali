.class public Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;
.super Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
.source "LockFreeLinkedList.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 669
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;-><init>()V

    return-void
.end method


# virtual methods
.method public final remove()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 684
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public bridge synthetic remove()Z
    .locals 1

    .prologue
    .line 669
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;->remove()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
