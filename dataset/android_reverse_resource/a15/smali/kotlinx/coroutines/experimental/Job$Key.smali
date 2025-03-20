.class public final Lkotlinx/coroutines/experimental/Job$Key;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/CoroutineContext$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/experimental/CoroutineContext$Key",
        "<",
        "Lkotlinx/coroutines/experimental/Job;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lkotlinx/coroutines/experimental/Job$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lkotlinx/coroutines/experimental/Job$Key;

    invoke-direct {v0}, Lkotlinx/coroutines/experimental/Job$Key;-><init>()V

    sput-object v0, Lkotlinx/coroutines/experimental/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/experimental/Job$Key;

    .line 107
    sget-object v0, Lkotlinx/coroutines/experimental/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/experimental/CoroutineExceptionHandler$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
