.class Lio/fabric/sdk/android/services/network/PinningTrustManager;
.super Ljava/lang/Object;
.source "PinningTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static final NO_ISSUERS:[Ljava/security/cert/X509Certificate;

.field private static final PIN_FRESHNESS_DURATION_MILLIS:J = 0x39ef8b000L


# instance fields
.field private final cache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final pinCreationTimeMillis:J

.field private final pins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private final systemKeyStore:Lio/fabric/sdk/android/services/network/SystemKeyStore;

.field private final systemTrustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    sput-object v0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->NO_ISSUERS:[Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public constructor <init>(Lio/fabric/sdk/android/services/network/SystemKeyStore;Lio/fabric/sdk/android/services/network/PinningInfoProvider;)V
    .locals 6
    .param p1, "keyStore"    # Lio/fabric/sdk/android/services/network/SystemKeyStore;
    .param p2, "pinningInfoProvider"    # Lio/fabric/sdk/android/services/network/PinningInfoProvider;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->pins:Ljava/util/List;

    .line 78
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->cache:Ljava/util/Set;

    .line 92
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/network/PinningTrustManager;->initializeSystemTrustManagers(Lio/fabric/sdk/android/services/network/SystemKeyStore;)[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    iput-object v4, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->systemTrustManagers:[Ljavax/net/ssl/TrustManager;

    .line 93
    iput-object p1, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->systemKeyStore:Lio/fabric/sdk/android/services/network/SystemKeyStore;

    .line 94
    invoke-interface {p2}, Lio/fabric/sdk/android/services/network/PinningInfoProvider;->getPinCreationTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->pinCreationTimeMillis:J

    .line 96
    invoke-interface {p2}, Lio/fabric/sdk/android/services/network/PinningInfoProvider;->getPins()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 97
    .local v3, "pin":Ljava/lang/String;
    iget-object v4, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->pins:Ljava/util/List;

    invoke-direct {p0, v3}, Lio/fabric/sdk/android/services/network/PinningTrustManager;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v3    # "pin":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkPinTrust([Ljava/security/cert/X509Certificate;)V
    .locals 14
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const-wide v12, 0x39ef8b000L

    .line 142
    iget-wide v6, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->pinCreationTimeMillis:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->pinCreationTimeMillis:J

    sub-long/2addr v6, v8

    cmp-long v5, v6, v12

    if-lez v5, :cond_1

    .line 145
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    const-string/jumbo v6, "Fabric"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Certificate pins are stale, ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->pinCreationTimeMillis:J

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " millis vs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " millis) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "falling back to system trust."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lio/fabric/sdk/android/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_0
    return-void

    .line 152
    :cond_1
    iget-object v5, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->systemKeyStore:Lio/fabric/sdk/android/services/network/SystemKeyStore;

    invoke-static {p1, v5}, Lio/fabric/sdk/android/services/network/CertificateChainCleaner;->getCleanChain([Ljava/security/cert/X509Certificate;Lio/fabric/sdk/android/services/network/SystemKeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 155
    .local v2, "cleanChain":[Ljava/security/cert/X509Certificate;
    move-object v0, v2

    .local v0, "arr$":[Ljava/security/cert/X509Certificate;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 156
    .local v1, "certificate":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v1}, Lio/fabric/sdk/android/services/network/PinningTrustManager;->isValidPin(Ljava/security/cert/X509Certificate;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 155
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "certificate":Ljava/security/cert/X509Certificate;
    :cond_2
    new-instance v5, Ljava/security/cert/CertificateException;

    const-string/jumbo v6, "No valid pins found in chain!"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private checkSystemTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 4
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->systemTrustManagers:[Ljavax/net/ssl/TrustManager;

    .local v0, "arr$":[Ljavax/net/ssl/TrustManager;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 135
    .local v3, "systemTrustManager":Ljavax/net/ssl/TrustManager;
    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    .end local v3    # "systemTrustManager":Ljavax/net/ssl/TrustManager;
    invoke-interface {v3, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method

.method private hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 189
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 191
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 192
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 191
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 196
    :cond_0
    return-object v0
.end method

.method private initializeSystemTrustManagers(Lio/fabric/sdk/android/services/network/SystemKeyStore;)[Ljavax/net/ssl/TrustManager;
    .locals 4
    .param p1, "keyStore"    # Lio/fabric/sdk/android/services/network/SystemKeyStore;

    .prologue
    .line 103
    :try_start_0
    const-string/jumbo v3, "X509"

    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 104
    .local v2, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    iget-object v3, p1, Lio/fabric/sdk/android/services/network/SystemKeyStore;->trustStore:Ljava/security/KeyStore;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 106
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 107
    .end local v2    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catch_0
    move-exception v1

    .line 108
    .local v1, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 109
    .end local v1    # "nsae":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 110
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private isValidPin(Ljava/security/cert/X509Certificate;)Z
    .locals 7
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 116
    :try_start_0
    const-string/jumbo v6, "SHA1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 117
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    .line 118
    .local v4, "spki":[B
    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 120
    .local v3, "pin":[B
    iget-object v6, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->pins:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 121
    .local v5, "validPin":[B
    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 122
    const/4 v6, 0x1

    .line 126
    .end local v5    # "validPin":[B
    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 127
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "pin":[B
    .end local v4    # "spki":[B
    :catch_0
    move-exception v2

    .line 128
    .local v2, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/security/cert/CertificateException;

    invoke-direct {v6, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Client certificates not supported!"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 3
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->cache:Ljava/util/Set;

    aget-object v1, p1, v2

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/fabric/sdk/android/services/network/PinningTrustManager;->checkSystemTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 179
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/network/PinningTrustManager;->checkPinTrust([Ljava/security/cert/X509Certificate;)V

    .line 180
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->cache:Ljava/util/Set;

    aget-object v1, p1, v2

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lio/fabric/sdk/android/services/network/PinningTrustManager;->NO_ISSUERS:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method
