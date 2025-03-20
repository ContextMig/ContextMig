.class public Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;
.super Ljava/lang/Object;
.source "DefaultTrustedSocketFactory.java"

# interfaces
.implements Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;


# static fields
.field protected static final BLACKLISTED_CIPHERS:[Ljava/lang/String;

.field protected static final BLACKLISTED_PROTOCOLS:[Ljava/lang/String;

.field protected static final ENABLED_CIPHERS:[Ljava/lang/String;

.field protected static final ENABLED_PROTOCOLS:[Ljava/lang/String;

.field protected static final ORDERED_KNOWN_CIPHERS:[Ljava/lang/String;

.field protected static final ORDERED_KNOWN_PROTOCOLS:[Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 37
    const/16 v6, 0x18

    new-array v6, v6, [Ljava/lang/String;

    const-string v8, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    aput-object v8, v6, v10

    const-string v8, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    aput-object v8, v6, v11

    const-string v8, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    aput-object v8, v6, v12

    const-string v8, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    aput-object v8, v6, v13

    const/4 v8, 0x4

    const-string v9, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    aput-object v9, v6, v8

    const/4 v8, 0x5

    const-string v9, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    aput-object v9, v6, v8

    const/4 v8, 0x6

    const-string v9, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    aput-object v9, v6, v8

    const/4 v8, 0x7

    const-string v9, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0x8

    const-string v9, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0x9

    const-string v9, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0xa

    const-string v9, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0xb

    const-string v9, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0xc

    const-string v9, "TLS_RSA_WITH_AES_256_CBC_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0xd

    const-string v9, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0xe

    const-string v9, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0xf

    const-string v9, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0x10

    const-string v9, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0x11

    const-string v9, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0x12

    const-string v9, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0x13

    const-string v9, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0x14

    const-string v9, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0x15

    const-string v9, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0x16

    const-string v9, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0x17

    const-string v9, "TLS_RSA_WITH_AES_128_CBC_SHA"

    aput-object v9, v6, v8

    sput-object v6, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->ORDERED_KNOWN_CIPHERS:[Ljava/lang/String;

    .line 64
    const/16 v6, 0x15

    new-array v6, v6, [Ljava/lang/String;

    const-string v8, "SSL_RSA_WITH_DES_CBC_SHA"

    aput-object v8, v6, v10

    const-string v8, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    aput-object v8, v6, v11

    const-string v8, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    aput-object v8, v6, v12

    const-string v8, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    aput-object v8, v6, v13

    const/4 v8, 0x4

    const-string v9, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    aput-object v9, v6, v8

    const/4 v8, 0x5

    const-string v9, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    aput-object v9, v6, v8

    const/4 v8, 0x6

    const-string v9, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    aput-object v9, v6, v8

    const/4 v8, 0x7

    const-string v9, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0x8

    const-string v9, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0x9

    const-string v9, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0xa

    const-string v9, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0xb

    const-string v9, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0xc

    const-string v9, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0xd

    const-string v9, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0xe

    const-string v9, "SSL_RSA_WITH_RC4_128_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0xf

    const-string v9, "SSL_RSA_WITH_RC4_128_MD5"

    aput-object v9, v6, v8

    const/16 v8, 0x10

    const-string v9, "TLS_ECDH_RSA_WITH_NULL_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0x11

    const-string v9, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0x12

    const-string v9, "TLS_ECDH_anon_WITH_NULL_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0x13

    const-string v9, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    aput-object v9, v6, v8

    const/16 v8, 0x14

    const-string v9, "TLS_RSA_WITH_NULL_SHA256"

    aput-object v9, v6, v8

    sput-object v6, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->BLACKLISTED_CIPHERS:[Ljava/lang/String;

    .line 88
    new-array v6, v13, [Ljava/lang/String;

    const-string v8, "TLSv1.2"

    aput-object v8, v6, v10

    const-string v8, "TLSv1.1"

    aput-object v8, v6, v11

    const-string v8, "TLSv1"

    aput-object v8, v6, v12

    sput-object v6, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->ORDERED_KNOWN_PROTOCOLS:[Ljava/lang/String;

    .line 92
    new-array v6, v11, [Ljava/lang/String;

    const-string v8, "SSLv3"

    aput-object v8, v6, v10

    sput-object v6, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->BLACKLISTED_PROTOCOLS:[Ljava/lang/String;

    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, "enabledCiphers":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 101
    .local v5, "supportedProtocols":[Ljava/lang/String;
    :try_start_0
    const-string v6, "TLS"

    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    .line 102
    .local v4, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v8, v9}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 103
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 104
    .local v2, "sf":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/SSLSocket;

    .line 105
    .local v3, "sock":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 117
    .end local v2    # "sf":Ljavax/net/ssl/SSLSocketFactory;
    .end local v3    # "sock":Ljavax/net/ssl/SSLSocket;
    .end local v4    # "sslContext":Ljavax/net/ssl/SSLContext;
    :goto_0
    invoke-static {}, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->hasWeakSslImplementation()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 118
    if-nez v1, :cond_0

    move-object v6, v7

    .line 119
    :goto_1
    sput-object v6, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->ENABLED_CIPHERS:[Ljava/lang/String;

    .line 120
    if-nez v5, :cond_1

    .line 121
    :goto_2
    sput-object v7, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->ENABLED_PROTOCOLS:[Ljava/lang/String;

    .line 129
    :goto_3
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "Error getting information about available SSL/TLS ciphers and protocols"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v0, v6, v8}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v6, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->ORDERED_KNOWN_CIPHERS:[Ljava/lang/String;

    sget-object v8, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->BLACKLISTED_CIPHERS:[Ljava/lang/String;

    .line 119
    invoke-static {v1, v6, v8}, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->reorder([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 120
    :cond_1
    sget-object v6, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->ORDERED_KNOWN_PROTOCOLS:[Ljava/lang/String;

    sget-object v7, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->BLACKLISTED_PROTOCOLS:[Ljava/lang/String;

    .line 121
    invoke-static {v5, v6, v7}, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->reorder([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 123
    :cond_2
    if-nez v1, :cond_3

    move-object v6, v7

    .line 124
    :goto_4
    sput-object v6, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->ENABLED_CIPHERS:[Ljava/lang/String;

    .line 125
    if-nez v5, :cond_4

    .line 126
    :goto_5
    sput-object v7, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->ENABLED_PROTOCOLS:[Ljava/lang/String;

    goto :goto_3

    .line 123
    :cond_3
    sget-object v6, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->BLACKLISTED_CIPHERS:[Ljava/lang/String;

    .line 124
    invoke-static {v1, v6}, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->remove([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 125
    :cond_4
    sget-object v6, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->BLACKLISTED_PROTOCOLS:[Ljava/lang/String;

    .line 126
    invoke-static {v5, v6}, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->remove([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    goto :goto_5
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->context:Landroid/content/Context;

    .line 133
    return-void
.end method

.method private static hardenSocket(Ljavax/net/ssl/SSLSocket;)V
    .locals 1
    .param p0, "sock"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 210
    sget-object v0, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->ENABLED_CIPHERS:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->ENABLED_CIPHERS:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 213
    :cond_0
    sget-object v0, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->ENABLED_PROTOCOLS:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 214
    sget-object v0, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->ENABLED_PROTOCOLS:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 216
    :cond_1
    return-void
.end method

.method private static hasWeakSslImplementation()Z
    .locals 2

    .prologue
    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static remove([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "enabled"    # [Ljava/lang/String;
    .param p1, "blacklisted"    # [Ljava/lang/String;

    .prologue
    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 170
    if-eqz p1, :cond_0

    .line 171
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 172
    .local v0, "item":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "item":Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method protected static reorder([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "enabled"    # [Ljava/lang/String;
    .param p1, "known"    # [Ljava/lang/String;
    .param p2, "blacklisted"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v2, "unknown":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 144
    if-eqz p2, :cond_0

    .line 145
    array-length v5, p2

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, p2, v4

    .line 146
    .local v0, "item":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "item":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, p1

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, p1, v3

    .line 153
    .restart local v0    # "item":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 160
    .end local v0    # "item":Ljava/lang/String;
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 162
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method private static setHostnameViaReflection(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 7
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 230
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setHostname"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Could not call SSLSocket#setHostname(String) method "

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setSniHost(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 3
    .param p0, "factory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;

    .prologue
    .line 219
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    instance-of v1, p0, Landroid/net/SSLCertificateSocketFactory;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 221
    check-cast v0, Landroid/net/SSLCertificateSocketFactory;

    .line 222
    .local v0, "sslCertificateSocketFactory":Landroid/net/SSLCertificateSocketFactory;
    invoke-virtual {v0, p1, p2}, Landroid/net/SSLCertificateSocketFactory;->setHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 226
    .end local v0    # "sslCertificateSocketFactory":Landroid/net/SSLCertificateSocketFactory;
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-static {p1, p2}, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->setHostnameViaReflection(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public createSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/lang/String;)Ljava/net/Socket;
    .locals 10
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "clientCertificateAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 184
    new-array v4, v8, [Ljavax/net/ssl/TrustManager;

    invoke-static {p2, p3}, Lcom/fsck/k9/mail/ssl/TrustManagerFactory;->get(Ljava/lang/String;I)Ljavax/net/ssl/X509TrustManager;

    move-result-object v6

    aput-object v6, v4, v9

    .line 185
    .local v4, "trustManagers":[Ljavax/net/ssl/TrustManager;
    const/4 v0, 0x0

    .line 186
    .local v0, "keyManagers":[Ljavax/net/ssl/KeyManager;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 187
    new-array v0, v8, [Ljavax/net/ssl/KeyManager;

    .end local v0    # "keyManagers":[Ljavax/net/ssl/KeyManager;
    new-instance v6, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;

    iget-object v7, p0, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->context:Landroid/content/Context;

    invoke-direct {v6, v7, p4}, Lcom/fsck/k9/mail/ssl/KeyChainKeyManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    aput-object v6, v0, v9

    .line 190
    .restart local v0    # "keyManagers":[Ljavax/net/ssl/KeyManager;
    :cond_0
    const-string v6, "TLS"

    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 191
    .local v2, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v4, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 192
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 194
    .local v1, "socketFactory":Ljavax/net/ssl/SSLSocketFactory;
    if-nez p1, :cond_1

    .line 195
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v5

    .local v5, "trustedSocket":Ljava/net/Socket;
    :goto_0
    move-object v3, v5

    .line 200
    check-cast v3, Ljavax/net/ssl/SSLSocket;

    .line 202
    .local v3, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-static {v3}, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->hardenSocket(Ljavax/net/ssl/SSLSocket;)V

    .line 204
    invoke-static {v1, v3, p2}, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;->setSniHost(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 206
    return-object v5

    .line 197
    .end local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local v5    # "trustedSocket":Ljava/net/Socket;
    :cond_1
    invoke-virtual {v1, p1, p2, p3, v8}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v5

    .restart local v5    # "trustedSocket":Ljava/net/Socket;
    goto :goto_0
.end method
