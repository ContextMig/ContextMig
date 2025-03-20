.class public Lorg/openintents/openpgp/util/OpenPgpApi;
.super Ljava/lang/Object;
.source "OpenPgpApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openintents/openpgp/util/OpenPgpApi$PermissionPingCallback;,
        Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;,
        Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;,
        Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;,
        Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpAsyncTask;,
        Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;,
        Lorg/openintents/openpgp/util/OpenPgpApi$CancelableBackgroundOperation;,
        Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;,
        Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpCallback;
    }
.end annotation


# static fields
.field public static final ACTION_BACKUP:Ljava/lang/String; = "org.openintents.openpgp.action.BACKUP"

.field public static final ACTION_CHECK_PERMISSION:Ljava/lang/String; = "org.openintents.openpgp.action.CHECK_PERMISSION"

.field public static final ACTION_CLEARTEXT_SIGN:Ljava/lang/String; = "org.openintents.openpgp.action.CLEARTEXT_SIGN"

.field public static final ACTION_DECRYPT_METADATA:Ljava/lang/String; = "org.openintents.openpgp.action.DECRYPT_METADATA"

.field public static final ACTION_DECRYPT_VERIFY:Ljava/lang/String; = "org.openintents.openpgp.action.DECRYPT_VERIFY"

.field public static final ACTION_DETACHED_SIGN:Ljava/lang/String; = "org.openintents.openpgp.action.DETACHED_SIGN"

.field public static final ACTION_ENCRYPT:Ljava/lang/String; = "org.openintents.openpgp.action.ENCRYPT"

.field public static final ACTION_GET_KEY:Ljava/lang/String; = "org.openintents.openpgp.action.GET_KEY"

.field public static final ACTION_GET_KEY_IDS:Ljava/lang/String; = "org.openintents.openpgp.action.GET_KEY_IDS"

.field public static final ACTION_GET_SIGN_KEY_ID:Ljava/lang/String; = "org.openintents.openpgp.action.GET_SIGN_KEY_ID"

.field public static final ACTION_QUERY_AUTOCRYPT_STATUS:Ljava/lang/String; = "org.openintents.openpgp.action.QUERY_AUTOCRYPT_STATUS"

.field public static final ACTION_SIGN:Ljava/lang/String; = "org.openintents.openpgp.action.SIGN"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SIGN_AND_ENCRYPT:Ljava/lang/String; = "org.openintents.openpgp.action.SIGN_AND_ENCRYPT"

.field public static final ACTION_UPDATE_AUTOCRYPT_PEER:Ljava/lang/String; = "org.openintents.openpgp.action.UPDATE_AUTOCRYPT_PEER"

.field public static final API_VERSION:I = 0xc

.field public static final AUTOCRYPT_STATUS_AVAILABLE:I = 0x2

.field public static final AUTOCRYPT_STATUS_DISCOURAGE:I = 0x1

.field public static final AUTOCRYPT_STATUS_MUTUAL:I = 0x3

.field public static final AUTOCRYPT_STATUS_UNAVAILABLE:I = 0x0

.field public static final EXTRA_API_VERSION:Ljava/lang/String; = "api_version"

.field public static final EXTRA_AUTOCRYPT_PEER_ID:Ljava/lang/String; = "autocrypt_peer_id"

.field public static final EXTRA_AUTOCRYPT_PEER_UPDATE:Ljava/lang/String; = "autocrypt_peer_update"

.field public static final EXTRA_BACKUP_SECRET:Ljava/lang/String; = "backup_secret"

.field public static final EXTRA_CALL_UUID1:Ljava/lang/String; = "call_uuid1"

.field public static final EXTRA_CALL_UUID2:Ljava/lang/String; = "call_uuid2"

.field public static final EXTRA_DATA_LENGTH:Ljava/lang/String; = "data_length"

.field public static final EXTRA_DECRYPTION_RESULT:Ljava/lang/String; = "decryption_result"

.field public static final EXTRA_DETACHED_SIGNATURE:Ljava/lang/String; = "detached_signature"

.field public static final EXTRA_ENABLE_COMPRESSION:Ljava/lang/String; = "enable_compression"

.field public static final EXTRA_KEY_ID:Ljava/lang/String; = "key_id"

