.class final Lkotlinx/coroutines/experimental/ChildCompletion;
.super Lkotlinx/coroutines/experimental/JobNode;
.source "Job.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/experimental/JobNode",
        "<",
        "Lkotlinx/coroutines/experimental/Job;",
        ">;"
    }
.end annotation


# instance fields
.field private final child:Lkotlinx/coroutines/experimental/Child;

.field private final parent:Lkotlinx/coroutines/experimental/JobSupport;

.field private final proposedUpdate:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/JobSupport;Lkotlinx/coroutines/experimental/Child;Ljava/lang/Object;)V
    .locals 1
    .param p1, "parent"    # Lkotlinx/coroutines/experimental/JobSupport;
    .param p2, "child"    # Lkotlinx/coroutines/experimental/Child;
    .param p3, "proposedUpdate"    # Ljava/lang/Object;

    .prologue
    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1495
    iget-object v0, p2, Lkotlinx/coroutines/experimental/Child;->childJob:Lkotlinx/coroutines/experimental/Job;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/experimental/JobNode;-><init>(Lkotlinx/coroutines/experimental/Job;)V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/ChildCompletion;->parent:Lkotlinx/coroutines/experimental/JobSupport;

    iput-object p2, p0, Lkotlinx/coroutines/experimental/ChildCompletion;->child:Lkotlinx/coroutines/experimental/Child;

    iput-object p3, p0, Lkotlinx/coroutines/experimental/ChildCompletion;->proposedUpdate:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1491
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/ChildCompletion;->invoke(Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public invoke(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/Throwable;

    .prologue
    .line 1497
    iget-object v0, p0, Lkotlinx/coroutines/experimental/ChildCompletion;->parent:Lkotlinx/coroutines/experimental/JobSupport;

    iget-object v1, p0, Lkotlinx/coroutines/experimental/ChildCompletion;->child:Lkotlinx/coroutines/experimental/Child;

    iget-object v2, p0, Lkotlinx/coroutines/experimental/ChildCompletion;->proposedUpdate:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/experimental/JobSupport;->continueCompleting$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/Child;Ljava/lang/Object;)V

    .line 1498
    return-void
.end method
