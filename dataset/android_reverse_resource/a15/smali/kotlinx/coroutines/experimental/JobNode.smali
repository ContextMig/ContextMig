.class public abstract Lkotlinx/coroutines/experimental/JobNode;
.super Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
.source "Job.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;
.implements Lkotlinx/coroutines/experimental/DisposableHandle;
.implements Lkotlinx/coroutines/experimental/JobSupport$Incomplete;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J::",
        "Lkotlinx/coroutines/experimental/Job;",
        ">",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "Lkotlin/jvm/functions/Function1",
        "<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlinx/coroutines/experimental/DisposableHandle;",
        "Lkotlinx/coroutines/experimental/JobSupport$Incomplete;"
    }
.end annotation


# instance fields
.field public final job:Lkotlinx/coroutines/experimental/Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TJ;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/Job;)V
    .locals 1
    .param p1, "job"    # Lkotlinx/coroutines/experimental/Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)V"
        }
    .end annotation

    .prologue
    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1393
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/JobNode;->job:Lkotlinx/coroutines/experimental/Job;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    .prologue
    .line 1396
    iget-object v0, p0, Lkotlinx/coroutines/experimental/JobNode;->job:Lkotlinx/coroutines/experimental/Job;

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.experimental.JobSupport"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/experimental/JobSupport;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/experimental/JobSupport;->removeNode$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/JobNode;)V

    return-void
.end method

.method public final getList()Lkotlinx/coroutines/experimental/JobSupport$NodeList;
    .locals 1

    .prologue
    .line 1395
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract invoke(Ljava/lang/Throwable;)V
.end method

.method public final isActive()Z
    .locals 1

    .prologue
    .line 1394
    const/4 v0, 0x1

    return v0
.end method
