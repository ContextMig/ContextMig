.class public final Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;
.super Ljava/lang/Object;
.source "LockFreeMPSCQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 211
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$addFailReason(Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;J)I
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;
    .param p1, "$receiver"    # J

    .prologue
    .line 211
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;->addFailReason(J)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getPLACEHOLDER$p(Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;)Lkotlinx/coroutines/experimental/internal/Symbol;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;

    .prologue
    .line 211
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;->getPLACEHOLDER()Lkotlinx/coroutines/experimental/internal/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getREMOVED$p(Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;)Lkotlinx/coroutines/experimental/internal/Symbol;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;

    .prologue
    .line 211
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;->getREMOVED()Lkotlinx/coroutines/experimental/internal/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$updateHead(Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;JI)J
    .locals 3
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;
    .param p1, "$receiver"    # J
    .param p3, "newHead"    # I

    .prologue
    .line 211
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;->updateHead(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$updateTail(Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;JI)J
    .locals 3
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;
    .param p1, "$receiver"    # J
    .param p3, "newTail"    # I

    .prologue
    .line 211
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;->updateTail(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$wo(Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;JJ)J
    .locals 3
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;
    .param p1, "$receiver"    # J
    .param p3, "other"    # J

    .prologue
    .line 211
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;->wo(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private final addFailReason(J)I
    .locals 5
    .param p1, "$receiver"    # J

    .prologue
    .line 246
    const-wide/high16 v0, 0x2000000000000000L

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final getPLACEHOLDER()Lkotlinx/coroutines/experimental/internal/Symbol;
    .locals 1

    .prologue
    .line 232
    invoke-static {}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->access$getPLACEHOLDER$cp()Lkotlinx/coroutines/experimental/internal/Symbol;

    move-result-object v0

    return-object v0
.end method

.method private final getREMOVED()Lkotlinx/coroutines/experimental/internal/Symbol;
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->access$getREMOVED$cp()Lkotlinx/coroutines/experimental/internal/Symbol;

    move-result-object v0

    return-object v0
.end method

.method private final updateHead(JI)J
    .locals 5
    .param p1, "$receiver"    # J
    .param p3, "newHead"    # I

    .prologue
    .line 236
    check-cast p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;

    .end local p0    # "this":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;
    const-wide/32 v0, 0x3fffffff

    invoke-direct {p0, p1, p2, v0, v1}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;->wo(JJ)J

    move-result-wide v0

    int-to-long v2, p3

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private final updateTail(JI)J
    .locals 5
    .param p1, "$receiver"    # J
    .param p3, "newTail"    # I

    .prologue
    .line 237
    check-cast p0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;

    .end local p0    # "this":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;
    const-wide v0, 0xfffffffc0000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore$Companion;->wo(JJ)J

    move-result-wide v0

    int-to-long v2, p3

    const/16 v4, 0x1e

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private final wo(JJ)J
    .locals 3
    .param p1, "$receiver"    # J
    .param p3, "other"    # J

    .prologue
    .line 235
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p3

    and-long/2addr v0, p1

    return-wide v0
.end method
