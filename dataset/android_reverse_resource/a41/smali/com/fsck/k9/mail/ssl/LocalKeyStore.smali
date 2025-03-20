.class public Lcom/fsck/k9/mail/ssl/LocalKeyStore;
.super Ljava/lang/Object;
.source "LocalKeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/ssl/LocalKeyStore$LocalKeyStoreHolder;
    }
.end annotation


# static fields
.field private static final KEY_STORE_FILE_VERSION:I = 0x1

.field private static sKeyStoreLocation:Ljava/lang/String;


# instance fields
.field private mKeyStore:Ljava/security/KeyStore;

.field private mKeyStoreFile:Ljava/io/File;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    :try_start_0
    invoke-direct {p0}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->upgradeKeyStoreFile()V

    .line 43
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->setKeyStoreFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v1, "Local key store has not been initialized"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/mail/ssl/LocalKeyStore$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/mail/ssl/LocalKeyStore$1;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;-><init>()V

    return-void
.end method

.method private static getCertKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/fsck/k9/mail/ssl/LocalKeyStore;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/fsck/k9/mail/ssl/LocalKeyStore$LocalKeyStoreHolder;->INSTANCE:Lcom/fsck/k9/mail/ssl/LocalKeyStore;

    return-object v0
.end method

.method private getKeyStoreFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 187
    sget-object v0, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->sKeyStoreLocation:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Local key store location has not been initialized"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->sKeyStoreLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KeyStore.bks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->sKeyStoreLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KeyStore_v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".bks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setKeyStoreLocation(Ljava/lang/String;)V
    .locals 0
    .param p0, "directory"    # Ljava/lang/String;

    .prologue
    .line 24
    sput-object p0, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->sKeyStoreLocation:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private upgradeKeyStoreFile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 179
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, v4}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->getKeyStoreFilePath(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "versionZeroFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    const-string v1, "Failed to delete old key-store file: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    :cond_0
    return-void
.end method

.method private writeCertificateFile()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 122
    .local v1, "keyStoreStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->mKeyStoreFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v1    # "keyStoreStream":Ljava/io/OutputStream;
    .local v2, "keyStoreStream":Ljava/io/OutputStream;
    :try_start_1
    iget-object v3, p0, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->mKeyStore:Ljava/security/KeyStore;

    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 142
    return-void

    .line 124
    .end local v2    # "keyStoreStream":Ljava/io/OutputStream;
    .restart local v1    # "keyStoreStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_0
    :try_start_2
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write KeyStore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 126
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    :goto_1
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v3

    .line 127
    :catch_1
    move-exception v0

    .line 128
    .local v0, "e":Ljava/security/cert/CertificateException;
    :goto_2
    :try_start_3
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write KeyStore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 129
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 130
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write KeyStore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 132
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 133
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 134
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_4
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write KeyStore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 135
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 136
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v0

    .line 137
    .local v0, "e":Ljava/security/KeyStoreException;
    :goto_5
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write KeyStore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 138
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    .end local v0    # "e":Ljava/security/KeyStoreException;
    .end local v1    # "keyStoreStream":Ljava/io/OutputStream;
    .restart local v2    # "keyStoreStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "keyStoreStream":Ljava/io/OutputStream;
    .restart local v1    # "keyStoreStream":Ljava/io/OutputStream;
    goto :goto_1

    .line 136
    .end local v1    # "keyStoreStream":Ljava/io/OutputStream;
    .restart local v2    # "keyStoreStream":Ljava/io/OutputStream;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2    # "keyStoreStream":Ljava/io/OutputStream;
    .restart local v1    # "keyStoreStream":Ljava/io/OutputStream;
    goto :goto_5

    .line 133
    .end local v1    # "keyStoreStream":Ljava/io/OutputStream;
    .restart local v2    # "keyStoreStream":Ljava/io/OutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "keyStoreStream":Ljava/io/OutputStream;
    .restart local v1    # "keyStoreStream":Ljava/io/OutputStream;
    goto :goto_4

    .line 130
    .end local v1    # "keyStoreStream":Ljava/io/OutputStream;
    .restart local v2    # "keyStoreStream":Ljava/io/OutputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "keyStoreStream":Ljava/io/OutputStream;
    .restart local v1    # "keyStoreStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 127
    .end local v1    # "keyStoreStream":Ljava/io/OutputStream;
    .restart local v2    # "keyStoreStream":Ljava/io/OutputStream;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2    # "keyStoreStream":Ljava/io/OutputStream;
    .restart local v1    # "keyStoreStream":Ljava/io/OutputStream;
    goto/16 :goto_2

    .line 124
    .end local v1    # "keyStoreStream":Ljava/io/OutputStream;
    .restart local v2    # "keyStoreStream":Ljava/io/OutputStream;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2    # "keyStoreStream":Ljava/io/OutputStream;
    .restart local v1    # "keyStoreStream":Ljava/io/OutputStream;
    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized addCertificate(Ljava/lang/String;ILjava/security/cert/X509Certificate;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->mKeyStore:Ljava/security/KeyStore;

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Certificate not added because key store not initialized"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 111
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-static {p1, p2}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->getCertKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :try_start_2
    invoke-direct {p0}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->writeCertificateFile()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/security/KeyStoreException;
    :try_start_3
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Failed to add certificate to local key store"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized deleteCertificate(Ljava/lang/String;I)V
    .locals 3
    .param p1, "oldHost"    # Ljava/lang/String;
    .param p2, "oldPort"    # I

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->mKeyStore:Ljava/security/KeyStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 174
    :goto_0
    monitor-exit p0

    return-void

    .line 167
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-static {p1, p2}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->getCertKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->writeCertificateFile()V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v1

    goto :goto_0

    .line 171
    :catch_1
    move-exception v0

    .line 172
    .local v0, "e":Ljava/security/cert/CertificateException;
    :try_start_2
    const-string v1, "Error updating the local key store file"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 163
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isValidCertificate(Ljava/security/cert/Certificate;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "certificate"    # Ljava/security/cert/Certificate;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    const/4 v2, 0x0

    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->mKeyStore:Ljava/security/KeyStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 154
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 149
    :cond_1
    const/4 v1, 0x0

    .line 151
    .local v1, "storedCert":Ljava/security/cert/Certificate;
    :try_start_1
    iget-object v3, p0, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-static {p2, p3}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->getCertKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/security/KeyStoreException;
    goto :goto_0

    .line 146
    .end local v0    # "e":Ljava/security/KeyStoreException;
    .end local v1    # "storedCert":Ljava/security/cert/Certificate;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setKeyStoreFile(Ljava/io/File;)V
    .locals 10
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 68
    monitor-enter p0

    if-nez p1, :cond_0

    .line 69
    :try_start_0
    new-instance v1, Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->getKeyStoreFilePath(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local p1    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object p1, v1

    .line 71
    .end local v1    # "file":Ljava/io/File;
    .restart local p1    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 77
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 78
    const-string v5, "Failed to delete empty keystore file: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_1
    const/4 v2, 0x0

    .line 84
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    move-object v2, v3

    .line 90
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_0
    :try_start_2
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 91
    .local v4, "store":Ljava/security/KeyStore;
    const-string v5, ""

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 92
    iput-object v4, p0, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->mKeyStore:Ljava/security/KeyStore;

    .line 93
    iput-object p1, p0, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->mKeyStoreFile:Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 100
    :try_start_3
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    .end local v4    # "store":Ljava/security/KeyStore;
    :goto_1
    monitor-exit p0

    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "Failed to initialize local key store"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->mKeyStore:Ljava/security/KeyStore;

    .line 98
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->mKeyStoreFile:Ljava/io/File;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 100
    :try_start_5
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 100
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    :try_start_6
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 85
    :catch_1
    move-exception v5

    goto :goto_0
.end method
