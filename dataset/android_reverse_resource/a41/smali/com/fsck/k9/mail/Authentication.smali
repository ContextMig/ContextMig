.class public Lcom/fsck/k9/mail/Authentication;
.super Ljava/lang/Object;
.source "Authentication.java"


# static fields
.field private static final US_ASCII:Ljava/lang/String; = "US-ASCII"

.field private static final XOAUTH_FORMAT:Ljava/lang/String; = "user=%1s\u0001auth=Bearer %2s\u0001\u0001"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeCramMd5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "b64Nonce"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 30
    :try_start_0
    const-string v3, "US-ASCII"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 31
    .local v1, "b64NonceBytes":[B
    invoke-static {p0, p1, v1}, Lcom/fsck/k9/mail/Authentication;->computeCramMd5Bytes(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    .line 32
    .local v0, "b64CRAM":[B
    new-instance v3, Ljava/lang/String;

    const-string v4, "US-ASCII"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v3

    .line 33
    .end local v0    # "b64CRAM":[B
    .end local v1    # "b64NonceBytes":[B
    :catch_0
    move-exception v2

    .line 34
    .local v2, "e":Lcom/fsck/k9/mail/MessagingException;
    throw v2

    .line 35
    .end local v2    # "e":Lcom/fsck/k9/mail/MessagingException;
    :catch_1
    move-exception v2

    .line 36
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/fsck/k9/mail/MessagingException;

    const-string v4, "This shouldn\'t happen"

    invoke-direct {v3, v4, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static computeCramMd5Bytes(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 14
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "b64Nonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 57
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/fsck/k9/mail/filter/Base64;->decodeBase64([B)[B

    move-result-object v6

    .line 59
    .local v6, "nonce":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 60
    .local v10, "secretBytes":[B
    const-string v11, "MD5"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 61
    .local v5, "md":Ljava/security/MessageDigest;
    array-length v11, v10

    const/16 v12, 0x40

    if-le v11, v12, :cond_0

    .line 62
    invoke-virtual {v5, v10}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v10

    .line 65
    :cond_0
    const/16 v11, 0x40

    new-array v4, v11, [B

    .line 66
    .local v4, "ipad":[B
    const/16 v11, 0x40

    new-array v7, v11, [B

    .line 67
    .local v7, "opad":[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v10

    invoke-static {v10, v11, v4, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v10

    invoke-static {v10, v11, v7, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v11, v4

    if-ge v3, v11, :cond_1

    aget-byte v11, v4, v3

    xor-int/lit8 v11, v11, 0x36

    int-to-byte v11, v11

    aput-byte v11, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :cond_1
    const/4 v3, 0x0

    :goto_1
    array-length v11, v7

    if-ge v3, v11, :cond_2

    aget-byte v11, v7, v3

    xor-int/lit8 v11, v11, 0x5c

    int-to-byte v11, v11

    aput-byte v11, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 73
    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 75
    .local v2, "firstPass":[B
    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 76
    invoke-virtual {v5, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v9

    .line 78
    .local v9, "result":[B
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v9}, Lcom/fsck/k9/mail/filter/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 79
    .local v8, "plainCRAM":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-static {v11}, Lcom/fsck/k9/mail/filter/Base64;->encodeBase64([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 81
    .local v0, "b64CRAM":[B
    return-object v0

    .line 83
    .end local v0    # "b64CRAM":[B
    .end local v2    # "firstPass":[B
    .end local v3    # "i":I
    .end local v4    # "ipad":[B
    .end local v5    # "md":Ljava/security/MessageDigest;
    .end local v6    # "nonce":[B
    .end local v7    # "opad":[B
    .end local v8    # "plainCRAM":Ljava/lang/String;
    .end local v9    # "result":[B
    .end local v10    # "secretBytes":[B
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    new-instance v11, Lcom/fsck/k9/mail/MessagingException;

    const-string v12, "Something went wrong during CRAM-MD5 computation"

    invoke-direct {v11, v12, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
.end method

.method public static computeXoauth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "authToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 89
    const-string v2, "user=%1s\u0001auth=Bearer %2s\u0001\u0001"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "formattedAuthenticationString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/mail/filter/Base64;->encodeBase64([B)[B

    move-result-object v0

    .line 93
    .local v0, "base64encodedAuthenticationString":[B
    new-instance v2, Ljava/lang/String;

    const-string v3, "US-ASCII"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2
.end method