.field public static final EXTRA_KEY_IDS:Ljava/lang/String; = "key_ids"

.field public static final EXTRA_KEY_IDS_SELECTED:Ljava/lang/String; = "key_ids_selected"

.field public static final EXTRA_MINIMIZE:Ljava/lang/String; = "minimize"

.field public static final EXTRA_MINIMIZE_USER_ID:Ljava/lang/String; = "minimize_user_id"

.field public static final EXTRA_OPPORTUNISTIC_ENCRYPTION:Ljava/lang/String; = "opportunistic"

.field public static final EXTRA_ORIGINAL_FILENAME:Ljava/lang/String; = "original_filename"

.field public static final EXTRA_PASSPHRASE:Ljava/lang/String; = "passphrase"

.field public static final EXTRA_PROGRESS_MESSENGER:Ljava/lang/String; = "progress_messenger"

.field public static final EXTRA_REQUEST_ASCII_ARMOR:Ljava/lang/String; = "ascii_armor"

.field public static final EXTRA_SENDER_ADDRESS:Ljava/lang/String; = "sender_address"

.field public static final EXTRA_SIGN_KEY_ID:Ljava/lang/String; = "sign_key_id"

.field public static final EXTRA_SUPPORT_OVERRIDE_CRYPTO_WARNING:Ljava/lang/String; = "support_override_crpto_warning"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "user_id"

.field public static final EXTRA_USER_IDS:Ljava/lang/String; = "user_ids"

.field public static final RESULT_AUTOCRYPT_STATUS:Ljava/lang/String; = "autocrypt_status"

.field public static final RESULT_CHARSET:Ljava/lang/String; = "charset"

.field public static final RESULT_CODE:Ljava/lang/String; = "result_code"

.field public static final RESULT_CODE_ERROR:I = 0x0

.field public static final RESULT_CODE_SUCCESS:I = 0x1

.field public static final RESULT_CODE_USER_INTERACTION_REQUIRED:I = 0x2

.field public static final RESULT_DECRYPTION:Ljava/lang/String; = "decryption"

.field public static final RESULT_DETACHED_SIGNATURE:Ljava/lang/String; = "detached_signature"

.field public static final RESULT_ERROR:Ljava/lang/String; = "error"

.field public static final RESULT_INSECURE_DETAIL_INTENT:Ljava/lang/String; = "insecure_detail_intent"

.field public static final RESULT_INTENT:Ljava/lang/String; = "intent"

.field public static final RESULT_KEYS_CONFIRMED:Ljava/lang/String; = "keys_confirmed"

.field public static final RESULT_KEY_IDS:Ljava/lang/String; = "key_ids"

.field public static final RESULT_METADATA:Ljava/lang/String; = "metadata"

.field public static final RESULT_OVERRIDE_CRYPTO_WARNING:Ljava/lang/String; = "override_crypto_warning"

.field public static final RESULT_SIGNATURE:Ljava/lang/String; = "signature"

.field public static final RESULT_SIGNATURE_MICALG:Ljava/lang/String; = "signature_micalg"

.field public static final SERVICE_INTENT_2:Ljava/lang/String; = "org.openintents.openpgp.IOpenPgpService2"

.field public static final TAG:Ljava/lang/String; = "OpenPgp API"


# instance fields
.field mContext:Landroid/content/Context;

.field final mPipeIdGen:Ljava/util/concurrent/atomic/AtomicInteger;

.field mService:Lorg/openintents/openpgp/IOpenPgpService2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/openintents/openpgp/IOpenPgpService2;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lorg/openintents/openpgp/IOpenPgpService2;

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpApi;->mPipeIdGen:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 321
    iput-object p1, p0, Lorg/openintents/openpgp/util/OpenPgpApi;->mContext:Landroid/content/Context;

    .line 322
    iput-object p2, p0, Lorg/openintents/openpgp/util/OpenPgpApi;->mService:Lorg/openintents/openpgp/IOpenPgpService2;

    .line 323
    return-void
.end method

