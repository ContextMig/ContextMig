.class public final Lkotlin/collections/ArraysKt___ArraysKt$asList$7;
.super Lkotlin/collections/AbstractList;
.source "_Arrays.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/ArraysKt___ArraysKt;->asList([Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractList<",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_Arrays.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt$asList$7\n*L\n1#1,14322:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0011\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002H\u0096\u0002J\u0016\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0007H\u0096\u0002\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0002H\u0016J\u0008\u0010\u0010\u001a\u00020\u0002H\u0016J\u0010\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0002H\u0016R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "kotlin/collections/ArraysKt___ArraysKt$asList$7",
        "Lkotlin/collections/AbstractList;",
        "",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "([Z)V",
        "size",
        "",
        "getSize",
        "()I",
        "contains",
        "element",
        "get",
        "index",
        "(I)Ljava/lang/Boolean;",
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
.field final synthetic receiver$0:[Z


# direct methods
.method constructor <init>([Z)V
    .locals 0

    .line 5415
    iput-object p1, p0, Lkotlin/collections/ArraysKt___ArraysKt$asList$7;->receiver$0:[Z

    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 5415
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt$asList$7;->contains(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public contains(Z)Z
    .locals 1

    .line 5418
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysKt$asList$7;->receiver$0:[Z

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->contains([ZZ)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 5419
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysKt$asList$7;->receiver$0:[Z

    aget-boolean p1, v0, p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 5415
    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt$asList$7;->get(I)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    .line 5416
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysKt$asList$7;->receiver$0:[Z

    array-length v0, v0

    return v0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 5415
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt$asList$7;->indexOf(Z)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public indexOf(Z)I
    .locals 1

    .line 5420
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysKt$asList$7;->receiver$0:[Z

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->indexOf([ZZ)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 5417
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysKt$asList$7;->receiver$0:[Z

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 5415
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt$asList$7;->lastIndexOf(Z)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public lastIndexOf(Z)I
    .locals 1

    .line 5421
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysKt$asList$7;->receiver$0:[Z

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->lastIndexOf([ZZ)I

    move-result p1

    return p1
.end method
