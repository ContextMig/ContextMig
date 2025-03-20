.class final Lcom/batch/android/c/h;
.super Lcom/batch/android/c/g;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/batch/android/c/g;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "application/hex"

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    :try_start_0
    invoke-static {p1}, Lcom/batch/android/c/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batch/android/c/h;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/c;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 45
    const-string v1, "Error while encrypting AES string"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a([B)[B
    .locals 2

    .prologue
    .line 27
    :try_start_0
    invoke-super {p0, p1}, Lcom/batch/android/c/g;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/c;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/c;->a(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    .line 29
    :catch_0
    move-exception v0

    .line 31
    const-string v1, "Error while encrypting AES bytes"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    :try_start_0
    invoke-static {p1}, Lcom/batch/android/c/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batch/android/c/h;->b([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/c;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 73
    const-string v1, "Error while decrypting AES string"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b([B)[B
    .locals 2

    .prologue
    .line 55
    :try_start_0
    invoke-static {p1}, Lcom/batch/android/c/c;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/c;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-super {p0, v0}, Lcom/batch/android/c/g;->b([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 59
    const-string v1, "Error while decrypting AES bytes"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 83
    :try_start_0
    invoke-static {p1}, Lcom/batch/android/c/c;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-super {p0, v0}, Lcom/batch/android/c/g;->b([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    .line 85
    :catch_0
    move-exception v0

    .line 87
    const-string v1, "Error while decrypting AES string to bytes"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    const/4 v0, 0x0

    goto :goto_0
.end method
