.class public final Lkotlin/collections/EmptyIterator;
.super Ljava/lang/Object;
.source "Collections.kt"

# interfaces
.implements Ljava/util/ListIterator;


# static fields
.field public static final INSTANCE:Lkotlin/collections/EmptyIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lkotlin/collections/EmptyIterator;

    invoke-direct {v0}, Lkotlin/collections/EmptyIterator;-><init>()V

    sput-object v0, Lkotlin/collections/EmptyIterator;->INSTANCE:Lkotlin/collections/EmptyIterator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic add(Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lkotlin/collections/EmptyIterator;->next()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lkotlin/collections/EmptyIterator;->previous()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic set(Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
