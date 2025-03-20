.class public final Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
.super Ljava/lang/Object;
.source "LockFreeMPSCQueue.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeMPSCQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeMPSCQueue.kt\nkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore\n+ 2 LockFreeMPSCQueue.kt\nkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion\n+ 3 AtomicFU.kt\nkotlinx/atomicfu/AtomicFU\n*L\n1#1,248:1\n240#2,3:249\n240#2,3:258\n240#2,3:263\n240#2,3:268\n240#2,3:277\n462#3,4:252\n453#3,2:256\n453#3,2:261\n453#3,2:266\n484#3,4:271\n119#3,2:275\n*E\n*S KotlinDebug\n*F\n+ 1 LockFreeMPSCQueue.kt\nkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore\n*L\n89#1,3:249\n102#1,3:258\n136#1,3:263\n164#1,3:268\n198#1,3:277\n92#1,4:252\n102#1,2:256\n136#1,2:261\n164#1,2:266\n184#1,4:271\n190#1,2:275\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;

.field private static final PLACEHOLDER:Lkotlinx/coroutines/experimental/internal/Symbol;

.field private static final REMOVED:Lkotlinx/coroutines/experimental/internal/Symbol;

.field public static final REMOVE_FROZEN:Lkotlinx/coroutines/experimental/internal/Symbol;

.field private static final _next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final _state$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;


# instance fields
.field private volatile _next:Ljava/lang/Object;

.field private volatile _state:J

.field private final array:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final capacity:I

.field private final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->Companion:Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;

    .line 226
    new-instance v0, Lkotlinx/coroutines/experimental/internal/Symbol;

    const-string v1, "REMOVE_FROZEN"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->REMOVE_FROZEN:Lkotlinx/coroutines/experimental/internal/Symbol;

    .line 232
    new-instance v0, Lkotlinx/coroutines/experimental/internal/Symbol;

    const-string v1, "PLACEHOLDER"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->PLACEHOLDER:Lkotlinx/coroutines/experimental/internal/Symbol;

    .line 233
    new-instance v0, Lkotlinx/coroutines/experimental/internal/Symbol;

    const-string v1, "PLACEHOLDER"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->REMOVED:Lkotlinx/coroutines/experimental/internal/Symbol;

    const-class v0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_next"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;

    const-string v1, "_state"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->_state$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "capacity"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->capacity:I

    .line 78
    iget v2, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->capacity:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->mask:I

    .line 79
    const/4 v2, 0x0

    iput-object v2, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->_next:Ljava/lang/Object;

    .line 80
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->_state:J

    .line 81
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v3, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->capacity:I

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v2, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 84
    iget v2, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->mask:I

    const v3, 0x3fffffff    # 1.9999999f

    if-gt v2, v3, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    const-string v1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_0
    move v2, v1

    goto :goto_0

    .line 85
    :cond_1
    iget v2, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->capacity:I

    iget v3, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    :goto_1
    if-nez v0, :cond_3

    const-string v1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static final synthetic access$getPLACEHOLDER$cp()Lkotlinx/coroutines/experimental/internal/Symbol;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->PLACEHOLDER:Lkotlinx/coroutines/experimental/internal/Symbol;

    return-object v0
.end method

.method public static final synthetic access$getREMOVED$cp()Lkotlinx/coroutines/experimental/internal/Symbol;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->REMOVED:Lkotlinx/coroutines/experimental/internal/Symbol;

    return-object v0
.end method

