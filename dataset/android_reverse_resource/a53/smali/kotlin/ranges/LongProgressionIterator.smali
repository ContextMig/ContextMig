.class public final Lkotlin/ranges/LongProgressionIterator;
.super Lkotlin/collections/LongIterator;
.source "ProgressionIterators.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u0008\u001a\u00020\tH\u0096\u0002J\u0008\u0010\r\u001a\u00020\u0003H\u0016R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlin/ranges/LongProgressionIterator;",
        "Lkotlin/collections/LongIterator;",
        "first",
        "",
        "last",
        "step",
        "(JJJ)V",
        "finalElement",
        "hasNext",
        "",
        "next",
        "getStep",
        "()J",
        "nextLong",
        "kotlin-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field private final finalElement:J

.field private hasNext:Z

.field private next:J

.field private final step:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 3

    .line 73
    invoke-direct {p0}, Lkotlin/collections/LongIterator;-><init>()V

    iput-wide p5, p0, Lkotlin/ranges/LongProgressionIterator;->step:J

    .line 74
    iput-wide p3, p0, Lkotlin/ranges/LongProgressionIterator;->finalElement:J

    .line 75
    iget-wide p5, p0, Lkotlin/ranges/LongProgressionIterator;->step:J

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    const/4 p5, 0x0

    const/4 p6, 0x1

    if-lez v2, :cond_0

    cmp-long v0, p1, p3

    if-gtz v0, :cond_1

    :goto_0
    move p5, p6

    goto :goto_1

    :cond_0
    cmp-long v0, p1, p3

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean p5, p0, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    .line 76
    iget-boolean p3, p0, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    iget-wide p1, p0, Lkotlin/ranges/LongProgressionIterator;->finalElement:J

    :goto_2
    iput-wide p1, p0, Lkotlin/ranges/LongProgressionIterator;->next:J

    return-void
.end method


# virtual methods
.method public final getStep()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lkotlin/ranges/LongProgressionIterator;->step:J

    return-wide v0
.end method

.method public hasNext()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    return v0
.end method

.method public nextLong()J
    .locals 8

    .line 81
    iget-wide v0, p0, Lkotlin/ranges/LongProgressionIterator;->next:J

    .line 82
    iget-wide v2, p0, Lkotlin/ranges/LongProgressionIterator;->finalElement:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 83
    iget-boolean v2, p0, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    if-nez v2, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_0
    const/4 v2, 0x0

    .line 84
    iput-boolean v2, p0, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    goto :goto_0

    .line 87
    :cond_1
    iget-wide v2, p0, Lkotlin/ranges/LongProgressionIterator;->next:J

    iget-wide v4, p0, Lkotlin/ranges/LongProgressionIterator;->step:J

    add-long v6, v2, v4

    iput-wide v6, p0, Lkotlin/ranges/LongProgressionIterator;->next:J

    :goto_0
    return-wide v0
.end method
