.class public final Lkotlinx/coroutines/experimental/internal/AtomicKt;
.super Ljava/lang/Object;
.source "Atomic.kt"


# static fields
.field private static final NO_DECISION:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lkotlinx/coroutines/experimental/internal/Symbol;

    const-string v1, "NO_DECISION"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/internal/AtomicKt;->NO_DECISION:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getNO_DECISION$p()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lkotlinx/coroutines/experimental/internal/AtomicKt;->NO_DECISION:Ljava/lang/Object;

    return-object v0
.end method
