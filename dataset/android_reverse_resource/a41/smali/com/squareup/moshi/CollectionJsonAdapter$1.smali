.class final Lcom/squareup/moshi/CollectionJsonAdapter$1;
.super Ljava/lang/Object;
.source "CollectionJsonAdapter.java"

# interfaces
.implements Lcom/squareup/moshi/JsonAdapter$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/CollectionJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/squareup/moshi/Moshi;)Lcom/squareup/moshi/JsonAdapter;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p3, "moshi"    # Lcom/squareup/moshi/Moshi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/squareup/moshi/Moshi;",
            ")",
            "Lcom/squareup/moshi/JsonAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p2, "annotations":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/annotation/Annotation;>;"
    const/4 v1, 0x0

    .line 32
    invoke-static {p1}, Lcom/squareup/moshi/Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 33
    .local v0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-object v1

    .line 34
    :cond_1
    const-class v2, Ljava/util/List;

    if-eq v0, v2, :cond_2

    const-class v2, Ljava/util/Collection;

    if-ne v0, v2, :cond_3

    .line 35
    :cond_2
    invoke-static {p1, p3}, Lcom/squareup/moshi/CollectionJsonAdapter;->newArrayListAdapter(Ljava/lang/reflect/Type;Lcom/squareup/moshi/Moshi;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/JsonAdapter;

    move-result-object v1

    goto :goto_0

    .line 36
    :cond_3
    const-class v2, Ljava/util/Set;

    if-ne v0, v2, :cond_0

    .line 37
    invoke-static {p1, p3}, Lcom/squareup/moshi/CollectionJsonAdapter;->newLinkedHashSetAdapter(Ljava/lang/reflect/Type;Lcom/squareup/moshi/Moshi;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/JsonAdapter;

    move-result-object v1

    goto :goto_0
.end method
