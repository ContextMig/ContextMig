.class public final Lkotlinx/coroutines/experimental/NonDisposableHandle;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/DisposableHandle;


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/experimental/NonDisposableHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 502
    new-instance v0, Lkotlinx/coroutines/experimental/NonDisposableHandle;

    invoke-direct {v0}, Lkotlinx/coroutines/experimental/NonDisposableHandle;-><init>()V

    sput-object v0, Lkotlinx/coroutines/experimental/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/experimental/NonDisposableHandle;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 504
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    const-string v0, "NonDisposableHandle"

    return-object v0
.end method
