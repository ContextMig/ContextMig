.class Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SSLSocketFactoryWrapper;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "CoreStandardHttpRequestor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/CoreStandardHttpRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SSLSocketFactoryWrapper"
.end annotation


# static fields
.field private static sInstance:Ljavax/net/ssl/SSLSocketFactory;

.field private static final sStaticInitLock:Ljava/lang/Object;


# instance fields
.field private final mBase:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 502
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SSLSocketFactoryWrapper;->sStaticInitLock:Ljava/lang/Object;

    .line 503
    const/4 v0, 0x0

    sput-object v0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SSLSocketFactoryWrapper;->sInstance:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method private constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .param p1, "base"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 554
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 555
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SSLSocketFactoryWrapper;->mBase:Ljavax/net/ssl/SSLSocketFactory;

    .line 556
    return-void
.end method

.method private static checkCanceledRequestOnThread()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 548
    invoke-static {}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->access$1100()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;

    .line 549
    .local v0, "sr":Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;
    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {v0}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->checkCanceled()V

    .line 552
    :cond_0
    return-void
.end method

.method public static getInstance()Ljavax/net/ssl/SSLSocketFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 506
    sget-object v6, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SSLSocketFactoryWrapper;->sStaticInitLock:Ljava/lang/Object;

    monitor-enter v6

    .line 508
    :try_start_0
    sget-object v5, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SSLSocketFactoryWrapper;->sInstance:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 511
    :try_start_1
    invoke-static {}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SSLSocketFactoryWrapper;->loadKeyStore()Ljava/security/KeyStore;

    move-result-object v3

    .line 512
    .local v3, "keyStore":Ljava/security/KeyStore;
    const/4 v5, 0x1

    new-array v4, v5, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    new-instance v7, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$DropboxX509TrustManager;

    invoke-direct {v7, v3}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$DropboxX509TrustManager;-><init>(Ljava/security/KeyStore;)V

    aput-object v7, v4, v5

    .line 513
    .local v4, "trustManagers":[Ljavax/net/ssl/TrustManager;
    const-string v5, "TLS"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 514
    .local v1, "context":Ljavax/net/ssl/SSLContext;
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v4, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 515
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 516
    .local v0, "baseSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    new-instance v5, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SSLSocketFactoryWrapper;

    invoke-direct {v5, v0}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SSLSocketFactoryWrapper;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    sput-object v5, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SSLSocketFactoryWrapper;->sInstance:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    :cond_0
    :try_start_2
    sget-object v5, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SSLSocketFactoryWrapper;->sInstance:Ljavax/net/ssl/SSLSocketFactory;

    monitor-exit v6

    return-object v5

    .line 517
    .end local v0    # "baseSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v1    # "context":Ljavax/net/ssl/SSLContext;
    .end local v4    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v2

    .line 518
    .local v2, "e":Ljavax/net/ssl/SSLException;
    throw v2

    .line 526
    .end local v2    # "e":Ljavax/net/ssl/SSLException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 519
    :catch_1
    move-exception v2

    .line 520
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_3
    throw v2

    .line 521
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v2

    .line 522
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljavax/net/ssl/SSLException;

    invoke-direct {v5, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private static loadKeyStore()Ljava/security/KeyStore;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->access$1000()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 533
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    const-string v2, "BKS"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 534
    .local v1, "trustStore":Ljava/security/KeyStore;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    .end local v1    # "trustStore":Ljava/security/KeyStore;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v2
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    invoke-static {}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SSLSocketFactoryWrapper;->checkCanceledRequestOnThread()V

    .line 625
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SSLSocketFactoryWrapper;->mBase:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .local v0, "socket":Ljava/net/Socket;
    move-object v1, v0

    .line 626
    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-static {v1}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->access$1200(Ljavax/net/ssl/SSLSocket;)V

    .line 627
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    invoke-static {}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created new socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 571
    invoke-static {}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SSLSocketFactoryWrapper;->checkCanceledRequestOnThread()V

    .line 572
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SSLSocketFactoryWrapper;->mBase:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    .local v0, "socket":Ljava/net/Socket;
    move-object v1, v0

    .line 573
    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-static {v1}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->access$1200(Ljavax/net/ssl/SSLSocket;)V

    .line 574
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    invoke-static {}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created new socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localHost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 593
    invoke-static {}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SSLSocketFactoryWrapper;->checkCanceledRequestOnThread()V

    .line 594
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SSLSocketFactoryWrapper;->mBase:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .local v0, "socket":Ljava/net/Socket;
    move-object v1, v0

    .line 596
    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-static {v1}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->access$1200(Ljavax/net/ssl/SSLSocket;)V

    .line 597
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    invoke-static {}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created new socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 5
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    invoke-static {}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SSLSocketFactoryWrapper;->checkCanceledRequestOnThread()V

    .line 582
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SSLSocketFactoryWrapper;->mBase:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .local v0, "socket":Ljava/net/Socket;
    move-object v1, v0

    .line 583
    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-static {v1}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->access$1200(Ljavax/net/ssl/SSLSocket;)V

    .line 584
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    invoke-static {}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created new socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 604
    invoke-static {}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SSLSocketFactoryWrapper;->checkCanceledRequestOnThread()V

    .line 605
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SSLSocketFactoryWrapper;->mBase:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .local v0, "socket":Ljava/net/Socket;
    move-object v1, v0

    .line 607
    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-static {v1}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->access$1200(Ljavax/net/ssl/SSLSocket;)V

    .line 608
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    invoke-static {}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created new socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 5
    .param p1, "s"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-static {}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SSLSocketFactoryWrapper;->checkCanceledRequestOnThread()V

    .line 616
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SSLSocketFactoryWrapper;->mBase:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    .local v0, "socket":Ljava/net/Socket;
    move-object v1, v0

    .line 617
    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-static {v1}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->access$1200(Ljavax/net/ssl/SSLSocket;)V

    .line 618
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    invoke-static {}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created new socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SSLSocketFactoryWrapper;->mBase:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SSLSocketFactoryWrapper;->mBase:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
