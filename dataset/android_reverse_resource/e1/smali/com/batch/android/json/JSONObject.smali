.class public Lcom/batch/android/json/JSONObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NULL:Ljava/lang/Object;

.field private static final a:Ljava/lang/Double;


# instance fields
.field private b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/batch/android/json/JSONObject;->a:Ljava/lang/Double;

    .line 102
    new-instance v0, Lcom/batch/android/json/JSONObject$1;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject$1;-><init>()V

    sput-object v0, Lcom/batch/android/json/JSONObject;->NULL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/batch/android/json/JSONObject;->b:Ljava/util/LinkedHashMap;

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/batch/android/json/JSONObject;[Ljava/lang/String;)V
    .locals 5
    .param p1, "copyFrom"    # Lcom/batch/android/json/JSONObject;
    .param p2, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 177
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p2, v0

    .line 178
    invoke-virtual {p1, v2}, Lcom/batch/android/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 179
    if-eqz v3, :cond_0

    .line 180
    iget-object v4, p0, Lcom/batch/android/json/JSONObject;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/batch/android/json/JSONTokener;)V
    .locals 0
    .param p1, "readFrom"    # Lcom/batch/android/json/JSONTokener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-direct {p0, p1}, Lcom/batch/android/json/JSONObject;->a(Lcom/batch/android/json/JSONTokener;)V

    .line 156
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
    .line 167
    new-instance v0, Lcom/batch/android/json/JSONTokener;

    invoke-direct {v0, p1}, Lcom/batch/android/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/batch/android/json/JSONObject;-><init>(Lcom/batch/android/json/JSONTokener;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .param p1, "copyFrom"    # Ljava/util/Map;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 132
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 137
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    if-nez v1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iget-object v3, p0, Lcom/batch/android/json/JSONObject;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 143
    :cond_1
    return-void
.end method

.method private a(Lcom/batch/android/json/JSONTokener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p1}, Lcom/batch/android/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 202
    instance-of v1, v0, Lcom/batch/android/json/JSONObject;

    if-eqz v1, :cond_0

    .line 203
    check-cast v0, Lcom/batch/android/json/JSONObject;

    iget-object v0, v0, Lcom/batch/android/json/JSONObject;->b:Ljava/util/LinkedHashMap;

    iput-object v0, p0, Lcom/batch/android/json/JSONObject;->b:Ljava/util/LinkedHashMap;

    .line 207
    return-void

    .line 205
    :cond_0
    const-string v1, "JSONObject"

    invoke-static {v0, v1}, Lcom/batch/android/json/a;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0
.end method

.method public static numberToString(Ljava/lang/Number;)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 794
    if-nez p0, :cond_0

    .line 795
    new-instance v0, Lcom/batch/android/json/JSONException;

    const-string v1, "Number must be non-null"

    invoke-direct {v0, v1}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 799
    invoke-static {v0, v1}, Lcom/batch/android/json/a;->a(D)D

    .line 802
    sget-object v2, Lcom/batch/android/json/JSONObject;->a:Ljava/lang/Double;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 803
    const-string v0, "-0"

    .line 811
    :goto_0
    return-object v0

    .line 806
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 807
    long-to-double v4, v2

    cmpl-double v0, v0, v4

    if-nez v0, :cond_2

    .line 808
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 811
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 822
    if-nez p0, :cond_0

    .line 823
    const-string v0, "\"\""

    .line 830
    :goto_0
    return-object v0

    .line 826
    :cond_0
    :try_start_0
    new-instance v0, Lcom/batch/android/json/JSONStringer;

    invoke-direct {v0}, Lcom/batch/android/json/JSONStringer;-><init>()V

    .line 827
    sget-object v1, Lcom/batch/android/json/JSONStringer$a;->f:Lcom/batch/android/json/JSONStringer$a;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/json/JSONStringer;->a(Lcom/batch/android/json/JSONStringer$a;Ljava/lang/String;)Lcom/batch/android/json/JSONStringer;

    .line 828
    invoke-virtual {v0, p0}, Lcom/batch/android/json/JSONStringer;->value(Ljava/lang/Object;)Lcom/batch/android/json/JSONStringer;

    .line 829
    sget-object v1, Lcom/batch/android/json/JSONStringer$a;->f:Lcom/batch/android/json/JSONStringer$a;

    sget-object v2, Lcom/batch/android/json/JSONStringer$a;->f:Lcom/batch/android/json/JSONStringer$a;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/batch/android/json/JSONStringer;->a(Lcom/batch/android/json/JSONStringer$a;Lcom/batch/android/json/JSONStringer$a;Ljava/lang/String;)Lcom/batch/android/json/JSONStringer;

    .line 830
    invoke-virtual {v0}, Lcom/batch/android/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 831
    :catch_0
    move-exception v0

    .line 832
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 898
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 899
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 901
    :try_start_0
    new-instance v1, Lcom/batch/android/json/JSONTokener;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/batch/android/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/batch/android/json/JSONObject;->a(Lcom/batch/android/json/JSONTokener;)V
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    return-void

    .line 902
    :catch_0
    move-exception v0

    .line 903
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error while deserializing JSONObject: Bad JSON string"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 906
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error while deserializing JSONObject: unable to find JSON string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static wrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 849
    if-nez p0, :cond_1

    .line 850
    sget-object p0, Lcom/batch/android/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 883
    .end local p0    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 852
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lcom/batch/android/json/JSONArray;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/batch/android/json/JSONObject;

    if-nez v0, :cond_0

    .line 855
    sget-object v0, Lcom/batch/android/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 859
    :try_start_0
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 860
    new-instance v0, Lcom/batch/android/json/JSONArray;

    check-cast p0, Ljava/util/Collection;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/batch/android/json/JSONArray;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    goto :goto_0

    .line 861
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 862
    new-instance v0, Lcom/batch/android/json/JSONArray;

    invoke-direct {v0, p0}, Lcom/batch/android/json/JSONArray;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    .line 864
    :cond_3
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 865
    new-instance v0, Lcom/batch/android/json/JSONObject;

    check-cast p0, Ljava/util/Map;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/batch/android/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object p0, v0

    goto :goto_0

    .line 867
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 878
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 879
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 881
    :catch_0
    move-exception v0

    .line 883
    :cond_5
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/batch/android/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 890
    if-nez v0, :cond_0

    .line 891
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error while serializing JSONObject: NULL JSON string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 894
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 895
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 366
    if-nez p1, :cond_0

    .line 367
    new-instance v0, Lcom/batch/android/json/JSONException;

    const-string v1, "Names must be non-null"

    invoke-direct {v0, v1}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_0
    return-object p1
.end method

.method a(Lcom/batch/android/json/JSONStringer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 780
    invoke-virtual {p1}, Lcom/batch/android/json/JSONStringer;->object()Lcom/batch/android/json/JSONStringer;

    .line 781
    iget-object v0, p0, Lcom/batch/android/json/JSONObject;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 782
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/batch/android/json/JSONStringer;->key(Ljava/lang/String;)Lcom/batch/android/json/JSONStringer;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/batch/android/json/JSONStringer;->value(Ljava/lang/Object;)Lcom/batch/android/json/JSONStringer;

    goto :goto_0

    .line 784
    :cond_0
    invoke-virtual {p1}, Lcom/batch/android/json/JSONStringer;->endObject()Lcom/batch/android/json/JSONStringer;

    .line 785
    return-void
.end method

.method public accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/batch/android/json/JSONObject;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 319
    if-nez v0, :cond_0

    .line 320
    invoke-virtual {p0, p1, p2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    move-result-object p0

    .line 332
    .end local p0    # "this":Lcom/batch/android/json/JSONObject;
    :goto_0
    return-object p0

    .line 323
    .restart local p0    # "this":Lcom/batch/android/json/JSONObject;
    :cond_0
    instance-of v1, v0, Lcom/batch/android/json/JSONArray;

    if-eqz v1, :cond_1

    .line 324
    check-cast v0, Lcom/batch/android/json/JSONArray;

    .line 325
    invoke-virtual {v0, p2}, Lcom/batch/android/json/JSONArray;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 327
    :cond_1
    new-instance v1, Lcom/batch/android/json/JSONArray;

    invoke-direct {v1}, Lcom/batch/android/json/JSONArray;-><init>()V

    .line 328
    invoke-virtual {v1, v0}, Lcom/batch/android/json/JSONArray;->a(Ljava/lang/Object;)V

    .line 329
    invoke-virtual {v1, p2}, Lcom/batch/android/json/JSONArray;->a(Ljava/lang/Object;)V

    .line 330
    iget-object v0, p0, Lcom/batch/android/json/JSONObject;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/batch/android/json/JSONObject;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 350
    instance-of v1, v0, Lcom/batch/android/json/JSONArray;

    if-eqz v1, :cond_0

    .line 351
    check-cast v0, Lcom/batch/android/json/JSONArray;

    .line 360
    :goto_0
    invoke-virtual {v0, p2}, Lcom/batch/android/json/JSONArray;->a(Ljava/lang/Object;)V

    .line 362
    return-object p0

    .line 352
    :cond_0
    if-nez v0, :cond_1

    .line 353
    new-instance v0, Lcom/batch/android/json/JSONArray;

    invoke-direct {v0}, Lcom/batch/android/json/JSONArray;-><init>()V

    .line 354
    iget-object v1, p0, Lcom/batch/android/json/JSONObject;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 357
    :cond_1
    new-instance v0, Lcom/batch/android/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a JSONArray"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lcom/batch/android/json/JSONObject;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 406
    if-nez v0, :cond_0

    .line 407
    new-instance v0, Lcom/batch/android/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_0
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 429
    invoke-static {v0}, Lcom/batch/android/json/a;->a(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v1

    .line 430
    if-nez v1, :cond_0

    .line 431
    const-string v1, "boolean"

    invoke-static {p1, v0, v1}, Lcom/batch/android/json/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0

    .line 433
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 474
    invoke-static {v0}, Lcom/batch/android/json/a;->b(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    .line 475
    if-nez v1, :cond_0

    .line 476
    const-string v1, "double"

    invoke-static {p1, v0, v1}, Lcom/batch/android/json/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0

    .line 478
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 518
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 519
    invoke-static {v0}, Lcom/batch/android/json/a;->c(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    .line 520
    if-nez v1, :cond_0

    .line 521
    const-string v1, "int"

    invoke-static {p1, v0, v1}, Lcom/batch/android/json/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0

    .line 523
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 646
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 647
    instance-of v1, v0, Lcom/batch/android/json/JSONArray;

    if-eqz v1, :cond_0

    .line 648
    check-cast v0, Lcom/batch/android/json/JSONArray;

    return-object v0

    .line 650
    :cond_0
    const-string v1, "JSONArray"

    invoke-static {p1, v0, v1}, Lcom/batch/android/json/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0
.end method

.method public getJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 671
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 672
    instance-of v1, v0, Lcom/batch/android/json/JSONObject;

    if-eqz v1, :cond_0

    .line 673
    check-cast v0, Lcom/batch/android/json/JSONObject;

    return-object v0

    .line 675
    :cond_0
    const-string v1, "JSONObject"

    invoke-static {p1, v0, v1}, Lcom/batch/android/json/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 565
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 566
    invoke-static {v0}, Lcom/batch/android/json/a;->d(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    .line 567
    if-nez v1, :cond_0

    .line 568
    const-string v1, "long"

    invoke-static {p1, v0, v1}, Lcom/batch/android/json/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0

    .line 570
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 601
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 602
    invoke-static {v0}, Lcom/batch/android/json/a;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 603
    if-nez v1, :cond_0

    .line 604
    const-string v1, "String"

    invoke-static {p1, v0, v1}, Lcom/batch/android/json/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0

    .line 606
    :cond_0
    return-object v1
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/batch/android/json/JSONObject;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNull(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/batch/android/json/JSONObject;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 388
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

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 731
    iget-object v0, p0, Lcom/batch/android/json/JSONObject;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keys()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 717
    iget-object v0, p0, Lcom/batch/android/json/JSONObject;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/batch/android/json/JSONObject;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public names()Lcom/batch/android/json/JSONArray;
    .locals 3

    .prologue
    .line 739
    iget-object v0, p0, Lcom/batch/android/json/JSONObject;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/batch/android/json/JSONArray;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/batch/android/json/JSONObject;->b:Ljava/util/LinkedHashMap;

    .line 741
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/batch/android/json/JSONArray;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public opt(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/batch/android/json/JSONObject;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public optBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/batch/android/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public optBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallback"    # Z

    .prologue
    .line 449
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 450
    invoke-static {v0}, Lcom/batch/android/json/a;->a(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .end local p2    # "fallback":Z
    :cond_0
    return p2
.end method

.method public optDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 486
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, p1, v0, v1}, Lcom/batch/android/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public optDouble(Ljava/lang/String;D)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallback"    # D

    .prologue
    .line 494
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 495
    invoke-static {v0}, Lcom/batch/android/json/a;->b(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    .line 496
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    .end local p2    # "fallback":D
    :cond_0
    return-wide p2
.end method

.method public optInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 531
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/batch/android/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public optInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallback"    # I

    .prologue
    .line 539
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 540
    invoke-static {v0}, Lcom/batch/android/json/a;->c(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 541
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .end local p2    # "fallback":I
    :cond_0
    return p2
.end method

.method public optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 659
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 660
    instance-of v1, v0, Lcom/batch/android/json/JSONArray;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/batch/android/json/JSONArray;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 684
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 685
    instance-of v1, v0, Lcom/batch/android/json/JSONObject;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/batch/android/json/JSONObject;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 579
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/batch/android/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallback"    # J

    .prologue
    .line 589
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 590
    invoke-static {v0}, Lcom/batch/android/json/a;->d(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    .line 591
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .end local p2    # "fallback":J
    :cond_0
    return-wide p2
.end method

.method public optString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 614
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/batch/android/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallback"    # Ljava/lang/String;

    .prologue
    .line 622
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 623
    invoke-static {v0}, Lcom/batch/android/json/a;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 624
    if-eqz v0, :cond_0

    move-object p2, v0

    .end local p2    # "fallback":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public put(Ljava/lang/String;D)Lcom/batch/android/json/JSONObject;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/batch/android/json/JSONObject;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/batch/android/json/a;->a(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    return-object p0
.end method

.method public put(Ljava/lang/String;I)Lcom/batch/android/json/JSONObject;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/batch/android/json/JSONObject;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    return-object p0
.end method

.method public put(Ljava/lang/String;J)Lcom/batch/android/json/JSONObject;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/batch/android/json/JSONObject;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 274
    if-nez p2, :cond_0

    .line 275
    iget-object v0, p0, Lcom/batch/android/json/JSONObject;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :goto_0
    return-object p0

    .line 278
    :cond_0
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 280
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/batch/android/json/a;->a(D)D

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/batch/android/json/JSONObject;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Z)Lcom/batch/android/json/JSONObject;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/batch/android/json/JSONObject;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-object p0
.end method

.method public putOpt(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 291
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 294
    .end local p0    # "this":Lcom/batch/android/json/JSONObject;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/batch/android/json/JSONObject;
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    move-result-object p0

    goto :goto_0
.end method

.method public reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallback"    # Ljava/lang/Boolean;

    .prologue
    .line 459
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 461
    sget-object v1, Lcom/batch/android/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Lcom/batch/android/json/a;->a(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    .line 462
    :goto_0
    if-eqz v0, :cond_0

    move-object p2, v0

    .end local p2    # "fallback":Ljava/lang/Boolean;
    :cond_0
    return-object p2

    .line 461
    .restart local p2    # "fallback":Ljava/lang/Boolean;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reallyOptDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallback"    # Ljava/lang/Double;

    .prologue
    .line 504
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 506
    sget-object v1, Lcom/batch/android/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Lcom/batch/android/json/a;->b(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    .line 507
    :goto_0
    if-eqz v0, :cond_0

    move-object p2, v0

    .end local p2    # "fallback":Ljava/lang/Double;
    :cond_0
    return-object p2

    .line 506
    .restart local p2    # "fallback":Ljava/lang/Double;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reallyOptInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallback"    # Ljava/lang/Integer;

    .prologue
    .line 549
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 551
    sget-object v1, Lcom/batch/android/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Lcom/batch/android/json/a;->c(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 552
    :goto_0
    if-eqz v0, :cond_0

    move-object p2, v0

    .end local p2    # "fallback":Ljava/lang/Integer;
    :cond_0
    return-object p2

    .line 551
    .restart local p2    # "fallback":Ljava/lang/Integer;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallback"    # Ljava/lang/String;

    .prologue
    .line 632
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 634
    sget-object v1, Lcom/batch/android/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Lcom/batch/android/json/a;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 635
    :goto_0
    if-eqz v0, :cond_0

    move-object p2, v0

    .end local p2    # "fallback":Ljava/lang/String;
    :cond_0
    return-object p2

    .line 634
    .restart local p2    # "fallback":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/batch/android/json/JSONObject;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toJSONArray(Lcom/batch/android/json/JSONArray;)Lcom/batch/android/json/JSONArray;
    .locals 4
    .param p1, "names"    # Lcom/batch/android/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 694
    new-instance v1, Lcom/batch/android/json/JSONArray;

    invoke-direct {v1}, Lcom/batch/android/json/JSONArray;-><init>()V

    .line 695
    if-nez p1, :cond_1

    .line 706
    :cond_0
    :goto_0
    return-object v0

    .line 698
    :cond_1
    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v2

    .line 699
    if-eqz v2, :cond_0

    .line 702
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    .line 703
    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/batch/android/json/a;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 704
    invoke-virtual {p0, v3}, Lcom/batch/android/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/batch/android/json/JSONArray;->put(Ljava/lang/Object;)Lcom/batch/android/json/JSONArray;

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 706
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 750
    :try_start_0
    new-instance v0, Lcom/batch/android/json/JSONStringer;

    invoke-direct {v0}, Lcom/batch/android/json/JSONStringer;-><init>()V

    .line 751
    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->a(Lcom/batch/android/json/JSONStringer;)V

    .line 752
    invoke-virtual {v0}, Lcom/batch/android/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 754
    :goto_0
    return-object v0

    .line 753
    :catch_0
    move-exception v0

    .line 754
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
    .line 774
    new-instance v0, Lcom/batch/android/json/JSONStringer;

    invoke-direct {v0, p1}, Lcom/batch/android/json/JSONStringer;-><init>(I)V

    .line 775
    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->a(Lcom/batch/android/json/JSONStringer;)V

    .line 776
    invoke-virtual {v0}, Lcom/batch/android/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