.method private final allocateNextCopy(J)Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    .locals 11
    .param p1, "state"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v3, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;

    iget v6, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->capacity:I

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v3, v6}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;-><init>(I)V

    .line 198
    .local v3, "next":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    sget-object v5, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->Companion:Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;

    .line 277
    .local v5, "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;
    const-wide/32 v6, 0x3fffffff

    and-long/2addr v6, p1

    const/4 v8, 0x0

    shr-long/2addr v6, v8

    long-to-int v1, v6

    .line 278
    .local v1, "head$iv":I
    const-wide v6, 0xfffffffc0000000L

    and-long/2addr v6, p1

    const/16 v8, 0x1e

    shr-long/2addr v6, v8

    long-to-int v4, v6

    .line 279
    .local v4, "tail$iv":I
    move v0, v1

    .line 199
    .local v0, "head":I
    move v2, v0

    .line 200
    .local v2, "index":I
    :goto_0
    iget v6, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v6, v2

    iget v7, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v7, v4

    if-eq v6, v7, :cond_1

    .line 202
    iget-object v7, v3, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v6, v3, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->mask:I

    and-int v8, v2, v6

    iget-object v6, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v9, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v9, v2

    invoke-virtual {v6, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    :goto_1
    invoke-virtual {v7, v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 203
    add-int/lit8 v2, v2, 0x1

    .line 200
    goto :goto_0

    .line 202
    :cond_0
    sget-object v6, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->Companion:Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;

    invoke-static {v6}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;->access$getPLACEHOLDER$p(Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;)Lkotlinx/coroutines/experimental/internal/Symbol;

    move-result-object v6

    goto :goto_1

    .line 205
    :cond_1
    sget-object v6, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->Companion:Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;

    const-wide/high16 v8, 0x1000000000000000L

    invoke-static {v6, p1, p2, v8, v9}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;->access$wo(Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;JJ)J

    move-result-wide v6

    iput-wide v6, v3, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->_state:J

    .line 206
    nop

    nop

    nop

    .line 207
    return-object v3
.end method

.method private final allocateOrGetNextCopy(J)Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    .locals 5
    .param p1, "state"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    .line 275
    .local v0, "$receiver$iv":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->_next:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;

    .line 191
    .local v1, "next":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    if-eqz v1, :cond_0

    return-object v1

    .line 192
    :cond_0
    sget-object v2, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->allocateNextCopy(J)Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;

    move-result-object v4

    invoke-virtual {v2, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 193
    nop

    .line 275
    goto :goto_0
.end method

.method private final fillPlaceholder(ILjava/lang/Object;)Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    .locals 3
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v1, p1

    sget-object v2, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->Companion:Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;

    invoke-static {v2}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;->access$getPLACEHOLDER$p(Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;)Lkotlinx/coroutines/experimental/internal/Symbol;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    .end local p0    # "this":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private final markFrozen()J
    .locals 14

    .prologue
    const-wide/high16 v12, 0x1000000000000000L

    .line 184
    move-object v1, p0

    .line 271
    .local v1, "$receiver$iv":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    :cond_0
    iget-wide v2, v1, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->_state:J

    .line 273
    .local v2, "cur$iv":J
    move-wide v6, v2

    .line 185
    .local v6, "state":J
    and-long v8, v6, v12

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-eqz v0, :cond_1

    .line 187
    .end local v6    # "state":J
    :goto_0
    return-wide v6

    .line 186
    .restart local v6    # "state":J
    :cond_1
    or-long v4, v6, v12

    .line 274
    .local v4, "upd$iv":J
    sget-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->_state$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v6, v4

    .line 187
    goto :goto_0
.end method

.method private final removeSlowPath(II)Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    .locals 13
    .param p1, "oldHead"    # I
    .param p2, "newHead"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 164
    move-object v6, p0

    .line 266
    .local v6, "$receiver$iv":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    :goto_0
    iget-wide v2, v6, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->_state:J

    .line 165
    .local v2, "state":J
    sget-object v11, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->Companion:Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;

    .line 268
    .local v11, "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;
    const-wide/32 v0, 0x3fffffff

    and-long/2addr v0, v2

    shr-long/2addr v0, v12

    long-to-int v8, v0

    .line 269
    .local v8, "head$iv":I
    const-wide v0, 0xfffffffc0000000L

    and-long/2addr v0, v2

    const/16 v4, 0x1e

    shr-long/2addr v0, v4

    long-to-int v10, v0

    .line 270
    .local v10, "tail$iv":I
    move v7, v8

    .line 166
    .local v7, "head":I
    if-ne v7, p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_1

    const-string v1, "This queue can have only one consumer"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_0
    move v0, v12

    goto :goto_1

    .line 167
    :cond_1
    const-wide/high16 v0, 0x1000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->next()Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;

    move-result-object v9

    .line 170
    .local v9, "next":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    iget-object v0, v9, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, v9, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v1, v7

    sget-object v4, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->Companion:Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;

    invoke-static {v4}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;->access$getREMOVED$p(Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;)Lkotlinx/coroutines/experimental/internal/Symbol;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 175
    .end local v9    # "next":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    :goto_2
    return-object v9

    .line 173
    :cond_2
    sget-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->_state$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v1, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->Companion:Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;

    invoke-static {v1, v2, v3, p2}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;->access$updateHead(Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;JI)J

    move-result-wide v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v1, v7

    invoke-virtual {v0, v1, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_2

    .line 177
    :cond_3
    nop

    nop

    .line 178
    nop

    .line 266
    goto :goto_0
.end method


# virtual methods
.method public final addLast(Ljava/lang/Object;)I
    .locals 13
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    move-object v6, p0

    .line 256
    .local v6, "$receiver$iv":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    :goto_0
    iget-wide v2, v6, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->_state:J

    .line 103
    .local v2, "state":J
    const-wide/high16 v0, 0x3000000000000000L    # 1.727233711018889E-77

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->Companion:Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;

    invoke-static {v0, v2, v3}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;->access$addFailReason(Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;J)I

    move-result v0

    .line 118
    :goto_1
    return v0

    .line 104
    :cond_0
    sget-object v12, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->Companion:Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;

    .line 258
    .local v12, "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;
    const-wide/32 v0, 0x3fffffff

    and-long/2addr v0, v2

    const/4 v4, 0x0

    shr-long/2addr v0, v4

    long-to-int v9, v0

    .line 259
    .local v9, "head$iv":I
    const-wide v0, 0xfffffffc0000000L

    and-long/2addr v0, v2

    const/16 v4, 0x1e

    shr-long/2addr v0, v4

    long-to-int v11, v0

    .line 260
    .local v11, "tail$iv":I
    move v8, v9

    .line 107
    .local v8, "head":I
    add-int/lit8 v0, v11, 0x2

    iget v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v0, v1

    iget v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v1, v8

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 108
    :cond_1
    add-int/lit8 v0, v11, 0x1

    const v1, 0x3fffffff    # 1.9999999f

    and-int v10, v0, v1

    .line 109
    .local v10, "newTail":I
    sget-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->_state$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v1, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->Companion:Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;

    invoke-static {v1, v2, v3, v10}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;->access$updateTail(Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;JI)J

    move-result-wide v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v1, v11

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v7, p0

    .line 113
    check-cast v7, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;

    .line 114
    .local v7, "cur":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    :goto_2
    iget-wide v0, v7, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->_state:J

    const-wide/high16 v4, 0x1000000000000000L

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    .line 118
    .end local v7    # "cur":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 116
    .restart local v7    # "cur":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    :cond_3
    invoke-virtual {v7}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->next()Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;

    move-result-object v0

    invoke-direct {v0, v11, p1}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->fillPlaceholder(ILjava/lang/Object;)Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;

    move-result-object v7

    .end local v7    # "cur":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    if-eqz v7, :cond_2

    .line 114
    .restart local v7    # "cur":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    goto :goto_2

    .line 120
    .end local v7    # "cur":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    :cond_4
    nop

    nop

    nop

    .line 121
    nop

    .line 256
    goto :goto_0
.end method

.method public final close()Z
    .locals 12

    .prologue
    .line 92
    move-object v1, p0

    .line 252
    .local v1, "$receiver$iv":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    :cond_0
    iget-wide v2, v1, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->_state:J

    .line 254
    .local v2, "cur$iv":J
    move-wide v6, v2

    .line 93
    .local v6, "state":J
    const-wide/high16 v8, 0x2000000000000000L

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    .line 94
    :cond_1
    const-wide/high16 v8, 0x1000000000000000L

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :cond_2
    const-wide/high16 v8, 0x2000000000000000L

    or-long v4, v6, v8

    .line 255
    .local v4, "upd$iv":J
    sget-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->_state$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 89
    sget-object v3, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->Companion:Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;

    iget-wide v6, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->_state:J

    .line 249
    .local v3, "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;
    const-wide/32 v8, 0x3fffffff

    and-long/2addr v8, v6

    shr-long/2addr v8, v4

    long-to-int v1, v8

    .line 250
    .local v1, "head$iv":I
    const-wide v8, 0xfffffffc0000000L

    and-long/2addr v6, v8

    const/16 v5, 0x1e

    shr-long/2addr v6, v5

    long-to-int v2, v6

    .line 251
    .local v2, "tail$iv":I
    move v0, v1

    .line 89
    .local v0, "head":I
    if-ne v0, v2, :cond_0

    const/4 v4, 0x1

    :cond_0
    nop

    return v4
.end method

.method public final next()Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 181
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->markFrozen()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->allocateOrGetNextCopy(J)Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;

    move-result-object v0

    return-object v0
.end method

.method public final removeFirstOrNull()Ljava/lang/Object;
    .locals 14

    .prologue
    .line 136
    move-object v6, p0

    .line 261
    .local v6, "$receiver$iv":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    iget-wide v2, v6, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->_state:J

    .line 137
    .local v2, "state":J
    const-wide/high16 v0, 0x1000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    sget-object v8, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->REMOVE_FROZEN:Lkotlinx/coroutines/experimental/internal/Symbol;

    .line 156
    :cond_0
    :goto_0
    return-object v8

    .line 138
    :cond_1
    sget-object v13, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->Companion:Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;

    .line 263
    .local v13, "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;
    const-wide/32 v0, 0x3fffffff

    and-long/2addr v0, v2

    const/4 v4, 0x0

    shr-long/2addr v0, v4

    long-to-int v10, v0

    .line 264
    .local v10, "head$iv":I
    const-wide v0, 0xfffffffc0000000L

    and-long/2addr v0, v2

    const/16 v4, 0x1e

    shr-long/2addr v0, v4

    long-to-int v12, v0

    .line 265
    .local v12, "tail$iv":I
    move v9, v10

    .line 139
    .local v9, "head":I
    iget v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v0, v12

    iget v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v1, v9

    if-ne v0, v1, :cond_2

    const/4 v8, 0x0

    goto :goto_0

    .line 141
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v1, v9

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 142
    .local v8, "element":Ljava/lang/Object;
    sget-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->Companion:Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;

    invoke-static {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;->access$getPLACEHOLDER$p(Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;)Lkotlinx/coroutines/experimental/internal/Symbol;

    move-result-object v0

    if-ne v8, v0, :cond_4

    const/4 v8, 0x0

    goto :goto_0

    .line 141
    .end local v8    # "element":Ljava/lang/Object;
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 143
    .restart local v8    # "element":Ljava/lang/Object;
    :cond_4
    sget-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->Companion:Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;

    invoke-static {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;->access$getREMOVED$p(Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;)Lkotlinx/coroutines/experimental/internal/Symbol;

    move-result-object v0

    if-eq v8, v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_6

    const-string v1, "This queue can have only one consumer"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 148
    :cond_6
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v1, v9

    sget-object v4, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->Companion:Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;

    invoke-static {v4}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;->access$getREMOVED$p(Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;)Lkotlinx/coroutines/experimental/internal/Symbol;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 149
    add-int/lit8 v0, v9, 0x1

    const v1, 0x3fffffff    # 1.9999999f

    and-int v11, v0, v1

    .line 150
    .local v11, "newHead":I
    sget-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->_state$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v1, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->Companion:Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;

    invoke-static {v1, v2, v3, v11}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;->access$updateHead(Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;JI)J

    move-result-wide v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 151
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v1, v9

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_0

    :cond_7
    move-object v7, p0

    .line 155
    check-cast v7, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;

    .line 156
    .local v7, "cur":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    :goto_2
    invoke-direct {v7, v9, v11}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->removeSlowPath(II)Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;

    move-result-object v7

    .end local v7    # "cur":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    if-eqz v7, :cond_0

    .restart local v7    # "cur":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    goto :goto_2
.end method
