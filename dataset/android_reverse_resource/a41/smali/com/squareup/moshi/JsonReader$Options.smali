.class final Lcom/squareup/moshi/JsonReader$Options;
.super Ljava/lang/Object;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Options"
.end annotation


# instance fields
.field final doubleQuoteSuffix:Lokio/Options;

.field final strings:[Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;Lokio/Options;)V
    .locals 0
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "doubleQuoteSuffix"    # Lokio/Options;

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lcom/squareup/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    .line 374
    iput-object p2, p0, Lcom/squareup/moshi/JsonReader$Options;->doubleQuoteSuffix:Lokio/Options;

    .line 375
    return-void
.end method

.method public static varargs of([Ljava/lang/String;)Lcom/squareup/moshi/JsonReader$Options;
    .locals 7
    .param p0, "strings"    # [Ljava/lang/String;

    .prologue
    .line 379
    :try_start_0
    array-length v4, p0

    new-array v3, v4, [Lokio/ByteString;

    .line 380
    .local v3, "result":[Lokio/ByteString;
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 381
    .local v0, "buffer":Lokio/Buffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_0

    .line 382
    aget-object v4, p0, v2

    invoke-static {v0, v4}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->string(Lokio/BufferedSink;Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    .line 384
    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v4

    aput-object v4, v3, v2

    .line 381
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 386
    :cond_0
    new-instance v5, Lcom/squareup/moshi/JsonReader$Options;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-static {v3}, Lokio/Options;->of([Lokio/ByteString;)Lokio/Options;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/squareup/moshi/JsonReader$Options;-><init>([Ljava/lang/String;Lokio/Options;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 387
    .end local v0    # "buffer":Lokio/Buffer;
    .end local v2    # "i":I
    .end local v3    # "result":[Lokio/ByteString;
    :catch_0
    move-exception v1

    .line 388
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method
