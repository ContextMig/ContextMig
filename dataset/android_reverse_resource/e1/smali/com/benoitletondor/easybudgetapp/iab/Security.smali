.class public Lcom/benoitletondor/easybudgetapp/iab/Security;
.super Ljava/lang/Object;
.source "Security.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static final TAG:Ljava/lang/String; = "IABUtil/Security"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/iab/Security;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7dc971d321a151f1L    # -5.388827704573699E-298

    const-string v2, "com/benoitletondor/easybudgetapp/iab/Security"

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/iab/Security;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/Security;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/Security;->$jacocoInit()[Z

    move-result-object v1

    .line 75
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 76
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    const/16 v3, 0x9

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 77
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    const/16 v2, 0xa

    aput-boolean v5, v1, v2

    return-object v0

    .line 78
    :catch_0
    move-exception v0

    const/16 v2, 0xb

    aput-boolean v5, v1, v2

    .line 79
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    const/16 v0, 0xc

    aput-boolean v5, v1, v0

    throw v2

    .line 80
    :catch_1
    move-exception v0

    const/16 v2, 0xd

    aput-boolean v5, v1, v2

    .line 81
    const-string v2, "IABUtil/Security"

    const-string v3, "Invalid key specification."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xe

    aput-boolean v5, v1, v2

    .line 82
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    const/16 v0, 0xf

    aput-boolean v5, v1, v0

    throw v2
.end method

.method public static verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/Security;->$jacocoInit()[Z

    move-result-object v3

    .line 98
    const/4 v4, 0x0

    :try_start_0
    invoke-static {p2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    .local v0, "signatureBytes":[B
    const/16 v4, 0x10

    aput-boolean v1, v3, v4

    .line 104
    :try_start_1
    const-string v4, "SHA1withRSA"

    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    const/16 v5, 0x13

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    .line 105
    invoke-virtual {v4, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    const/16 v5, 0x14

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/Signature;->update([B)V

    const/16 v5, 0x15

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    .line 107
    invoke-virtual {v4, v0}, Ljava/security/Signature;->verify([B)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x16

    const/4 v5, 0x1

    aput-boolean v5, v3, v4
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_3

    .line 111
    const/16 v2, 0x19

    aput-boolean v1, v3, v2

    .line 119
    :goto_0
    return v1

    .line 99
    .end local v0    # "signatureBytes":[B
    :catch_0
    move-exception v4

    const/16 v4, 0x11

    aput-boolean v1, v3, v4

    .line 100
    const-string v4, "IABUtil/Security"

    const-string v5, "Base64 decoding failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/16 v4, 0x12

    aput-boolean v1, v3, v4

    move v1, v2

    goto :goto_0

    .line 107
    .restart local v0    # "signatureBytes":[B
    :cond_0
    const/16 v4, 0x17

    const/4 v5, 0x1

    :try_start_2
    aput-boolean v5, v3, v4

    .line 108
    const-string v4, "IABUtil/Security"

    const-string v5, "Signature verification failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_3

    .line 109
    const/16 v4, 0x18

    aput-boolean v1, v3, v4

    move v1, v2

    goto :goto_0

    .line 112
    :catch_1
    move-exception v4

    const/16 v4, 0x1a

    aput-boolean v1, v3, v4

    .line 113
    const-string v4, "IABUtil/Security"

    const-string v5, "NoSuchAlgorithmException."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/16 v4, 0x1b

    aput-boolean v1, v3, v4

    .line 119
    :goto_1
    const/16 v4, 0x20

    aput-boolean v1, v3, v4

    move v1, v2

    goto :goto_0

    .line 114
    :catch_2
    move-exception v4

    const/16 v4, 0x1c

    aput-boolean v1, v3, v4

    .line 115
    const-string v4, "IABUtil/Security"

    const-string v5, "Invalid key specification."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/16 v4, 0x1d

    aput-boolean v1, v3, v4

    goto :goto_1

    .line 116
    :catch_3
    move-exception v4

    const/16 v4, 0x1e

    aput-boolean v1, v3, v4

    .line 117
    const-string v4, "IABUtil/Security"

    const-string v5, "Signature exception."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x1f

    aput-boolean v1, v3, v4

    goto :goto_1
.end method

.method public static verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/Security;->$jacocoInit()[Z

    move-result-object v1

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    aput-boolean v3, v1, v3

    .line 58
    :goto_0
    const-string v0, "IABUtil/Security"

    const-string v2, "Purchase verification failed: missing data."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v0, 0x0

    const/4 v2, 0x5

    aput-boolean v3, v1, v2

    .line 63
    :goto_1
    return v0

    .line 56
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    aput-boolean v3, v1, v0

    .line 57
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    aput-boolean v3, v1, v0

    goto :goto_0

    .line 62
    :cond_2
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/iab/Security;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    .line 63
    invoke-static {v0, p1, p2}, Lcom/benoitletondor/easybudgetapp/iab/Security;->verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x7

    aput-boolean v3, v1, v2

    goto :goto_1
.end method
