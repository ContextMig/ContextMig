.class Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "KeyChainKeyManager.java"


# static fields
.field private static sClientCertificateReferenceWorkaround:Ljava/security/PrivateKey;


# instance fields
.field private final mAlias:Ljava/lang/String;

.field private final mChain:[Ljava/security/cert/X509Certificate;

.field private final mPrivateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;->mAlias:Ljava/lang/String;

    .line 60
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;->fetchCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;->mChain:[Ljava/security/cert/X509Certificate;

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;->fetchPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;->mPrivateKey:Ljava/security/PrivateKey;
    :try_end_0
    .catch Landroid/security/KeyChainException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Landroid/security/KeyChainException;
    new-instance v1, Lcom/fsck/k9/mail/CertificateValidationException;

    invoke-virtual {v0}, Landroid/security/KeyChainException;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fsck/k9/mail/CertificateValidationException$Reason;->RetrievalFailure:Lcom/fsck/k9/mail/CertificateValidationException$Reason;

    invoke-direct {v1, v2, v3, p2}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/CertificateValidationException$Reason;Ljava/lang/String;)V

    throw v1

    .line 65
    .end local v0    # "e":Landroid/security/KeyChainException;
    :catch_1
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lcom/fsck/k9/mail/CertificateValidationException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fsck/k9/mail/CertificateValidationException$Reason;->RetrievalFailure:Lcom/fsck/k9/mail/CertificateValidationException$Reason;

    invoke-direct {v1, v2, v3, p2}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/CertificateValidationException$Reason;Ljava/lang/String;)V

    throw v1
.end method

.method private chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)Ljava/lang/String;
    .locals 13
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .prologue
    .line 152
    if-eqz p1, :cond_0

    array-length v9, p1

    if-nez v9, :cond_1

    .line 153
    :cond_0
    const/4 v9, 0x0

    .line 210
    :goto_0
    return-object v9

    .line 155
    :cond_1
    iget-object v9, p0, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;->mChain:[Ljava/security/cert/X509Certificate;

    const/4 v10, 0x0

    aget-object v0, v9, v10

    .line 156
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-interface {v9}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "certKeyAlg":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "certSigAlg":Ljava/lang/String;
    array-length v10, p1

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_a

    aget-object v7, p1, v9

    .line 159
    .local v7, "keyAlgorithm":Ljava/lang/String;
    if-nez v7, :cond_3

    .line 158
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 164
    :cond_3
    const/16 v11, 0x5f

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 165
    .local v4, "index":I
    const/4 v11, -0x1

    if-ne v4, v11, :cond_6

    .line 166
    const/4 v8, 0x0

    .line 172
    .local v8, "sigAlgorithm":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 182
    if-eqz v8, :cond_4

    if-eqz v3, :cond_4

    .line 183
    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 187
    :cond_4
    if-eqz p2, :cond_5

    array-length v9, p2

    if-nez v9, :cond_7

    .line 188
    :cond_5
    iget-object v9, p0, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;->mAlias:Ljava/lang/String;

    goto :goto_0

    .line 168
    .end local v8    # "sigAlgorithm":Ljava/lang/String;
    :cond_6
    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 169
    .restart local v8    # "sigAlgorithm":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v7, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 190
    :cond_7
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 192
    .local v6, "issuersList":Ljava/util/List;, "Ljava/util/List<Ljava/security/Principal;>;"
    iget-object v10, p0, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;->mChain:[Ljava/security/cert/X509Certificate;

    array-length v11, v10

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v11, :cond_9

    aget-object v1, v10, v9

    .line 201
    .local v1, "certFromChain":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    .line 202
    .local v5, "issuerFromChain":Ljavax/security/auth/x500/X500Principal;
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 203
    iget-object v9, p0, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;->mAlias:Ljava/lang/String;

    goto :goto_0

    .line 192
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 206
    .end local v1    # "certFromChain":Ljava/security/cert/X509Certificate;
    .end local v5    # "issuerFromChain":Ljavax/security/auth/x500/X500Principal;
    :cond_9
    const-string v9, "Client certificate %s not issued by any of the requested issuers"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;->mAlias:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    const/4 v9, 0x0

    goto :goto_0

    .line 209
    .end local v4    # "index":I
    .end local v6    # "issuersList":Ljava/util/List;, "Ljava/util/List<Ljava/security/Principal;>;"
    .end local v7    # "keyAlgorithm":Ljava/lang/String;
    .end local v8    # "sigAlgorithm":Ljava/lang/String;
    :cond_a
    const-string v9, "Client certificate %s does not match any of the requested key types"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;->mAlias:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method private fetchCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyChainException;,
            Ljava/lang/InterruptedException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p1, p2}, Landroid/security/KeyChain;->getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 74
    .local v1, "chain":[Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-nez v3, :cond_1

    .line 75
    :cond_0
    new-instance v3, Lcom/fsck/k9/mail/MessagingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No certificate chain found for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    :cond_1
    :try_start_0
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 79
    .local v0, "certificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "certificate":Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Lcom/fsck/k9/mail/CertificateValidationException;

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/fsck/k9/mail/CertificateValidationException$Reason;->Expired:Lcom/fsck/k9/mail/CertificateValidationException$Reason;

    invoke-direct {v3, v4, v5, p2}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/CertificateValidationException$Reason;Ljava/lang/String;)V

    throw v3

    .line 85
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :cond_2
    return-object v1
.end method

.method private fetchPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyChainException;,
            Ljava/lang/InterruptedException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {p1, p2}, Landroid/security/KeyChain;->getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 92
    .local v0, "privateKey":Ljava/security/PrivateKey;
    if-nez v0, :cond_0

    .line 93
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No private key found for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_1

    .line 103
    invoke-static {v0}, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;->savePrivateKeyReference(Ljava/security/PrivateKey;)V

    .line 106
    :cond_1
    return-object v0
.end method

.method private static declared-synchronized savePrivateKeyReference(Ljava/security/PrivateKey;)V
    .locals 2
    .param p0, "privateKey"    # Ljava/security/PrivateKey;

    .prologue
    .line 39
    const-class v1, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;->sClientCertificateReferenceWorkaround:Ljava/security/PrivateKey;

    if-nez v0, :cond_0

    .line 40
    sput-object p0, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;->sClientCertificateReferenceWorkaround:Ljava/security/PrivateKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    monitor-exit v1

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 1
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 2
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    .line 148
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 2
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .prologue
    .line 126
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;->mChain:[Ljava/security/cert/X509Certificate;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 4
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    new-array v1, v3, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-direct {p0, v1, p2}, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "al":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    aput-object v0, v1, v2

    goto :goto_0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;->mPrivateKey:Ljava/security/PrivateKey;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 4
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 137
    new-array v1, v3, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-direct {p0, v1, p2}, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "al":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    aput-object v0, v1, v2

    goto :goto_0
.end method
