.class public final Lkotlinx/coroutines/experimental/JobSupport$NodeList;
.super Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;
.source "Job.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/JobSupport$Incomplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/JobSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NodeList"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJob.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Job.kt\nkotlinx/coroutines/experimental/JobSupport$NodeList\n+ 2 LockFreeLinkedList.kt\nkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead\n*L\n1#1,1501:1\n676#2,6:1502\n*E\n*S KotlinDebug\n*F\n+ 1 Job.kt\nkotlinx/coroutines/experimental/JobSupport$NodeList\n*L\n1253#1,6:1502\n*E\n"
.end annotation


# static fields
.field private static final _active$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _active:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    const-string v1, "_active"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->_active$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 1239
    .line 1241
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;-><init>()V

    .line 1242
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->_active:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getList()Lkotlinx/coroutines/experimental/JobSupport$NodeList;
    .locals 0

    .prologue
    .line 1245
    return-object p0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 1244
    iget v0, p0, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->_active:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1254
    .local v0, "$receiver":Ljava/lang/StringBuilder;
    const-string v5, "List"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "{Active}"

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    const/4 v2, 0x1

    .line 1258
    .local v2, "first":Z
    move-object v4, p0

    .line 1502
    .local v4, "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;
    invoke-virtual {v4}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;->getNext()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v5, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1255
    .end local v2    # "first":Z
    .end local v4    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;
    :cond_0
    const-string v5, "{New}"

    goto :goto_0

    .line 1502
    .restart local v2    # "first":Z
    .restart local v4    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;
    :cond_1
    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .local v1, "cur$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :goto_1
    move-object v5, v4

    .line 1503
    check-cast v5, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    .line 1504
    instance-of v5, v1, Lkotlinx/coroutines/experimental/JobNode;

    if-eqz v5, :cond_2

    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/experimental/JobNode;

    .line 1259
    .local v3, "node":Lkotlinx/coroutines/experimental/JobNode;
    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 1260
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1261
    nop

    .line 1505
    .end local v3    # "node":Lkotlinx/coroutines/experimental/JobNode;
    :cond_2
    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->unwrap(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v1

    .line 1503
    goto :goto_1

    .line 1259
    .restart local v3    # "node":Lkotlinx/coroutines/experimental/JobNode;
    :cond_3
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1507
    .end local v3    # "node":Lkotlinx/coroutines/experimental/JobNode;
    :cond_4
    nop

    .line 1262
    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    nop

    nop

    .line 1253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1263
    return-object v5
.end method

.method public final tryMakeActive()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1248
    iget v2, p0, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->_active:I

    if-eqz v2, :cond_0

    .line 1250
    :goto_0
    return v0

    .line 1249
    :cond_0
    sget-object v2, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->_active$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 1250
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
