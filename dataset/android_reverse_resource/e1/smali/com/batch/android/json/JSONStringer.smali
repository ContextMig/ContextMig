.class public Lcom/batch/android/json/JSONStringer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/json/JSONStringer$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/StringBuilder;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/json/JSONStringer$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/batch/android/json/JSONStringer;->b:Ljava/util/List;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/json/JSONStringer;->c:Ljava/lang/String;

    .line 124
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "indentSpaces"    # I

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/batch/android/json/JSONStringer;->b:Ljava/util/List;

    .line 127
    new-array v0, p1, [C

    .line 128
    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 129
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Lcom/batch/android/json/JSONStringer;->c:Ljava/lang/String;

    .line 130
    return-void
.end method

.method private a()Lcom/batch/android/json/JSONStringer$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Lcom/batch/android/json/JSONException;

    const-string v1, "Nesting problem"

    invoke-direct {v0, v1}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/batch/android/json/JSONStringer;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/json/JSONStringer$a;

    return-object v0
.end method

.method private a(Lcom/batch/android/json/JSONStringer$a;)V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/batch/android/json/JSONStringer;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 303
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    .line 305
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 313
    sparse-switch v3, :sswitch_data_0

    .line 341
    const/16 v4, 0x1f

    if-gt v3, v4, :cond_0

    .line 342
    iget-object v4, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    const-string v5, "\\u%04x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :sswitch_0
    iget-object v4, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 321
    :sswitch_1
    iget-object v3, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    const-string v4, "\\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 325
    :sswitch_2
    iget-object v3, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    const-string v4, "\\b"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 329
    :sswitch_3
    iget-object v3, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    const-string v4, "\\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 333
    :sswitch_4
    iget-object v3, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    const-string v4, "\\r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 337
    :sswitch_5
    iget-object v3, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    const-string v4, "\\f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 344
    :cond_0
    iget-object v4, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    return-void

    .line 313
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_3
        0xc -> :sswitch_5
        0xd -> :sswitch_4
        0x22 -> :sswitch_0
        0x2f -> :sswitch_0
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method private b()V
    .locals 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 362
    :cond_0
    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/batch/android/json/JSONStringer;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/batch/android/json/JSONStringer;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/batch/android/json/JSONStringer;->a()Lcom/batch/android/json/JSONStringer$a;

    move-result-object v0

    .line 385
    sget-object v1, Lcom/batch/android/json/JSONStringer$a;->e:Lcom/batch/android/json/JSONStringer$a;

    if-ne v0, v1, :cond_1

    .line 386
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    :cond_0
    invoke-direct {p0}, Lcom/batch/android/json/JSONStringer;->b()V

    .line 391
    sget-object v0, Lcom/batch/android/json/JSONStringer$a;->d:Lcom/batch/android/json/JSONStringer$a;

    invoke-direct {p0, v0}, Lcom/batch/android/json/JSONStringer;->a(Lcom/batch/android/json/JSONStringer$a;)V

    .line 392
    return-void

    .line 387
    :cond_1
    sget-object v1, Lcom/batch/android/json/JSONStringer$a;->c:Lcom/batch/android/json/JSONStringer$a;

    if-eq v0, v1, :cond_0

    .line 388
    new-instance v0, Lcom/batch/android/json/JSONException;

    const-string v1, "Nesting problem"

    invoke-direct {v0, v1}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    invoke-direct {p0}, Lcom/batch/android/json/JSONStringer;->a()Lcom/batch/android/json/JSONStringer$a;

    move-result-object v0

    .line 405
    sget-object v1, Lcom/batch/android/json/JSONStringer$a;->a:Lcom/batch/android/json/JSONStringer$a;

    if-ne v0, v1, :cond_2

    .line 406
    sget-object v0, Lcom/batch/android/json/JSONStringer$a;->b:Lcom/batch/android/json/JSONStringer$a;

    invoke-direct {p0, v0}, Lcom/batch/android/json/JSONStringer;->a(Lcom/batch/android/json/JSONStringer$a;)V

    .line 407
    invoke-direct {p0}, Lcom/batch/android/json/JSONStringer;->b()V

    goto :goto_0

    .line 408
    :cond_2
    sget-object v1, Lcom/batch/android/json/JSONStringer$a;->b:Lcom/batch/android/json/JSONStringer$a;

    if-ne v0, v1, :cond_3

    .line 409
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 410
    invoke-direct {p0}, Lcom/batch/android/json/JSONStringer;->b()V

    goto :goto_0

    .line 411
    :cond_3
    sget-object v1, Lcom/batch/android/json/JSONStringer$a;->d:Lcom/batch/android/json/JSONStringer$a;

    if-ne v0, v1, :cond_5

    .line 412
    iget-object v1, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->c:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ":"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    sget-object v0, Lcom/batch/android/json/JSONStringer$a;->e:Lcom/batch/android/json/JSONStringer$a;

    invoke-direct {p0, v0}, Lcom/batch/android/json/JSONStringer;->a(Lcom/batch/android/json/JSONStringer$a;)V

    goto :goto_0

    .line 412
    :cond_4
    const-string v0, ": "

    goto :goto_1

    .line 414
    :cond_5
    sget-object v1, Lcom/batch/android/json/JSONStringer$a;->f:Lcom/batch/android/json/JSONStringer$a;

    if-eq v0, v1, :cond_0

    .line 415
    new-instance v0, Lcom/batch/android/json/JSONException;

    const-string v1, "Nesting problem"

    invoke-direct {v0, v1}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a(Lcom/batch/android/json/JSONStringer$a;Lcom/batch/android/json/JSONStringer$a;Ljava/lang/String;)Lcom/batch/android/json/JSONStringer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/batch/android/json/JSONStringer;->a()Lcom/batch/android/json/JSONStringer$a;

    move-result-object v0

    .line 190
    if-eq v0, p2, :cond_0

    if-eq v0, p1, :cond_0

    .line 191
    new-instance v0, Lcom/batch/android/json/JSONException;

    const-string v1, "Nesting problem"

    invoke-direct {v0, v1}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/batch/android/json/JSONStringer;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/batch/android/json/JSONStringer;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 195
    if-ne v0, p2, :cond_1

    .line 196
    invoke-direct {p0}, Lcom/batch/android/json/JSONStringer;->b()V

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    return-object p0
.end method

.method a(Lcom/batch/android/json/JSONStringer$a;Ljava/lang/String;)Lcom/batch/android/json/JSONStringer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 176
    new-instance v0, Lcom/batch/android/json/JSONException;

    const-string v1, "Nesting problem: multiple top-level roots"

    invoke-direct {v0, v1}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/batch/android/json/JSONStringer;->d()V

    .line 179
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    return-object p0
.end method

.method public array()Lcom/batch/android/json/JSONStringer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 139
    sget-object v0, Lcom/batch/android/json/JSONStringer$a;->a:Lcom/batch/android/json/JSONStringer$a;

    const-string v1, "["

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONStringer;->a(Lcom/batch/android/json/JSONStringer$a;Ljava/lang/String;)Lcom/batch/android/json/JSONStringer;

    move-result-object v0

    return-object v0
.end method

.method public endArray()Lcom/batch/android/json/JSONStringer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 148
    sget-object v0, Lcom/batch/android/json/JSONStringer$a;->a:Lcom/batch/android/json/JSONStringer$a;

    sget-object v1, Lcom/batch/android/json/JSONStringer$a;->b:Lcom/batch/android/json/JSONStringer$a;

    const-string v2, "]"

    invoke-virtual {p0, v0, v1, v2}, Lcom/batch/android/json/JSONStringer;->a(Lcom/batch/android/json/JSONStringer$a;Lcom/batch/android/json/JSONStringer$a;Ljava/lang/String;)Lcom/batch/android/json/JSONStringer;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lcom/batch/android/json/JSONStringer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 167
    sget-object v0, Lcom/batch/android/json/JSONStringer$a;->c:Lcom/batch/android/json/JSONStringer$a;

    sget-object v1, Lcom/batch/android/json/JSONStringer$a;->e:Lcom/batch/android/json/JSONStringer$a;

    const-string v2, "}"

    invoke-virtual {p0, v0, v1, v2}, Lcom/batch/android/json/JSONStringer;->a(Lcom/batch/android/json/JSONStringer$a;Lcom/batch/android/json/JSONStringer$a;Ljava/lang/String;)Lcom/batch/android/json/JSONStringer;

    move-result-object v0

    return-object v0
.end method

.method public key(Ljava/lang/String;)Lcom/batch/android/json/JSONStringer;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 371
    if-nez p1, :cond_0

    .line 372
    new-instance v0, Lcom/batch/android/json/JSONException;

    const-string v1, "Names must be non-null"

    invoke-direct {v0, v1}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/batch/android/json/JSONStringer;->c()V

    .line 375
    invoke-direct {p0, p1}, Lcom/batch/android/json/JSONStringer;->a(Ljava/lang/String;)V

    .line 376
    return-object p0
.end method

.method public object()Lcom/batch/android/json/JSONStringer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 158
    sget-object v0, Lcom/batch/android/json/JSONStringer$a;->c:Lcom/batch/android/json/JSONStringer$a;

    const-string v1, "{"

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONStringer;->a(Lcom/batch/android/json/JSONStringer$a;Ljava/lang/String;)Lcom/batch/android/json/JSONStringer;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public value(D)Lcom/batch/android/json/JSONStringer;
    .locals 3
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    new-instance v0, Lcom/batch/android/json/JSONException;

    const-string v1, "Nesting problem"

    invoke-direct {v0, v1}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/batch/android/json/JSONStringer;->d()V

    .line 284
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcom/batch/android/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    return-object p0
.end method

.method public value(J)Lcom/batch/android/json/JSONStringer;
    .locals 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    new-instance v0, Lcom/batch/android/json/JSONException;

    const-string v1, "Nesting problem"

    invoke-direct {v0, v1}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/batch/android/json/JSONStringer;->d()V

    .line 298
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 299
    return-object p0
.end method

.method public value(Ljava/lang/Object;)Lcom/batch/android/json/JSONStringer;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    new-instance v0, Lcom/batch/android/json/JSONException;

    const-string v1, "Nesting problem"

    invoke-direct {v0, v1}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    instance-of v0, p1, Lcom/batch/android/json/JSONArray;

    if-eqz v0, :cond_1

    .line 233
    check-cast p1, Lcom/batch/android/json/JSONArray;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lcom/batch/android/json/JSONArray;->a(Lcom/batch/android/json/JSONStringer;)V

    .line 255
    :goto_0
    return-object p0

    .line 236
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/batch/android/json/JSONObject;

    if-eqz v0, :cond_2

    .line 237
    check-cast p1, Lcom/batch/android/json/JSONObject;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lcom/batch/android/json/JSONObject;->a(Lcom/batch/android/json/JSONStringer;)V

    goto :goto_0

    .line 241
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0}, Lcom/batch/android/json/JSONStringer;->d()V

    .line 243
    if-eqz p1, :cond_3

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_3

    sget-object v0, Lcom/batch/android/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_4

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 248
    :cond_4
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_5

    .line 249
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/Number;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1}, Lcom/batch/android/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 252
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/batch/android/json/JSONStringer;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public value(Z)Lcom/batch/android/json/JSONStringer;
    .locals 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    new-instance v0, Lcom/batch/android/json/JSONException;

    const-string v1, "Nesting problem"

    invoke-direct {v0, v1}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    invoke-direct {p0}, Lcom/batch/android/json/JSONStringer;->d()V

    .line 268
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 269
    return-object p0
.end method
