.class public Lkotlinx/coroutines/experimental/CompletedExceptionally;
.super Ljava/lang/Object;
.source "CompletedExceptionally.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCompletedExceptionally.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompletedExceptionally.kt\nkotlinx/coroutines/experimental/CompletedExceptionally\n*L\n1#1,75:1\n*E\n"
.end annotation


# instance fields
.field private volatile _exception:Ljava/lang/Throwable;

.field private final cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    const-string v0, "cause"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/experimental/CompletedExceptionally;-><init>(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Throwable;Z)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "allowNullCause"    # Z

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .line 40
    iget-object v0, p0, Lkotlinx/coroutines/experimental/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    iput-object v0, p0, Lkotlinx/coroutines/experimental/CompletedExceptionally;->_exception:Ljava/lang/Throwable;

    .line 43
    if-nez p2, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/experimental/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    const-string v1, "Null cause is not allowed"

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected createException()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 53
    const-string v1, "Completion exception was not specified"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lkotlinx/coroutines/experimental/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lkotlinx/coroutines/experimental/CompletedExceptionally;->_exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/CompletedExceptionally;->createException()Ljava/lang/Throwable;

    move-result-object v0

    .local v0, "it":Ljava/lang/Throwable;
    iput-object v0, p0, Lkotlinx/coroutines/experimental/CompletedExceptionally;->_exception:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/coroutines/experimental/DebugKt;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/CompletedExceptionally;->getException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
