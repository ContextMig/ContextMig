.class public final enum Lkotlinx/coroutines/experimental/CoroutineStart;
.super Ljava/lang/Enum;
.source "CoroutineStart.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkotlinx/coroutines/experimental/CoroutineStart;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlinx/coroutines/experimental/CoroutineStart;

.field public static final enum ATOMIC:Lkotlinx/coroutines/experimental/CoroutineStart;

.field public static final enum DEFAULT:Lkotlinx/coroutines/experimental/CoroutineStart;

.field public static final enum LAZY:Lkotlinx/coroutines/experimental/CoroutineStart;

.field public static final enum UNDISPATCHED:Lkotlinx/coroutines/experimental/CoroutineStart;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlinx/coroutines/experimental/CoroutineStart;

    new-instance v1, Lkotlinx/coroutines/experimental/CoroutineStart;

    const-string v2, "DEFAULT"

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/experimental/CoroutineStart;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/experimental/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/experimental/CoroutineStart;

    aput-object v1, v0, v3

    new-instance v1, Lkotlinx/coroutines/experimental/CoroutineStart;

    const-string v2, "LAZY"

    invoke-direct {v1, v2, v4}, Lkotlinx/coroutines/experimental/CoroutineStart;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/experimental/CoroutineStart;->LAZY:Lkotlinx/coroutines/experimental/CoroutineStart;

    aput-object v1, v0, v4

    new-instance v1, Lkotlinx/coroutines/experimental/CoroutineStart;

    const-string v2, "ATOMIC"

    invoke-direct {v1, v2, v5}, Lkotlinx/coroutines/experimental/CoroutineStart;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/experimental/CoroutineStart;->ATOMIC:Lkotlinx/coroutines/experimental/CoroutineStart;

    aput-object v1, v0, v5

    new-instance v1, Lkotlinx/coroutines/experimental/CoroutineStart;

    const-string v2, "UNDISPATCHED"

    invoke-direct {v1, v2, v6}, Lkotlinx/coroutines/experimental/CoroutineStart;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/experimental/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/experimental/CoroutineStart;

    aput-object v1, v0, v6

    sput-object v0, Lkotlinx/coroutines/experimental/CoroutineStart;->$VALUES:[Lkotlinx/coroutines/experimental/CoroutineStart;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum_name_or_ordinal$0"    # Ljava/lang/String;
    .param p2, "$enum_name_or_ordinal$1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlinx/coroutines/experimental/CoroutineStart;
    .locals 1

    const-class v0, Lkotlinx/coroutines/experimental/CoroutineStart;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/experimental/CoroutineStart;

    return-object v0
.end method

.method public static values()[Lkotlinx/coroutines/experimental/CoroutineStart;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/experimental/CoroutineStart;->$VALUES:[Lkotlinx/coroutines/experimental/CoroutineStart;

    invoke-virtual {v0}, [Lkotlinx/coroutines/experimental/CoroutineStart;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/coroutines/experimental/CoroutineStart;

    return-object v0
.end method


# virtual methods
.method public final invoke(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)V
    .locals 2
    .param p1, "block"    # Lkotlin/jvm/functions/Function2;
    .param p2, "receiver"    # Ljava/lang/Object;
    .param p3, "completion"    # Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2",
            "<-TR;-",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    sget-object v0, Lkotlinx/coroutines/experimental/CoroutineStart$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/CoroutineStart;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 114
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 111
    :pswitch_0
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/experimental/intrinsics/CancellableKt;->startCoroutineCancellable(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)V

    .line 115
    :goto_0
    :pswitch_1
    return-void

    .line 112
    :pswitch_2
    invoke-static {p1, p2, p3}, Lkotlin/coroutines/experimental/CoroutinesKt;->startCoroutine(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)V

    goto :goto_0

    .line 113
    :pswitch_3
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/experimental/intrinsics/UndispatchedKt;->startCoroutineUndispatched(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public final isLazy()Z
    .locals 1

    .prologue
    .line 120
    check-cast p0, Lkotlinx/coroutines/experimental/CoroutineStart;

    .end local p0    # "this":Lkotlinx/coroutines/experimental/CoroutineStart;
    sget-object v0, Lkotlinx/coroutines/experimental/CoroutineStart;->LAZY:Lkotlinx/coroutines/experimental/CoroutineStart;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
