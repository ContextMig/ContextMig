.class public Lcom/batch/android/json/JSONArray;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/batch/android/json/JSONArray;->a:Ljava/util/List;

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/batch/android/json/JSONTokener;)V
    .locals 2
    .param p1, "readFrom"    # Lcom/batch/android/json/JSONTokener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Lcom/batch/android/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 93
    instance-of v1, v0, Lcom/batch/android/json/JSONArray;

    if-eqz v1, :cond_0

    .line 94
    check-cast v0, Lcom/batch/android/json/JSONArray;

    iget-object v0, v0, Lcom/batch/android/json/JSONArray;->a:Ljava/util/List;

    iput-object v0, p0, Lcom/batch/android/json/JSONArray;->a:Ljava/util/List;

    .line 98
    return-void

    .line 96
    :cond_0
    const-string v1, "JSONArray"

    invoke-static {v0, v1}, Lcom/batch/android/json/a;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .param p1, "array"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/batch/android/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a primitive array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/batch/android/json/JSONArray;->a:Ljava/util/List;

    .line 120
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 121
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/batch/android/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/batch/android/json/JSONArray;->put(Ljava/lang/Object;)Lcom/batch/android/json/JSONArray;

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Lcom/batch/android/json/JSONTokener;

    invoke-direct {v0, p1}, Lcom/batch/android/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/batch/android/json/JSONArray;-><init>(Lcom/batch/android/json/JSONTokener;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .param p1, "copyFrom"    # Ljava/util/Collection;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/batch/android/json/JSONArray;-><init>()V

    .line 71
    if-eqz p1, :cond_0

    .line 72
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/batch/android/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/batch/android/json/JSONArray;->put(Ljava/lang/Object;)Lcom/batch/android/json/JSONArray;

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method a(Lcom/batch/android/json/JSONStringer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 611
    invoke-virtual {p1}, Lcom/batch/android/json/JSONStringer;->array()Lcom/batch/android/json/JSONStringer;

    .line 612
    iget-object v0, p0, Lcom/batch/android/json/JSONArray;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 613
    invoke-virtual {p1, v1}, Lcom/batch/android/json/JSONStringer;->value(Ljava/lang/Object;)Lcom/batch/android/json/JSONStringer;

    goto :goto_0

    .line 615
    :cond_0
    invoke-virtual {p1}, Lcom/batch/android/json/JSONStringer;->endArray()Lcom/batch/android/json/JSONStringer;

    .line 616
    return-void
.end method

.method a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 193
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 194
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/batch/android/json/a;->a(D)D

    .line 197
    :cond_0
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->put(Ljava/lang/Object;)Lcom/batch/android/json/JSONArray;

    .line 198
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 619
    instance-of v0, p1, Lcom/batch/android/json/JSONArray;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/batch/android/json/JSONArray;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/batch/android/json/JSONArray;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/batch/android/json/JSONArray;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/json/JSONArray;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 288
    if-nez v0, :cond_0

    .line 289
    new-instance v0, Lcom/batch/android/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    new-instance v0, Lcom/batch/android/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range [0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/batch/android/json/JSONArray;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 328
    invoke-static {v0}, Lcom/batch/android/json/a;->a(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v1

    .line 329
    if-nez v1, :cond_0

    .line 330
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "boolean"

    invoke-static {v1, v0, v2}, Lcom/batch/android/json/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0

    .line 332
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 362
    invoke-static {v0}, Lcom/batch/android/json/a;->b(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    .line 363
    if-nez v1, :cond_0

    .line 364
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "double"

    invoke-static {v1, v0, v2}, Lcom/batch/android/json/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0

    .line 366
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getInt(I)I
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 396
    invoke-static {v0}, Lcom/batch/android/json/a;->c(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    .line 397
    if-nez v1, :cond_0

    .line 398
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "int"

    invoke-static {v1, v0, v2}, Lcom/batch/android/json/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0

    .line 400
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getJSONArray(I)Lcom/batch/android/json/JSONArray;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 496
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 497
    instance-of v1, v0, Lcom/batch/android/json/JSONArray;

    if-eqz v1, :cond_0

    .line 498
    check-cast v0, Lcom/batch/android/json/JSONArray;

    return-object v0

    .line 500
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "JSONArray"

    invoke-static {v1, v0, v2}, Lcom/batch/android/json/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0
.end method

.method public getJSONObject(I)Lcom/batch/android/json/JSONObject;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 521
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 522
    instance-of v1, v0, Lcom/batch/android/json/JSONObject;

    if-eqz v1, :cond_0

    .line 523
    check-cast v0, Lcom/batch/android/json/JSONObject;

    return-object v0

    .line 525
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "JSONObject"

    invoke-static {v1, v0, v2}, Lcom/batch/android/json/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0
.end method

.method public getLong(I)J
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 430
    invoke-static {v0}, Lcom/batch/android/json/a;->d(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    .line 431
    if-nez v1, :cond_0

    .line 432
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "long"

    invoke-static {v1, v0, v2}, Lcom/batch/android/json/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0

    .line 434
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 462
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 463
    invoke-static {v0}, Lcom/batch/android/json/a;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 464
    if-nez v1, :cond_0

    .line 465
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "String"

    invoke-static {v1, v0, v2}, Lcom/batch/android/json/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0

    .line 467
    :cond_0
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/batch/android/json/JSONArray;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_0

    sget-object v1, Lcom/batch/android/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public join(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 566
    new-instance v1, Lcom/batch/android/json/JSONStringer;

    invoke-direct {v1}, Lcom/batch/android/json/JSONStringer;-><init>()V

    .line 567
    sget-object v0, Lcom/batch/android/json/JSONStringer$a;->f:Lcom/batch/android/json/JSONStringer$a;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/batch/android/json/JSONStringer;->a(Lcom/batch/android/json/JSONStringer$a;Ljava/lang/String;)Lcom/batch/android/json/JSONStringer;

    .line 568
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/batch/android/json/JSONArray;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    .line 569
    if-lez v0, :cond_0

    .line 570
    iget-object v3, v1, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    :cond_0
    iget-object v3, p0, Lcom/batch/android/json/JSONArray;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/batch/android/json/JSONStringer;->value(Ljava/lang/Object;)Lcom/batch/android/json/JSONStringer;

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 574
    :cond_1
    sget-object v0, Lcom/batch/android/json/JSONStringer$a;->f:Lcom/batch/android/json/JSONStringer$a;

    sget-object v2, Lcom/batch/android/json/JSONStringer$a;->f:Lcom/batch/android/json/JSONStringer$a;

    const-string v3, ""

    invoke-virtual {v1, v0, v2, v3}, Lcom/batch/android/json/JSONStringer;->a(Lcom/batch/android/json/JSONStringer$a;Lcom/batch/android/json/JSONStringer$a;Ljava/lang/String;)Lcom/batch/android/json/JSONStringer;

    .line 575
    iget-object v0, v1, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/batch/android/json/JSONArray;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public opt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 302
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/batch/android/json/JSONArray;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 303
    :cond_0
    const/4 v0, 0x0

    .line 305
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/batch/android/json/JSONArray;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public optBoolean(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/batch/android/json/JSONArray;->optBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public optBoolean(IZ)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "fallback"    # Z

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 349
    invoke-static {v0}, Lcom/batch/android/json/a;->a(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    .line 350
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .end local p2    # "fallback":Z
    :cond_0
    return p2
.end method

.method public optDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 374
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, p1, v0, v1}, Lcom/batch/android/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public optDouble(ID)D
    .locals 2
    .param p1, "index"    # I
    .param p2, "fallback"    # D

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 383
    invoke-static {v0}, Lcom/batch/android/json/a;->b(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    .line 384
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    .end local p2    # "fallback":D
    :cond_0
    return-wide p2
.end method

.method public optInt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 408
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/batch/android/json/JSONArray;->optInt(II)I

    move-result v0

    return v0
.end method

.method public optInt(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "fallback"    # I

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 417
    invoke-static {v0}, Lcom/batch/android/json/a;->c(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .end local p2    # "fallback":I
    :cond_0
    return p2
.end method

.method public optJSONArray(I)Lcom/batch/android/json/JSONArray;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 509
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 510
    instance-of v1, v0, Lcom/batch/android/json/JSONArray;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/batch/android/json/JSONArray;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optJSONObject(I)Lcom/batch/android/json/JSONObject;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 534
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 535
    instance-of v1, v0, Lcom/batch/android/json/JSONObject;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/batch/android/json/JSONObject;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optLong(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 442
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/batch/android/json/JSONArray;->optLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(IJ)J
    .locals 2
    .param p1, "index"    # I
    .param p2, "fallback"    # J

    .prologue
    .line 450
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 451
    invoke-static {v0}, Lcom/batch/android/json/a;->d(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    .line 452
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .end local p2    # "fallback":J
    :cond_0
    return-wide p2
.end method

.method public optString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 475
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/batch/android/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .param p2, "fallback"    # Ljava/lang/String;

    .prologue
    .line 483
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 484
    invoke-static {v0}, Lcom/batch/android/json/a;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 485
    if-eqz v0, :cond_0

    move-object p2, v0

    .end local p2    # "fallback":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public put(D)Lcom/batch/android/json/JSONArray;
    .locals 5
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/batch/android/json/JSONArray;->a:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/batch/android/json/a;->a(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    return-object p0
.end method

.method public put(I)Lcom/batch/android/json/JSONArray;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/batch/android/json/JSONArray;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-object p0
.end method

.method public put(ID)Lcom/batch/android/json/JSONArray;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/batch/android/json/JSONArray;->put(ILjava/lang/Object;)Lcom/batch/android/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(II)Lcom/batch/android/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/batch/android/json/JSONArray;->put(ILjava/lang/Object;)Lcom/batch/android/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(IJ)Lcom/batch/android/json/JSONArray;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/batch/android/json/JSONArray;->put(ILjava/lang/Object;)Lcom/batch/android/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(ILjava/lang/Object;)Lcom/batch/android/json/JSONArray;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 258
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 260
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/batch/android/json/a;->a(D)D

    .line 262
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/batch/android/json/JSONArray;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 263
    iget-object v0, p0, Lcom/batch/android/json/JSONArray;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/batch/android/json/JSONArray;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 266
    return-object p0
.end method

.method public put(IZ)Lcom/batch/android/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/batch/android/json/JSONArray;->put(ILjava/lang/Object;)Lcom/batch/android/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(J)Lcom/batch/android/json/JSONArray;
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 170
    iget-object v0, p0, Lcom/batch/android/json/JSONArray;->a:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    return-object p0
.end method

.method public put(Ljava/lang/Object;)Lcom/batch/android/json/JSONArray;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/batch/android/json/JSONArray;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    return-object p0
.end method

.method public put(Z)Lcom/batch/android/json/JSONArray;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 138
    iget-object v0, p0, Lcom/batch/android/json/JSONArray;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    return-object p0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 313
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/batch/android/json/JSONArray;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 314
    :cond_0
    const/4 v0, 0x0

    .line 316
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/batch/android/json/JSONArray;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public toJSONObject(Lcom/batch/android/json/JSONArray;)Lcom/batch/android/json/JSONObject;
    .locals 5
    .param p1, "names"    # Lcom/batch/android/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 546
    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 547
    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v1

    iget-object v2, p0, Lcom/batch/android/json/JSONArray;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 548
    if-nez v2, :cond_1

    .line 549
    const/4 v0, 0x0

    .line 555
    :cond_0
    return-object v0

    .line 551
    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 552
    invoke-virtual {p1, v1}, Lcom/batch/android/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/batch/android/json/a;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 553
    invoke-virtual {p0, v1}, Lcom/batch/android/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 551
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    :try_start_0
    new-instance v0, Lcom/batch/android/json/JSONStringer;

    invoke-direct {v0}, Lcom/batch/android/json/JSONStringer;-><init>()V

    .line 585
    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONArray;->a(Lcom/batch/android/json/JSONStringer;)V

    .line 586
    invoke-virtual {v0}, Lcom/batch/android/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 588
    :goto_0
    return-object v0

    .line 587
    :catch_0
    move-exception v0

    .line 588
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .param p1, "indentSpaces"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 605
    new-instance v0, Lcom/batch/android/json/JSONStringer;

    invoke-direct {v0, p1}, Lcom/batch/android/json/JSONStringer;-><init>(I)V

    .line 606
    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONArray;->a(Lcom/batch/android/json/JSONStringer;)V

    .line 607
    invoke-virtual {v0}, Lcom/batch/android/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
