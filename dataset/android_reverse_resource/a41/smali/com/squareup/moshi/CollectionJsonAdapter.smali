.class abstract Lcom/squareup/moshi/CollectionJsonAdapter;
.super Lcom/squareup/moshi/JsonAdapter;
.source "CollectionJsonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/util/Collection",
        "<TT;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/moshi/JsonAdapter",
        "<TC;>;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/squareup/moshi/JsonAdapter$Factory;


# instance fields
.field private final elementAdapter:Lcom/squareup/moshi/JsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/moshi/JsonAdapter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/squareup/moshi/CollectionJsonAdapter$1;

    invoke-direct {v0}, Lcom/squareup/moshi/CollectionJsonAdapter$1;-><init>()V

    sput-object v0, Lcom/squareup/moshi/CollectionJsonAdapter;->FACTORY:Lcom/squareup/moshi/JsonAdapter$Factory;

    return-void
.end method

.method private constructor <init>(Lcom/squareup/moshi/JsonAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/JsonAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/squareup/moshi/CollectionJsonAdapter;, "Lcom/squareup/moshi/CollectionJsonAdapter<TC;TT;>;"
    .local p1, "elementAdapter":Lcom/squareup/moshi/JsonAdapter;, "Lcom/squareup/moshi/JsonAdapter<TT;>;"
    invoke-direct {p0}, Lcom/squareup/moshi/JsonAdapter;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/squareup/moshi/CollectionJsonAdapter;->elementAdapter:Lcom/squareup/moshi/JsonAdapter;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/moshi/JsonAdapter;Lcom/squareup/moshi/CollectionJsonAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/moshi/JsonAdapter;
    .param p2, "x1"    # Lcom/squareup/moshi/CollectionJsonAdapter$1;

    .prologue
    .line 28
    .local p0, "this":Lcom/squareup/moshi/CollectionJsonAdapter;, "Lcom/squareup/moshi/CollectionJsonAdapter<TC;TT;>;"
    invoke-direct {p0, p1}, Lcom/squareup/moshi/CollectionJsonAdapter;-><init>(Lcom/squareup/moshi/JsonAdapter;)V

    return-void
.end method

.method static newArrayListAdapter(Ljava/lang/reflect/Type;Lcom/squareup/moshi/Moshi;)Lcom/squareup/moshi/JsonAdapter;
    .locals 3
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "moshi"    # Lcom/squareup/moshi/Moshi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcom/squareup/moshi/Moshi;",
            ")",
            "Lcom/squareup/moshi/JsonAdapter",
            "<",
            "Ljava/util/Collection",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 50
    const-class v2, Ljava/util/Collection;

    invoke-static {p0, v2}, Lcom/squareup/moshi/Types;->collectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 51
    .local v1, "elementType":Ljava/lang/reflect/Type;
    invoke-virtual {p1, v1}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/reflect/Type;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v0

    .line 52
    .local v0, "elementAdapter":Lcom/squareup/moshi/JsonAdapter;, "Lcom/squareup/moshi/JsonAdapter<TT;>;"
    new-instance v2, Lcom/squareup/moshi/CollectionJsonAdapter$2;

    invoke-direct {v2, v0}, Lcom/squareup/moshi/CollectionJsonAdapter$2;-><init>(Lcom/squareup/moshi/JsonAdapter;)V

    return-object v2
.end method

.method static newLinkedHashSetAdapter(Ljava/lang/reflect/Type;Lcom/squareup/moshi/Moshi;)Lcom/squareup/moshi/JsonAdapter;
    .locals 3
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "moshi"    # Lcom/squareup/moshi/Moshi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcom/squareup/moshi/Moshi;",
            ")",
            "Lcom/squareup/moshi/JsonAdapter",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 60
    const-class v2, Ljava/util/Collection;

    invoke-static {p0, v2}, Lcom/squareup/moshi/Types;->collectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 61
    .local v1, "elementType":Ljava/lang/reflect/Type;
    invoke-virtual {p1, v1}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/reflect/Type;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v0

    .line 62
    .local v0, "elementAdapter":Lcom/squareup/moshi/JsonAdapter;, "Lcom/squareup/moshi/JsonAdapter<TT;>;"
    new-instance v2, Lcom/squareup/moshi/CollectionJsonAdapter$3;

    invoke-direct {v2, v0}, Lcom/squareup/moshi/CollectionJsonAdapter$3;-><init>(Lcom/squareup/moshi/JsonAdapter;)V

    return-object v2
.end method


# virtual methods
.method public bridge synthetic fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/squareup/moshi/CollectionJsonAdapter;, "Lcom/squareup/moshi/CollectionJsonAdapter<TC;TT;>;"
    invoke-virtual {p0, p1}, Lcom/squareup/moshi/CollectionJsonAdapter;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/util/Collection;
    .locals 2
    .param p1, "reader"    # Lcom/squareup/moshi/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/JsonReader;",
            ")TC;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/squareup/moshi/CollectionJsonAdapter;, "Lcom/squareup/moshi/CollectionJsonAdapter<TC;TT;>;"
    invoke-virtual {p0}, Lcom/squareup/moshi/CollectionJsonAdapter;->newCollection()Ljava/util/Collection;

    move-result-object v0

    .line 73
    .local v0, "result":Ljava/util/Collection;, "TC;"
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->beginArray()V

    .line 74
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/squareup/moshi/CollectionJsonAdapter;->elementAdapter:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {v1, p1}, Lcom/squareup/moshi/JsonAdapter;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->endArray()V

    .line 78
    return-object v0
.end method

.method abstract newCollection()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public bridge synthetic toJson(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/squareup/moshi/CollectionJsonAdapter;, "Lcom/squareup/moshi/CollectionJsonAdapter<TC;TT;>;"
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/moshi/CollectionJsonAdapter;->toJson(Lcom/squareup/moshi/JsonWriter;Ljava/util/Collection;)V

    return-void
.end method

.method public toJson(Lcom/squareup/moshi/JsonWriter;Ljava/util/Collection;)V
    .locals 3
    .param p1, "writer"    # Lcom/squareup/moshi/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/JsonWriter;",
            "TC;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/squareup/moshi/CollectionJsonAdapter;, "Lcom/squareup/moshi/CollectionJsonAdapter<TC;TT;>;"
    .local p2, "value":Ljava/util/Collection;, "TC;"
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonWriter;->beginArray()Lcom/squareup/moshi/JsonWriter;

    .line 83
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 84
    .local v0, "element":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/squareup/moshi/CollectionJsonAdapter;->elementAdapter:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {v2, p1, v0}, Lcom/squareup/moshi/JsonAdapter;->toJson(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    .end local v0    # "element":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonWriter;->endArray()Lcom/squareup/moshi/JsonWriter;

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    .local p0, "this":Lcom/squareup/moshi/CollectionJsonAdapter;, "Lcom/squareup/moshi/CollectionJsonAdapter<TC;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/squareup/moshi/CollectionJsonAdapter;->elementAdapter:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".collection()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
