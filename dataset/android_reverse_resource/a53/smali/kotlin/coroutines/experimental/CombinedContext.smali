.class public final Lkotlin/coroutines/experimental/CombinedContext;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/CoroutineContext;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineContextImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContextImpl.kt\nkotlin/coroutines/experimental/CombinedContext\n*L\n1#1,100:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0004H\u0002J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0000H\u0002J\u0013\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J5\u0010\u0011\u001a\u0002H\u0012\"\u0004\u0008\u0000\u0010\u00122\u0006\u0010\u0013\u001a\u0002H\u00122\u0018\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u0002H\u00120\u0015H\u0016\u00a2\u0006\u0002\u0010\u0016J(\u0010\u0017\u001a\u0004\u0018\u0001H\u0018\"\u0008\u0008\u0000\u0010\u0018*\u00020\u00042\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u001aH\u0096\u0002\u00a2\u0006\u0002\u0010\u001bJ\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0014\u0010\u001e\u001a\u00020\u00012\n\u0010\u0019\u001a\u0006\u0012\u0002\u0008\u00030\u001aH\u0016J\u0008\u0010\u001f\u001a\u00020\u001dH\u0002J\u0008\u0010 \u001a\u00020!H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\""
    }
    d2 = {
        "Lkotlin/coroutines/experimental/CombinedContext;",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "left",
        "element",
        "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
        "(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)V",
        "getElement",
        "()Lkotlin/coroutines/experimental/CoroutineContext$Element;",
        "getLeft",
        "()Lkotlin/coroutines/experimental/CoroutineContext;",
        "contains",
        "",
        "containsAll",
        "context",
        "equals",
        "other",
        "",
        "fold",
        "R",
        "initial",
        "operation",
        "Lkotlin/Function2;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "get",
        "E",
        "key",
        "Lkotlin/coroutines/experimental/CoroutineContext$Key;",
        "(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;",
        "hashCode",
        "",
        "minusKey",
        "size",
        "toString",
        "",
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
.field private final element:Lkotlin/coroutines/experimental/CoroutineContext$Element;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final left:Lkotlin/coroutines/experimental/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)V
    .locals 1
    .param p1    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/experimental/CoroutineContext$Element;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "left"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    iput-object p2, p0, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    return-void
.end method

.method private final contains(Lkotlin/coroutines/experimental/CoroutineContext$Element;)Z
    .locals 1

    .line 75
    invoke-interface {p1}, Lkotlin/coroutines/experimental/CoroutineContext$Element;->getKey()Lkotlin/coroutines/experimental/CoroutineContext$Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/coroutines/experimental/CombinedContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final containsAll(Lkotlin/coroutines/experimental/CombinedContext;)Z
    .locals 1

    .line 80
    :goto_0
    iget-object v0, p1, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-direct {p0, v0}, Lkotlin/coroutines/experimental/CombinedContext;->contains(Lkotlin/coroutines/experimental/CoroutineContext$Element;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 81
    :cond_0
    iget-object p1, p1, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    .line 82
    instance-of v0, p1, Lkotlin/coroutines/experimental/CombinedContext;

    if-eqz v0, :cond_1

    .line 83
    check-cast p1, Lkotlin/coroutines/experimental/CombinedContext;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 85
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.experimental.CoroutineContext.Element"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p1, Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-direct {p0, p1}, Lkotlin/coroutines/experimental/CombinedContext;->contains(Lkotlin/coroutines/experimental/CoroutineContext$Element;)Z

    move-result p1

    return p1
.end method

.method private final size()I
    .locals 1

    .line 72
    iget-object v0, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    instance-of v0, v0, Lkotlin/coroutines/experimental/CombinedContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    check-cast v0, Lkotlin/coroutines/experimental/CombinedContext;

    invoke-direct {v0}, Lkotlin/coroutines/experimental/CombinedContext;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 91
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/experimental/CombinedContext;

    if-eq v0, p1, :cond_1

    instance-of v0, p1, Lkotlin/coroutines/experimental/CombinedContext;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlin/coroutines/experimental/CombinedContext;

    invoke-direct {p1}, Lkotlin/coroutines/experimental/CombinedContext;->size()I

    move-result v0

    invoke-direct {p0}, Lkotlin/coroutines/experimental/CombinedContext;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p1, p0}, Lkotlin/coroutines/experimental/CombinedContext;->containsAll(Lkotlin/coroutines/experimental/CombinedContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    invoke-interface {v0, p1, p2}, Lkotlin/coroutines/experimental/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;
    .locals 2
    .param p1    # Lkotlin/coroutines/experimental/CoroutineContext$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
            ">(",
            "Lkotlin/coroutines/experimental/CoroutineContext$Key<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/experimental/CombinedContext;

    .line 48
    :goto_0
    iget-object v1, v0, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-interface {v1, p1}, Lkotlin/coroutines/experimental/CoroutineContext$Element;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 49
    :cond_0
    iget-object v0, v0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    .line 50
    instance-of v1, v0, Lkotlin/coroutines/experimental/CombinedContext;

    if-eqz v1, :cond_1

    .line 51
    check-cast v0, Lkotlin/coroutines/experimental/CombinedContext;

    goto :goto_0

    .line 53
    :cond_1
    invoke-interface {v0, p1}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object p1

    return-object p1
.end method

.method public final getElement()Lkotlin/coroutines/experimental/CoroutineContext$Element;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 44
    iget-object v0, p0, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    return-object v0
.end method

.method public final getLeft()Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 44
    iget-object v0, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 93
    iget-object v0, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public minusKey(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 2
    .param p1    # Lkotlin/coroutines/experimental/CoroutineContext$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/CoroutineContext$Key<",
            "*>;)",
            "Lkotlin/coroutines/experimental/CoroutineContext;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-interface {v0, p1}, Lkotlin/coroutines/experimental/CoroutineContext$Element;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    return-object p1

    .line 63
    :cond_0
    iget-object v0, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    invoke-interface {v0, p1}, Lkotlin/coroutines/experimental/CoroutineContext;->minusKey(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object p1

    .line 65
    iget-object v0, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    if-ne p1, v0, :cond_1

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/experimental/CoroutineContext;

    goto :goto_0

    .line 66
    :cond_1
    sget-object v0, Lkotlin/coroutines/experimental/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/experimental/EmptyCoroutineContext;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    check-cast p1, Lkotlin/coroutines/experimental/CoroutineContext;

    goto :goto_0

    .line 67
    :cond_2
    new-instance v0, Lkotlin/coroutines/experimental/CombinedContext;

    iget-object v1, p0, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-direct {v0, p1, v1}, Lkotlin/coroutines/experimental/CombinedContext;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)V

    move-object p1, v0

    check-cast p1, Lkotlin/coroutines/experimental/CoroutineContext;

    :goto_0
    return-object p1
.end method

.method public plus(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 1
    .param p1    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {p0, p1}, Lkotlin/coroutines/experimental/CoroutineContext$DefaultImpls;->plus(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    sget-object v2, Lkotlin/coroutines/experimental/CombinedContext$toString$1;->INSTANCE:Lkotlin/coroutines/experimental/CombinedContext$toString$1;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v1, v2}, Lkotlin/coroutines/experimental/CombinedContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
