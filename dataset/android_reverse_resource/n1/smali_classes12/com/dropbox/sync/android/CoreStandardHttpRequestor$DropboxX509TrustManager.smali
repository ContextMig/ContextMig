.class Lcom/dropbox/sync/android/CoreStandardHttpRequestor$DropboxX509TrustManager;
.super Ljava/lang/Object;
.source "CoreStandardHttpRequestor.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/CoreStandardHttpRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropboxX509TrustManager"
.end annotation


# static fields
.field private static final REVOKED_CERTIFICATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStaticInitLock:Ljava/lang/Object;


# instance fields
.field private final mTrustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 650
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "0275C76C1E643C2649886B0E763AC3E9"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "11166029036226140"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "12230174822858770"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$DropboxX509TrustManager;->REVOKED_CERTIFICATES:Ljava/util/List;

    .line 659
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$DropboxX509TrustManager;->sStaticInitLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 3
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    sget-object v2, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$DropboxX509TrustManager;->sStaticInitLock:Ljava/lang/Object;

    monitor-enter v2

    .line 666
    :try_start_0
    const-string v1, "X509"

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 667
    .local v0, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 668
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$DropboxX509TrustManager;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    .line 669
    monitor-exit v2

    .line 670
    return-void

    .line 669
    .end local v0    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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
    .line 710
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Client certificates not supported!"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 11
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 681
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$DropboxX509TrustManager;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    .local v0, "arr$":[Ljavax/net/ssl/TrustManager;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 682
    .local v5, "trustManager":Ljavax/net/ssl/TrustManager;
    check-cast v5, Ljavax/net/ssl/X509TrustManager;

    .end local v5    # "trustManager":Ljavax/net/ssl/TrustManager;
    invoke-interface {v5, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 681
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 687
    :cond_0
    aget-object v6, p1, v10

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    .line 688
    .local v4, "serial":Ljava/math/BigInteger;
    sget-object v6, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$DropboxX509TrustManager;->REVOKED_CERTIFICATES:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 689
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Certificate %s is revoked!"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 690
    .local v3, "message":Ljava/lang/String;
    new-instance v6, Ljava/security/cert/CertificateException;

    invoke-direct {v6, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 692
    .end local v3    # "message":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 700
    const/4 v0, 0x0

    return-object v0
.end method
