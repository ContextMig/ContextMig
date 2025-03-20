.class public final Lkotlinx/coroutines/experimental/JobKt;
.super Ljava/lang/Object;
.source "Job.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJob.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Job.kt\nkotlinx/coroutines/experimental/JobKt\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,1501:1\n1028#2,2:1502\n1028#2,2:1504\n*E\n*S KotlinDebug\n*F\n+ 1 Job.kt\nkotlinx/coroutines/experimental/JobKt\n*L\n452#1,2:1502\n461#1,2:1504\n*E\n"
.end annotation


# static fields
.field private static final EmptyActive:Lkotlinx/coroutines/experimental/Empty;

.field private static final EmptyNew:Lkotlinx/coroutines/experimental/Empty;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1375
    new-instance v0, Lkotlinx/coroutines/experimental/Empty;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/Empty;-><init>(Z)V

    sput-object v0, Lkotlinx/coroutines/experimental/JobKt;->EmptyNew:Lkotlinx/coroutines/experimental/Empty;

    .line 1377
    new-instance v0, Lkotlinx/coroutines/experimental/Empty;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/Empty;-><init>(Z)V

    sput-object v0, Lkotlinx/coroutines/experimental/JobKt;->EmptyActive:Lkotlinx/coroutines/experimental/Empty;

    return-void
.end method

.method public static final synthetic access$getEmptyActive$p()Lkotlinx/coroutines/experimental/Empty;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lkotlinx/coroutines/experimental/JobKt;->EmptyActive:Lkotlinx/coroutines/experimental/Empty;

    return-object v0
.end method

.method public static final synthetic access$getEmptyNew$p()Lkotlinx/coroutines/experimental/Empty;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lkotlinx/coroutines/experimental/JobKt;->EmptyNew:Lkotlinx/coroutines/experimental/Empty;

    return-object v0
.end method

.method public static final disposeOnCompletion(Lkotlinx/coroutines/experimental/Job;Lkotlinx/coroutines/experimental/DisposableHandle;)Lkotlinx/coroutines/experimental/DisposableHandle;
    .locals 1
    .param p0, "$receiver"    # Lkotlinx/coroutines/experimental/Job;
    .param p1, "handle"    # Lkotlinx/coroutines/experimental/DisposableHandle;

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    new-instance v0, Lkotlinx/coroutines/experimental/DisposeOnCompletion;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/experimental/DisposeOnCompletion;-><init>(Lkotlinx/coroutines/experimental/Job;Lkotlinx/coroutines/experimental/DisposableHandle;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/experimental/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/experimental/DisposableHandle;

    move-result-object v0

    return-object v0
.end method