.method private static closeLoudly(Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p0, "input"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 651
    if-eqz p0, :cond_0

    .line 653
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 654
    :catch_0
    move-exception v0

    .line 655
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "OpenPgp API"

    const-string v2, "IOException when closing ParcelFileDescriptor!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private executeApi(Landroid/content/Intent;Landroid/os/ParcelFileDescriptor;I)Landroid/content/Intent;
    .locals 6
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "input"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "outputPipeId"    # I

    .prologue
    .line 624
    :try_start_0
    const-string v2, "api_version"

    const/16 v3, 0xc

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 629
    iget-object v2, p0, Lorg/openintents/openpgp/util/OpenPgpApi;->mService:Lorg/openintents/openpgp/IOpenPgpService2;

    invoke-interface {v2, p1, p2, p3}, Lorg/openintents/openpgp/IOpenPgpService2;->execute(Landroid/content/Intent;Landroid/os/ParcelFileDescriptor;I)Landroid/content/Intent;

    move-result-object v1

    .line 634
    .local v1, "result":Landroid/content/Intent;
    iget-object v2, p0, Lorg/openintents/openpgp/util/OpenPgpApi;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    invoke-static {p2}, Lorg/openintents/openpgp/util/OpenPgpApi;->closeLoudly(Landroid/os/ParcelFileDescriptor;)V

    .line 643
    :goto_0
    return-object v1

    .line 637
    .end local v1    # "result":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "OpenPgp API"

    const-string v3, "Exception in executeApi call"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 639
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 640
    .restart local v1    # "result":Landroid/content/Intent;
    const-string v2, "result_code"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 641
    const-string v2, "error"

    new-instance v3, Lorg/openintents/openpgp/OpenPgpError;

    const/4 v4, -0x1

    .line 642
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/openintents/openpgp/OpenPgpError;-><init>(ILjava/lang/String;)V

    .line 641
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    invoke-static {p2}, Lorg/openintents/openpgp/util/OpenPgpApi;->closeLoudly(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "result":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    invoke-static {p2}, Lorg/openintents/openpgp/util/OpenPgpApi;->closeLoudly(Landroid/os/ParcelFileDescriptor;)V

    throw v2
.end method


# virtual methods
.method public checkPermissionPing(Lorg/openintents/openpgp/util/OpenPgpApi$PermissionPingCallback;)V
    .locals 3
    .param p1, "permissionPingCallback"    # Lorg/openintents/openpgp/util/OpenPgpApi$PermissionPingCallback;

    .prologue
    const/4 v2, 0x0

    .line 665
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.openintents.openpgp.action.CHECK_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 666
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lorg/openintents/openpgp/util/OpenPgpApi$2;

    invoke-direct {v1, p0, p1}, Lorg/openintents/openpgp/util/OpenPgpApi$2;-><init>(Lorg/openintents/openpgp/util/OpenPgpApi;Lorg/openintents/openpgp/util/OpenPgpApi$PermissionPingCallback;)V

    invoke-virtual {p0, v0, v2, v2, v1}, Lorg/openintents/openpgp/util/OpenPgpApi;->executeApiAsync(Landroid/content/Intent;Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpCallback;)V

    .line 672
    return-void
.end method

.method public executeApi(Landroid/content/Intent;Ljava/io/InputStream;Ljava/io/OutputStream;)Landroid/content/Intent;
    .locals 10
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 499
    const/4 v1, 0x0

    .line 500
    .local v1, "input":Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    .line 502
    .local v2, "output":Landroid/os/ParcelFileDescriptor;
    if-eqz p2, :cond_0

    .line 503
    :try_start_0
    invoke-static {p2}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil;->pipeFrom(Ljava/io/InputStream;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 506
    :cond_0
    const/4 v4, 0x0

    .line 507
    .local v4, "pumpThread":Ljava/lang/Thread;
    const/4 v3, 0x0

    .line 509
    .local v3, "outputPipeId":I
    if-eqz p3, :cond_1

    .line 510
    iget-object v6, p0, Lorg/openintents/openpgp/util/OpenPgpApi;->mPipeIdGen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    .line 511
    iget-object v6, p0, Lorg/openintents/openpgp/util/OpenPgpApi;->mService:Lorg/openintents/openpgp/IOpenPgpService2;

    invoke-interface {v6, v3}, Lorg/openintents/openpgp/IOpenPgpService2;->createOutputPipe(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 512
    invoke-static {p3, v2}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil;->pipeTo(Ljava/io/OutputStream;Landroid/os/ParcelFileDescriptor;)Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;

    move-result-object v4

    .line 515
    :cond_1
    invoke-direct {p0, p1, v1, v3}, Lorg/openintents/openpgp/util/OpenPgpApi;->executeApi(Landroid/content/Intent;Landroid/os/ParcelFileDescriptor;I)Landroid/content/Intent;

    move-result-object v5

    .line 518
    .local v5, "result":Landroid/content/Intent;
    if-eqz v4, :cond_2

    .line 519
    invoke-virtual {v4}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    :cond_2
    invoke-static {v2}, Lorg/openintents/openpgp/util/OpenPgpApi;->closeLoudly(Landroid/os/ParcelFileDescriptor;)V

    .line 529
    .end local v3    # "outputPipeId":I
    .end local v4    # "pumpThread":Ljava/lang/Thread;
    :goto_0
    return-object v5

    .line 523
    .end local v5    # "result":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "OpenPgp API"

    const-string v7, "Exception in executeApi call"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 526
    .restart local v5    # "result":Landroid/content/Intent;
    const-string v6, "result_code"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 527
    const-string v6, "error"

    new-instance v7, Lorg/openintents/openpgp/OpenPgpError;

    const/4 v8, -0x1

    .line 528
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/openintents/openpgp/OpenPgpError;-><init>(ILjava/lang/String;)V

    .line 527
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 531
    invoke-static {v2}, Lorg/openintents/openpgp/util/OpenPgpApi;->closeLoudly(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "result":Landroid/content/Intent;
    :catchall_0
    move-exception v6

    invoke-static {v2}, Lorg/openintents/openpgp/util/OpenPgpApi;->closeLoudly(Landroid/os/ParcelFileDescriptor;)V

    throw v6
.end method

.method public executeApi(Landroid/content/Intent;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;Ljava/io/OutputStream;)Landroid/content/Intent;
    .locals 11
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "dataSource"    # Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
    .param p3, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 578
    const/4 v2, 0x0

    .line 581
    .local v2, "input":Landroid/os/ParcelFileDescriptor;
    if-eqz p2, :cond_0

    .line 582
    :try_start_0
    invoke-virtual {p2}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->getSizeForProgress()Ljava/lang/Long;

    move-result-object v1

    .line 583
    .local v1, "expectedSize":Ljava/lang/Long;
    if-eqz v1, :cond_3

    .line 584
    const-string v7, "data_length"

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p1, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 588
    :goto_0
    invoke-virtual {p2}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->startPumpThread()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 591
    .end local v1    # "expectedSize":Ljava/lang/Long;
    :cond_0
    const/4 v5, 0x0

    .line 592
    .local v5, "pumpThread":Ljava/lang/Thread;
    const/4 v4, 0x0

    .line 594
    .local v4, "outputPipeId":I
    if-eqz p3, :cond_1

    .line 595
    iget-object v7, p0, Lorg/openintents/openpgp/util/OpenPgpApi;->mPipeIdGen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    .line 596
    iget-object v7, p0, Lorg/openintents/openpgp/util/OpenPgpApi;->mService:Lorg/openintents/openpgp/IOpenPgpService2;

    invoke-interface {v7, v4}, Lorg/openintents/openpgp/IOpenPgpService2;->createOutputPipe(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 597
    .local v3, "output":Landroid/os/ParcelFileDescriptor;
    invoke-static {p3, v3}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil;->pipeTo(Ljava/io/OutputStream;Landroid/os/ParcelFileDescriptor;)Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;

    move-result-object v5

    .line 600
    .end local v3    # "output":Landroid/os/ParcelFileDescriptor;
    :cond_1
    invoke-direct {p0, p1, v2, v4}, Lorg/openintents/openpgp/util/OpenPgpApi;->executeApi(Landroid/content/Intent;Landroid/os/ParcelFileDescriptor;I)Landroid/content/Intent;

    move-result-object v6

    .line 603
    .local v6, "result":Landroid/content/Intent;
    if-eqz v5, :cond_2

    .line 604
    invoke-virtual {v5}, Ljava/lang/Thread;->join()V

    .line 614
    .end local v4    # "outputPipeId":I
    .end local v5    # "pumpThread":Ljava/lang/Thread;
    :cond_2
    :goto_1
    return-object v6

    .line 586
    .end local v6    # "result":Landroid/content/Intent;
    .restart local v1    # "expectedSize":Ljava/lang/Long;
    :cond_3
    const-string v7, "progress_messenger"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 608
    .end local v1    # "expectedSize":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 609
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "OpenPgp API"

    const-string v8, "Exception in executeApi call"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 610
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 611
    .restart local v6    # "result":Landroid/content/Intent;
    const-string v7, "result_code"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 612
    const-string v7, "error"

    new-instance v8, Lorg/openintents/openpgp/OpenPgpError;

    const/4 v9, -0x1

    .line 613
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/openintents/openpgp/OpenPgpError;-><init>(ILjava/lang/String;)V

    .line 612
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public executeApi(Landroid/content/Intent;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;)Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;
    .locals 11
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "dataSource"    # Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Intent;",
            "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;",
            "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink",
            "<TT;>;)",
            "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 455
    .local p3, "dataSink":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;, "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink<TT;>;"
    const/4 v2, 0x0

    .line 456
    .local v2, "input":Landroid/os/ParcelFileDescriptor;
    const/4 v3, 0x0

    .line 458
    .local v3, "output":Landroid/os/ParcelFileDescriptor;
    if-eqz p2, :cond_0

    .line 459
    :try_start_0
    invoke-virtual {p2}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->getSizeForProgress()Ljava/lang/Long;

    move-result-object v1

    .line 460
    .local v1, "expectedSize":Ljava/lang/Long;
    if-eqz v1, :cond_2

    .line 461
    const-string v7, "data_length"

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p1, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 465
    :goto_0
    invoke-virtual {p2}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->startPumpThread()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 468
    .end local v1    # "expectedSize":Ljava/lang/Long;
    :cond_0
    const/4 v5, 0x0

    .line 469
    .local v5, "pumpThread":Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;, "Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread<TT;>;"
    const/4 v4, 0x0

    .line 471
    .local v4, "outputPipeId":I
    if-eqz p3, :cond_1

    .line 472
    iget-object v7, p0, Lorg/openintents/openpgp/util/OpenPgpApi;->mPipeIdGen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    .line 473
    iget-object v7, p0, Lorg/openintents/openpgp/util/OpenPgpApi;->mService:Lorg/openintents/openpgp/IOpenPgpService2;

    invoke-interface {v7, v4}, Lorg/openintents/openpgp/IOpenPgpService2;->createOutputPipe(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 474
    invoke-static {p3, v3}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil;->asyncPipeToDataSink(Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;Landroid/os/ParcelFileDescriptor;)Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;

    move-result-object v5

    .line 477
    :cond_1
    invoke-direct {p0, p1, v2, v4}, Lorg/openintents/openpgp/util/OpenPgpApi;->executeApi(Landroid/content/Intent;Landroid/os/ParcelFileDescriptor;I)Landroid/content/Intent;

    move-result-object v6

    .line 479
    .local v6, "result":Landroid/content/Intent;
    if-nez v5, :cond_3

    .line 480
    new-instance v7, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;-><init>(Landroid/content/Intent;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    invoke-static {v3}, Lorg/openintents/openpgp/util/OpenPgpApi;->closeLoudly(Landroid/os/ParcelFileDescriptor;)V

    .line 492
    .end local v4    # "outputPipeId":I
    .end local v5    # "pumpThread":Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;, "Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread<TT;>;"
    :goto_1
    return-object v7

    .line 463
    .end local v6    # "result":Landroid/content/Intent;
    .restart local v1    # "expectedSize":Ljava/lang/Long;
    :cond_2
    :try_start_1
    const-string v7, "progress_messenger"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 486
    .end local v1    # "expectedSize":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "OpenPgp API"

    const-string v8, "Exception in executeApi call"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 489
    .restart local v6    # "result":Landroid/content/Intent;
    const-string v7, "result_code"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 490
    const-string v7, "error"

    new-instance v8, Lorg/openintents/openpgp/OpenPgpError;

    const/4 v9, -0x1

    .line 491
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/openintents/openpgp/OpenPgpError;-><init>(ILjava/lang/String;)V

    .line 490
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 492
    new-instance v7, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;-><init>(Landroid/content/Intent;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 494
    invoke-static {v3}, Lorg/openintents/openpgp/util/OpenPgpApi;->closeLoudly(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_1

    .line 484
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "outputPipeId":I
    .restart local v5    # "pumpThread":Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;, "Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread<TT;>;"
    :cond_3
    :try_start_3
    invoke-virtual {v5}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;->join()V

    .line 485
    new-instance v7, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;

    invoke-virtual {v5}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;->getResult()Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;-><init>(Landroid/content/Intent;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 494
    invoke-static {v3}, Lorg/openintents/openpgp/util/OpenPgpApi;->closeLoudly(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_1

    .end local v4    # "outputPipeId":I
    .end local v5    # "pumpThread":Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;, "Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread<TT;>;"
    .end local v6    # "result":Landroid/content/Intent;
    :catchall_0
    move-exception v7

    invoke-static {v3}, Lorg/openintents/openpgp/util/OpenPgpApi;->closeLoudly(Landroid/os/ParcelFileDescriptor;)V

    throw v7
.end method

.method public executeApiAsync(Landroid/content/Intent;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;)Landroid/os/AsyncTask;
    .locals 7
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "dataSource"    # Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;",
            "Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;, "Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback<Ljava/lang/Void;>;"
    const/4 v4, 0x0

    .line 419
    new-instance v0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;-><init>(Lorg/openintents/openpgp/util/OpenPgpApi;Landroid/content/Intent;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;Lorg/openintents/openpgp/util/OpenPgpApi$1;)V

    .line 423
    .local v0, "task":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;, "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask<Ljava/lang/Void;>;"
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 424
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v4}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 429
    :goto_0
    return-object v0

    .line 426
    :cond_0
    check-cast v4, [Ljava/lang/Void;

    invoke-virtual {v0, v4}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public executeApiAsync(Landroid/content/Intent;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;)Lorg/openintents/openpgp/util/OpenPgpApi$CancelableBackgroundOperation;
    .locals 8
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "dataSource"    # Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Intent;",
            "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;",
            "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink",
            "<TT;>;",
            "Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback",
            "<TT;>;)",
            "Lorg/openintents/openpgp/util/OpenPgpApi$CancelableBackgroundOperation;"
        }
    .end annotation

    .prologue
    .local p3, "dataSink":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;, "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink<TT;>;"
    .local p4, "callback":Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;, "Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback<TT;>;"
    const/4 v6, 0x0

    .line 396
    new-instance v7, Landroid/os/Messenger;

    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lorg/openintents/openpgp/util/OpenPgpApi$1;

    invoke-direct {v2, p0, p4}, Lorg/openintents/openpgp/util/OpenPgpApi$1;-><init>(Lorg/openintents/openpgp/util/OpenPgpApi;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;)V

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    invoke-direct {v7, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 403
    .local v7, "messenger":Landroid/os/Messenger;
    const-string v1, "progress_messenger"

    invoke-virtual {p1, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 405
    new-instance v0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;-><init>(Lorg/openintents/openpgp/util/OpenPgpApi;Landroid/content/Intent;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;Lorg/openintents/openpgp/util/OpenPgpApi$1;)V

    .line 409
    .local v0, "task":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;, "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask<TT;>;"
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 410
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v6}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 415
    :goto_0
    return-object v0

    .line 412
    :cond_0
    check-cast v6, [Ljava/lang/Void;

    invoke-virtual {v0, v6}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public executeApiAsync(Landroid/content/Intent;Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpCallback;)V
    .locals 7
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "os"    # Ljava/io/OutputStream;
    .param p4, "callback"    # Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpCallback;

    .prologue
    const/4 v6, 0x0

    .line 433
    new-instance v0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpAsyncTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpAsyncTask;-><init>(Lorg/openintents/openpgp/util/OpenPgpApi;Landroid/content/Intent;Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpCallback;Lorg/openintents/openpgp/util/OpenPgpApi$1;)V

    .line 437
    .local v0, "task":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpAsyncTask;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 438
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v6}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    check-cast v6, [Ljava/lang/Void;

    invoke-virtual {v0, v6}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
