.class public final Lkotlin/collections/ArraysKt___ArraysKt$asList$4;
.super Lkotlin/collections/AbstractList;
.source "_Arrays.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/ArraysKt___ArraysKt;->asList([J)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractList<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_Arrays.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt$asList$4\n*L\n1#1,14322:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0011\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0002H\u0096\u0002J\u0016\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0007H\u0096\u0002\u00a2\u0006\u0002\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0002H\u0016J\u0008\u0010\u0011\u001a\u00020\u000bH\u0016J\u0010\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0002H\u0016R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0013"
    }
    d2 = {
        "kotlin/collections/ArraysKt___ArraysKt$asList$4",
        "Lkotlin/collections/AbstractList;",
        "",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "([J)V",
        "size",
        "",
        "getSize",
        "()I",
        "contains",
        "",
        "element",
        "get",
        "index",
        "(I)Ljava/lang/Long;",
        "indexOf",
        "isEmpty",
        "lastIndexOf",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic receiver$0:[J


# direct methods
.method constructor <init>([J)V
    .locals 0

    .line 5373
    iput-object p1, p0, Lkotlin/collections/ArraysKt___ArraysKt$asList$4;->receiver$0:[J

    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(J)Z
    .locals 1

    .line 5376
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysKt$asList$4;->receiver$0:[J

    invoke-static {v0, p1, p2}, Lkotlin/collections/ArraysKt;->contains([JJ)Z

    move-result p1

    return p1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 2

    .line 5373
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/collections/ArraysKt___ArraysKt$asList$4;->contains(J)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public get(I)Ljava/lang/Long;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 5377
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysKt$asList$4;->receiver$0:[J

    aget-wide v1, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 5373
    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt$asList$4;->get(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    .line 5374
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysKt$asList$4;->receiver$0:[J

    array-length v0, v0

    return v0
.end method

.method public indexOf(J)I
    .locals 1

    .line 5378
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysKt$asList$4;->receiver$0:[J

    invoke-static {v0, p1, p2}, Lkotlin/collections/ArraysKt;->indexOf([JJ)I

    move-result p1

    return p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 2

    .line 5373
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/collections/ArraysKt___ArraysKt$asList$4;->indexOf(J)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 5375
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysKt$asList$4;->receiver$0:[J

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastIndexOf(J)I
    .locals 1

    .line 5379
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysKt$asList$4;->receiver$0:[J

    invoke-static {v0, p1, p2}, Lkotlin/collections/ArraysKt;->lastIndexOf([JJ)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    .line 5373
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/collections/ArraysKt___ArraysKt$asList$4;->lastIndexOf(J)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
