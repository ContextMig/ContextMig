.class Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;
.super Ljava/lang/Object;
.source "TrustManagerFactory.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/ssl/TrustManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecureX509TrustManager"
.end annotation


# static fields
.field private static final mTrustManager:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHost:Ljava/lang/String;

.field private final mPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;->mTrustManager:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;->mHost:Ljava/lang/String;

    .line 36
    iput p2, p0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;->mPort:I

    .line 37
    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;I)Ljavax/net/ssl/X509TrustManager;
    .locals 5
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .prologue
    .line 40
    const-class v3, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;

    monitor-enter v3

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "key":Ljava/lang/String;
    sget-object v2, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;->mTrustManager:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    sget-object v2, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;->mTrustManager:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .local v1, "trustManager":Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;
    :goto_0
    monitor-exit v3

    return-object v1

    .line 45
    .end local v1    # "trustManager":Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;
    :cond_0
    :try_start_1
    new-instance v1, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;-><init>(Ljava/lang/String;I)V

    .line 46
    .restart local v1    # "trustManager":Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;
    sget-object v2, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;->mTrustManager:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "trustManager":Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {}, Lcom/fsck/k9/mail/ssl/TrustManagerFactory;->access$000()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 7
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v3, 0x0

    .line 60
    .local v3, "message":Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v1, p1, v4

    .line 62
    .local v1, "certificate":Ljava/security/cert/X509Certificate;
    const/4 v0, 0x0

    .line 65
    .local v0, "cause":Ljava/lang/Throwable;
    :try_start_0
    invoke-static {}, Lcom/fsck/k9/mail/ssl/TrustManagerFactory;->access$000()Ljavax/net/ssl/X509TrustManager;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 66
    new-instance v4, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v4}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;->mHost:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    :cond_0
    return-void

    .line 68
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 71
    move-object v0, v2

    .line 80
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :goto_0
    invoke-static {}, Lcom/fsck/k9/mail/ssl/TrustManagerFactory;->access$100()Lcom/fsck/k9/mail/ssl/LocalKeyStore;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;->mHost:Ljava/lang/String;

    iget v6, p0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;->mPort:I

    invoke-virtual {v4, v1, v5, v6}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->isValidCertificate(Ljava/security/cert/Certificate;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 81
    new-instance v4, Lcom/fsck/k9/mail/CertificateChainException;

    invoke-direct {v4, v3, p1, v0}, Lcom/fsck/k9/mail/CertificateChainException;-><init>(Ljava/lang/String;[Ljava/security/cert/X509Certificate;Ljava/lang/Throwable;)V

    throw v4

    .line 72
    :catch_1
    move-exception v2

    .line 74
    .local v2, "e":Ljavax/net/ssl/SSLException;
    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 75
    move-object v0, v2

    goto :goto_0
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/fsck/k9/mail/ssl/TrustManagerFactory;->access$000()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
