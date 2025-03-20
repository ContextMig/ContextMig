.class public final Lcom/fsck/k9/mail/ssl/TrustManagerFactory;
.super Ljava/lang/Object;
.source "TrustManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;
    }
.end annotation


# static fields
.field private static defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

.field private static keyStore:Lcom/fsck/k9/mail/ssl/LocalKeyStore;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 93
    :try_start_0
    invoke-static {}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->getInstance()Lcom/fsck/k9/mail/ssl/LocalKeyStore;

    move-result-object v4

    sput-object v4, Lcom/fsck/k9/mail/ssl/TrustManagerFactory;->keyStore:Lcom/fsck/k9/mail/ssl/LocalKeyStore;

    .line 95
    const-string v4, "X509"

    invoke-static {v4}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 96
    .local v2, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v4, 0x0

    check-cast v4, Ljava/security/KeyStore;

    invoke-virtual {v2, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 98
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    .line 99
    .local v3, "tms":[Ljavax/net/ssl/TrustManager;
    if-eqz v3, :cond_0

    .line 100
    array-length v6, v3

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v1, v3, v4

    .line 101
    .local v1, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v7, v1, Ljavax/net/ssl/X509TrustManager;

    if-eqz v7, :cond_1

    .line 102
    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    .end local v1    # "tm":Ljavax/net/ssl/TrustManager;
    sput-object v1, Lcom/fsck/k9/mail/ssl/TrustManagerFactory;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    .end local v3    # "tms":[Ljavax/net/ssl/TrustManager;
    :cond_0
    :goto_1
    return-void

    .line 100
    .restart local v1    # "tm":Ljavax/net/ssl/TrustManager;
    .restart local v3    # "tms":[Ljavax/net/ssl/TrustManager;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "tm":Ljavax/net/ssl/TrustManager;
    .end local v3    # "tms":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "Unable to get X509 Trust Manager "

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 109
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 110
    .local v0, "e":Ljava/security/KeyStoreException;
    const-string v4, "Key Store exception while initializing TrustManagerFactory"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    return-void
.end method

.method static synthetic access$000()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method static synthetic access$100()Lcom/fsck/k9/mail/ssl/LocalKeyStore;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory;->keyStore:Lcom/fsck/k9/mail/ssl/LocalKeyStore;

    return-object v0
.end method

.method public static get(Ljava/lang/String;I)Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .prologue
    .line 118
    invoke-static {p0, p1}, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;->getInstance(Ljava/lang/String;I)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    return-object v0
.end method
