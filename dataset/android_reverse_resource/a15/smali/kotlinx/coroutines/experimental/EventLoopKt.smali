.class public final Lkotlinx/coroutines/experimental/EventLoopKt;
.super Ljava/lang/Object;
.source "EventLoop.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventLoop.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.kt\nkotlinx/coroutines/experimental/EventLoopKt\n*L\n1#1,354:1\n*E\n"
.end annotation


# static fields
.field private static final CLOSED_EMPTY:Lkotlinx/coroutines/experimental/internal/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lkotlinx/coroutines/experimental/internal/Symbol;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/EventLoopKt;->CLOSED_EMPTY:Lkotlinx/coroutines/experimental/internal/Symbol;

    return-void
.end method

.method public static final synthetic access$getCLOSED_EMPTY$p()Lkotlinx/coroutines/experimental/internal/Symbol;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lkotlinx/coroutines/experimental/EventLoopKt;->CLOSED_EMPTY:Lkotlinx/coroutines/experimental/internal/Symbol;

    return-object v0
.end method
