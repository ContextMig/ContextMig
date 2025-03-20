.class public final Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.kt"


# static fields
.field private static final ALREADY_REMOVED:Ljava/lang/Object;

.field private static final CONDITION_FALSE:Ljava/lang/Object;

.field private static final LIST_EMPTY:Ljava/lang/Object;

.field private static final REMOVE_PREPARED:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lkotlinx/coroutines/experimental/internal/Symbol;

    const-string v1, "CONDITION_FALSE"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->CONDITION_FALSE:Ljava/lang/Object;

    .line 37
    new-instance v0, Lkotlinx/coroutines/experimental/internal/Symbol;

    const-string v1, "ALREADY_REMOVED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->ALREADY_REMOVED:Ljava/lang/Object;

    .line 40
    new-instance v0, Lkotlinx/coroutines/experimental/internal/Symbol;

    const-string v1, "LIST_EMPTY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->LIST_EMPTY:Ljava/lang/Object;

    .line 42
    new-instance v0, Lkotlinx/coroutines/experimental/internal/Symbol;

    const-string v1, "REMOVE_PREPARED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->REMOVE_PREPARED:Ljava/lang/Object;

    return-void
.end method

.method public static final getCONDITION_FALSE()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->CONDITION_FALSE:Ljava/lang/Object;

    return-object v0
.end method

.method public static final unwrap(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .locals 1
    .param p0, "$receiver"    # Ljava/lang/Object;

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    instance-of v0, p0, Lkotlinx/coroutines/experimental/internal/Removed;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/experimental/internal/Removed;

    .end local p0    # "$receiver":Ljava/lang/Object;
    iget-object p0, p0, Lkotlinx/coroutines/experimental/internal/Removed;->ref:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    :goto_0
    return-object p0

    .restart local p0    # "$receiver":Ljava/lang/Object;
    :cond_0
    check-cast p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    goto :goto_0
.end method
