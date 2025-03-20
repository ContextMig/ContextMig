.class public final Lkotlinx/coroutines/experimental/TimeSourceKt;
.super Ljava/lang/Object;
.source "TimeSource.kt"


# static fields
.field private static timeSource:Lkotlinx/coroutines/experimental/TimeSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lkotlinx/coroutines/experimental/DefaultTimeSource;->INSTANCE:Lkotlinx/coroutines/experimental/DefaultTimeSource;

    check-cast v0, Lkotlinx/coroutines/experimental/TimeSource;

    sput-object v0, Lkotlinx/coroutines/experimental/TimeSourceKt;->timeSource:Lkotlinx/coroutines/experimental/TimeSource;

    return-void
.end method

.method public static final getTimeSource()Lkotlinx/coroutines/experimental/TimeSource;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lkotlinx/coroutines/experimental/TimeSourceKt;->timeSource:Lkotlinx/coroutines/experimental/TimeSource;

    return-object v0
.end method
