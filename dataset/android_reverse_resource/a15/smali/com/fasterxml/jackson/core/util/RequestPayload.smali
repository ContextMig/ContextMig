.class public Lcom/fasterxml/jackson/core/util/RequestPayload;
.super Ljava/lang/Object;
.source "RequestPayload.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected _charset:Ljava/lang/String;

.field protected _payloadAsBytes:[B

.field protected _payloadAsText:Ljava/lang/CharSequence;


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/RequestPayload;->_payloadAsBytes:[B

    if-eqz v1, :cond_0

    .line 60
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/RequestPayload;->_payloadAsBytes:[B

    iget-object v3, p0, Lcom/fasterxml/jackson/core/util/RequestPayload;->_charset:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-object v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 65
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/RequestPayload;->_payloadAsText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
