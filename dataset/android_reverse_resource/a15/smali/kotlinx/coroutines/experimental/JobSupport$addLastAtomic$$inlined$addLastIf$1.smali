.class public final Lkotlinx/coroutines/experimental/JobSupport$addLastAtomic$$inlined$addLastIf$1;
.super Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/experimental/JobSupport;->addLastAtomic(Ljava/lang/Object;Lkotlinx/coroutines/experimental/JobSupport$NodeList;Lkotlinx/coroutines/experimental/JobNode;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$makeCondAddOp$1\n+ 2 Job.kt\nkotlinx/coroutines/experimental/JobSupport\n*L\n1#1,699:1\n870#2:700\n*E\n"
.end annotation


# instance fields
.field final synthetic $expect$inlined:Ljava/lang/Object;

.field final synthetic $node:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

.field final synthetic this$0:Lkotlinx/coroutines/experimental/JobSupport;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/JobSupport;Ljava/lang/Object;)V
    .locals 0
    .param p1, "$captured_local_variable$1"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .param p2, "$super_call_param$2"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .prologue
    iput-object p1, p0, Lkotlinx/coroutines/experimental/JobSupport$addLastAtomic$$inlined$addLastIf$1;->$node:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    iput-object p3, p0, Lkotlinx/coroutines/experimental/JobSupport$addLastAtomic$$inlined$addLastIf$1;->this$0:Lkotlinx/coroutines/experimental/JobSupport;

    iput-object p4, p0, Lkotlinx/coroutines/experimental/JobSupport$addLastAtomic$$inlined$addLastIf$1;->$expect$inlined:Ljava/lang/Object;

    .line 96
    invoke-direct {p0, p2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;-><init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic prepare(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    check-cast p1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/JobSupport$addLastAtomic$$inlined$addLastIf$1;->prepare(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public prepare(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Ljava/lang/Object;
    .locals 2
    .param p1, "affected"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .prologue
    const-string v0, "affected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    nop

    .line 700
    iget-object v0, p0, Lkotlinx/coroutines/experimental/JobSupport$addLastAtomic$$inlined$addLastIf$1;->this$0:Lkotlinx/coroutines/experimental/JobSupport;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/experimental/JobSupport$addLastAtomic$$inlined$addLastIf$1;->$expect$inlined:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->getCONDITION_FALSE()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method
