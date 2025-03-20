.class public Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;
.super Ljava/lang/Object;
.source "MessageCryptoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;,
        Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;,
        Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;
    }
.end annotation


# static fields
.field private static final INVALID_OPENPGP_RESULT_CODE:I = -0x1

.field private static final NO_REPLACEMENT_PART:Lcom/fsck/k9/mail/internet/MimeBodyPart;

.field private static final REQUEST_CODE_USER_INTERACTION:I = 0x7c


# instance fields
.field private final autocryptOperations:Lcom/fsck/k9/autocrypt/AutocryptOperations;

.field private cachedDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

.field private callback:Lcom/fsck/k9/ui/crypto/MessageCryptoCallback;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final callbackLock:Ljava/lang/Object;

.field private cancelableBackgroundOperation:Lorg/openintents/openpgp/util/OpenPgpApi$CancelableBackgroundOperation;

.field private final context:Landroid/content/Context;

.field private currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

.field private currentCryptoResult:Landroid/content/Intent;

.field private currentMessage:Lcom/fsck/k9/mail/Message;

.field private isCancelled:Z

.field private messageAnnotations:Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

.field private openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

.field private openPgpApiFactory:Lcom/fsck/k9/ui/crypto/OpenPgpApiFactory;

.field private final openPgpProviderPackage:Ljava/lang/String;

.field private openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

.field private final partsToProcess:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;",
            ">;"
        }
    .end annotation
.end field

.field private processSignedOnly:Z

.field private queuedPendingIntent:Landroid/app/PendingIntent;

.field private queuedResult:Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

.field private state:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

.field private userInteractionResultIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->NO_REPLACEMENT_PART:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fsck/k9/ui/crypto/OpenPgpApiFactory;Lcom/fsck/k9/autocrypt/AutocryptOperations;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "openPgpApiFactory"    # Lcom/fsck/k9/ui/crypto/OpenPgpApiFactory;
    .param p3, "autocryptOperations"    # Lcom/fsck/k9/autocrypt/AutocryptOperations;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callbackLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->partsToProcess:Ljava/util/Deque;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->context:Landroid/content/Context;

    .line 97
    invoke-static {}, Lcom/fsck/k9/K9;->isOpenPgpProviderConfigured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MessageCryptoHelper must only be called with a OpenPGP provider!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iput-object p3, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->autocryptOperations:Lcom/fsck/k9/autocrypt/AutocryptOperations;

    .line 102
    iput-object p2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpApiFactory:Lcom/fsck/k9/ui/crypto/OpenPgpApiFactory;

    .line 103
    invoke-static {}, Lcom/fsck/k9/K9;->getOpenPgpProvider()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpProviderPackage:Ljava/lang/String;

    .line 104
    return-void
.end method

.method static synthetic access$002(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;Lorg/openintents/openpgp/util/OpenPgpApi;)Lorg/openintents/openpgp/util/OpenPgpApi;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;
    .param p1, "x1"    # Lorg/openintents/openpgp/util/OpenPgpApi;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

    return-object p1
.end method

.method static synthetic access$100(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)Lcom/fsck/k9/ui/crypto/OpenPgpApiFactory;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpApiFactory:Lcom/fsck/k9/ui/crypto/OpenPgpApiFactory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->nextStep()V

    return-void
.end method

.method static synthetic access$400(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;II)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callbackProgress(II)V

    return-void
.end method

.method static synthetic access$502(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;Lorg/openintents/openpgp/util/OpenPgpApi$CancelableBackgroundOperation;)Lorg/openintents/openpgp/util/OpenPgpApi$CancelableBackgroundOperation;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;
    .param p1, "x1"    # Lorg/openintents/openpgp/util/OpenPgpApi$CancelableBackgroundOperation;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->cancelableBackgroundOperation:Lorg/openintents/openpgp/util/OpenPgpApi$CancelableBackgroundOperation;

    return-object p1
.end method

.method static synthetic access$602(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoResult:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$700(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;Lcom/fsck/k9/mail/internet/MimeBodyPart;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;
    .param p1, "x1"    # Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->onCryptoOperationReturned(Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    return-void
.end method

.method static synthetic access$800(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    return-object v0
.end method

.method private addCryptoResultAnnotationToMessage(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)V
    .locals 2
    .param p1, "resultAnnotation"    # Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .prologue
    .line 624
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    iget-object v0, v1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->part:Lcom/fsck/k9/mail/Part;

    .line 625
    .local v0, "part":Lcom/fsck/k9/mail/Part;
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->messageAnnotations:Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    invoke-virtual {v1, v0, p1}, Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;->put(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)V

    .line 627
    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->propagateEncapsulatedSignedPart(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;Lcom/fsck/k9/mail/Part;)V

    .line 628
    return-void
.end method

.method private addErrorAnnotation(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;Lcom/fsck/k9/mail/internet/MimeBodyPart;)V
    .locals 2
    .param p1, "part"    # Lcom/fsck/k9/mail/Part;
    .param p2, "error"    # Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;
    .param p3, "replacementPart"    # Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .prologue
    .line 203
    invoke-static {p2, p3}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->createErrorAnnotation(Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;Lcom/fsck/k9/mail/internet/MimeBodyPart;)Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    move-result-object v0

    .line 204
    .local v0, "annotation":Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->messageAnnotations:Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    invoke-virtual {v1, p1, v0}, Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;->put(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)V

    .line 205
    return-void
.end method

.method private callAsyncDecrypt(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->getDataSourceForEncryptedOrInlineData()Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;

    move-result-object v0

    .line 379
    .local v0, "dataSource":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->getDataSinkForDecryptedData()Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;

    move-result-object v1

    .line 381
    .local v1, "openPgpDataSink":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;, "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink<Lcom/fsck/k9/mail/internet/MimeBodyPart;>;"
    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

    new-instance v3, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$5;

    invoke-direct {v3, p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$5;-><init>(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)V

    invoke-virtual {v2, p1, v0, v1, v3}, Lorg/openintents/openpgp/util/OpenPgpApi;->executeApiAsync(Landroid/content/Intent;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;)Lorg/openintents/openpgp/util/OpenPgpApi$CancelableBackgroundOperation;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->cancelableBackgroundOperation:Lorg/openintents/openpgp/util/OpenPgpApi$CancelableBackgroundOperation;

    .line 396
    return-void
.end method

.method private callAsyncDetachedVerify(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 399
    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    iget-object v2, v2, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->part:Lcom/fsck/k9/mail/Part;

    invoke-direct {p0, v2}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->getDataSourceForSignedData(Lcom/fsck/k9/mail/Part;)Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;

    move-result-object v0

    .line 401
    .local v0, "dataSource":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    iget-object v2, v2, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->part:Lcom/fsck/k9/mail/Part;

    invoke-static {v2}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->getSignatureData(Lcom/fsck/k9/mail/Part;)[B

    move-result-object v1

    .line 402
    .local v1, "signatureData":[B
    const-string v2, "detached_signature"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 404
    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

    new-instance v3, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$6;

    invoke-direct {v3, p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$6;-><init>(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)V

    invoke-virtual {v2, p1, v0, v3}, Lorg/openintents/openpgp/util/OpenPgpApi;->executeApiAsync(Landroid/content/Intent;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;)Landroid/os/AsyncTask;

    .line 418
    return-void
.end method

.method private callAsyncInlineOperation(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->getDataSourceForEncryptedOrInlineData()Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;

    move-result-object v1

    .line 332
    .local v1, "dataSource":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->getDataSinkForDecryptedInlineData()Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;

    move-result-object v0

    .line 334
    .local v0, "dataSink":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;, "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink<Lcom/fsck/k9/mail/internet/MimeBodyPart;>;"
    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

    new-instance v3, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$3;

    invoke-direct {v3, p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$3;-><init>(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)V

    invoke-virtual {v2, p1, v1, v0, v3}, Lorg/openintents/openpgp/util/OpenPgpApi;->executeApiAsync(Landroid/content/Intent;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;)Lorg/openintents/openpgp/util/OpenPgpApi$CancelableBackgroundOperation;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->cancelableBackgroundOperation:Lorg/openintents/openpgp/util/OpenPgpApi$CancelableBackgroundOperation;

    .line 349
    return-void
.end method

.method private callbackPendingIntent(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 711
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 712
    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->queuedPendingIntent:Landroid/app/PendingIntent;

    .line 713
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->deliverResult()V

    .line 714
    monitor-exit v1

    .line 715
    return-void

    .line 714
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private callbackProgress(II)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "max"    # I

    .prologue
    .line 729
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 730
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callback:Lcom/fsck/k9/ui/crypto/MessageCryptoCallback;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callback:Lcom/fsck/k9/ui/crypto/MessageCryptoCallback;

    invoke-interface {v0, p1, p2}, Lcom/fsck/k9/ui/crypto/MessageCryptoCallback;->onCryptoHelperProgress(II)V

    .line 733
    :cond_0
    monitor-exit v1

    .line 734
    return-void

    .line 733
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private callbackReturnResult()V
    .locals 2

    .prologue
    .line 718
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 719
    :try_start_0
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->cleanupAfterProcessingFinished()V

    .line 721
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->messageAnnotations:Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    iput-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->queuedResult:Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->messageAnnotations:Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    .line 724
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->deliverResult()V

    .line 725
    monitor-exit v1

    .line 726
    return-void

    .line 725
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private cleanupAfterProcessingFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 681
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->partsToProcess:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 682
    iput-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 683
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    invoke-virtual {v0}, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->unbindFromService()V

    .line 686
    :cond_0
    iput-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    .line 687
    return-void
.end method

.method private connectToCryptoProviderService()V
    .locals 4

    .prologue
    .line 239
    new-instance v0, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpProviderPackage:Ljava/lang/String;

    new-instance v3, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$1;

    invoke-direct {v3, p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$1;-><init>(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)V

    invoke-direct {v0, v1, v2, v3}, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/openintents/openpgp/util/OpenPgpServiceConnection$OnBound;)V

    iput-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    .line 255
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    invoke-virtual {v0}, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->bindToService()V

    .line 256
    return-void
.end method

.method private decryptOrVerifyCurrentPart()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->userInteractionResultIntent:Landroid/content/Intent;

    .line 260
    .local v0, "apiIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->userInteractionResultIntent:Landroid/content/Intent;

    .line 261
    if-nez v0, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->getDecryptVerifyIntent()Landroid/content/Intent;

    move-result-object v0

    .line 264
    :cond_0
    invoke-direct {p0, v0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->decryptVerify(Landroid/content/Intent;)V

    .line 265
    return-void
.end method

.method private decryptVerify(Landroid/content/Intent;)V
    .locals 6
    .param p1, "apiIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 287
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    iget-object v0, v2, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->type:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    .line 288
    .local v0, "cryptoPartType":Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;
    sget-object v2, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$10;->$SwitchMap$com$fsck$k9$ui$crypto$MessageCryptoHelper$CryptoPartType:[I

    invoke-virtual {v0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 305
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown crypto part type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 306
    .end local v0    # "cryptoPartType":Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "IOException"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 290
    .restart local v0    # "cryptoPartType":Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callAsyncDetachedVerify(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 308
    .end local v0    # "cryptoPartType":Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;
    :catch_1
    move-exception v1

    .line 309
    .local v1, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v2, "MessagingException"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 294
    .end local v1    # "e":Lcom/fsck/k9/mail/MessagingException;
    .restart local v0    # "cryptoPartType":Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;
    :pswitch_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callAsyncDecrypt(Landroid/content/Intent;)V

    goto :goto_0

    .line 298
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callAsyncInlineOperation(Landroid/content/Intent;)V

    goto :goto_0

    .line 302
    :pswitch_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "This part type must have been handled previously!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private deliverResult()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 738
    iget-boolean v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->isCancelled:Z

    if-eqz v0, :cond_0

    .line 755
    :goto_0
    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callback:Lcom/fsck/k9/ui/crypto/MessageCryptoCallback;

    if-nez v0, :cond_1

    .line 743
    const-string v0, "Keeping crypto helper result in queue for later delivery"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 746
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->queuedResult:Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    if-eqz v0, :cond_2

    .line 747
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callback:Lcom/fsck/k9/ui/crypto/MessageCryptoCallback;

    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->queuedResult:Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    invoke-interface {v0, v1}, Lcom/fsck/k9/ui/crypto/MessageCryptoCallback;->onCryptoOperationsFinished(Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;)V

    goto :goto_0

    .line 748
    :cond_2
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->queuedPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    .line 749
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callback:Lcom/fsck/k9/ui/crypto/MessageCryptoCallback;

    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->queuedPendingIntent:Landroid/app/PendingIntent;

    .line 750
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/16 v2, 0x7c

    move v5, v4

    move v6, v4

    .line 749
    invoke-interface/range {v0 .. v6}, Lcom/fsck/k9/ui/crypto/MessageCryptoCallback;->startPendingIntentForCryptoHelper(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 751
    iput-object v3, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->queuedPendingIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 753
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "deliverResult() called with no result!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findPartsForAutocryptPass()V
    .locals 4

    .prologue
    .line 191
    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->messageAnnotations:Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 192
    .local v1, "otherCryptoPerformed":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 200
    :cond_0
    :goto_1
    return-void

    .line 191
    .end local v1    # "otherCryptoPerformed":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 196
    .restart local v1    # "otherCryptoPerformed":Z
    :cond_2
    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->autocryptOperations:Lcom/fsck/k9/autocrypt/AutocryptOperations;

    iget-object v3, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentMessage:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/autocrypt/AutocryptOperations;->hasAutocryptHeader(Lcom/fsck/k9/mail/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    new-instance v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    sget-object v2, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;->PLAIN_AUTOCRYPT:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    iget-object v3, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentMessage:Lcom/fsck/k9/mail/Message;

    invoke-direct {v0, v2, v3}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;-><init>(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;Lcom/fsck/k9/mail/Part;)V

    .line 198
    .local v0, "cryptoPart":Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;
    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->partsToProcess:Ljava/util/Deque;

    invoke-interface {v2, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private findPartsForMultipartEncryptionPass()V
    .locals 6

    .prologue
    .line 128
    iget-object v3, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentMessage:Lcom/fsck/k9/mail/Message;

    invoke-static {v3}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->findMultipartEncryptedParts(Lcom/fsck/k9/mail/Part;)Ljava/util/List;

    move-result-object v1

    .line 129
    .local v1, "encryptedParts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Part;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/Part;

    .line 130
    .local v2, "part":Lcom/fsck/k9/mail/Part;
    invoke-static {v2}, Lcom/fsck/k9/mailstore/MessageHelper;->isCompletePartAvailable(Lcom/fsck/k9/mail/Part;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 131
    sget-object v4, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->OPENPGP_ENCRYPTED_BUT_INCOMPLETE:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    invoke-static {}, Lcom/fsck/k9/mailstore/MessageHelper;->createEmptyPart()Lcom/fsck/k9/mail/internet/MimeBodyPart;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->addErrorAnnotation(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-static {v2}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->isMultipartEncryptedOpenPgpProtocol(Lcom/fsck/k9/mail/Part;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    new-instance v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    sget-object v4, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;->PGP_ENCRYPTED:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    invoke-direct {v0, v4, v2}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;-><init>(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;Lcom/fsck/k9/mail/Part;)V

    .line 136
    .local v0, "cryptoPart":Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;
    iget-object v4, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->partsToProcess:Ljava/util/Deque;

    invoke-interface {v4, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    .end local v0    # "cryptoPart":Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;
    :cond_1
    sget-object v4, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->ENCRYPTED_BUT_UNSUPPORTED:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    invoke-static {}, Lcom/fsck/k9/mailstore/MessageHelper;->createEmptyPart()Lcom/fsck/k9/mail/internet/MimeBodyPart;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->addErrorAnnotation(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    goto :goto_0

    .line 141
    .end local v2    # "part":Lcom/fsck/k9/mail/Part;
    :cond_2
    return-void
.end method

.method private findPartsForMultipartSignaturePass()V
    .locals 7

    .prologue
    .line 144
    iget-object v5, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentMessage:Lcom/fsck/k9/mail/Message;

    iget-object v6, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->messageAnnotations:Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    .line 145
    invoke-static {v5, v6}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->findMultipartSignedParts(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;)Ljava/util/List;

    move-result-object v4

    .line 146
    .local v4, "signedParts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Part;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/Part;

    .line 147
    .local v2, "part":Lcom/fsck/k9/mail/Part;
    iget-boolean v6, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->processSignedOnly:Z

    if-nez v6, :cond_1

    .line 148
    iget-object v6, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->messageAnnotations:Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    .line 149
    invoke-virtual {v6, v2}, Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;->findKeyForAnnotationWithReplacementPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/Part;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    .line 150
    .local v1, "isEncapsulatedSignature":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 154
    .end local v1    # "isEncapsulatedSignature":Z
    :cond_1
    invoke-static {v2}, Lcom/fsck/k9/mailstore/MessageHelper;->isCompletePartAvailable(Lcom/fsck/k9/mail/Part;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 155
    invoke-static {v2}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->getMultipartSignedContentPartIfAvailable(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    move-result-object v3

    .line 156
    .local v3, "replacementPart":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    sget-object v6, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->OPENPGP_SIGNED_BUT_INCOMPLETE:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    invoke-direct {p0, v2, v6, v3}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->addErrorAnnotation(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    goto :goto_0

    .line 149
    .end local v3    # "replacementPart":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 159
    :cond_3
    invoke-static {v2}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->isMultipartSignedOpenPgpProtocol(Lcom/fsck/k9/mail/Part;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 160
    new-instance v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    sget-object v6, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;->PGP_SIGNED:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    invoke-direct {v0, v6, v2}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;-><init>(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;Lcom/fsck/k9/mail/Part;)V

    .line 161
    .local v0, "cryptoPart":Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;
    iget-object v6, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->partsToProcess:Ljava/util/Deque;

    invoke-interface {v6, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    .end local v0    # "cryptoPart":Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;
    :cond_4
    invoke-static {v2}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->getMultipartSignedContentPartIfAvailable(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    move-result-object v3

    .line 165
    .restart local v3    # "replacementPart":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    sget-object v6, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->SIGNED_BUT_UNSUPPORTED:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    invoke-direct {p0, v2, v6, v3}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->addErrorAnnotation(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    goto :goto_0

    .line 167
    .end local v2    # "part":Lcom/fsck/k9/mail/Part;
    .end local v3    # "replacementPart":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    :cond_5
    return-void
.end method

.method private findPartsForNextPass()V
    .locals 2

    .prologue
    .line 646
    sget-object v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$10;->$SwitchMap$com$fsck$k9$ui$crypto$MessageCryptoHelper$State:[I

    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->state:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    invoke-virtual {v1}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 675
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unhandled state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :pswitch_0
    sget-object v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;->ENCRYPTION:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    iput-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->state:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    .line 650
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->findPartsForMultipartEncryptionPass()V

    .line 671
    :goto_0
    return-void

    .line 655
    :pswitch_1
    sget-object v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;->SIGNATURES_AND_INLINE:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    iput-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->state:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    .line 657
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->findPartsForMultipartSignaturePass()V

    .line 658
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->findPartsForPgpInlinePass()V

    goto :goto_0

    .line 663
    :pswitch_2
    sget-object v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;->AUTOCRYPT:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    iput-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->state:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    .line 665
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->findPartsForAutocryptPass()V

    goto :goto_0

    .line 670
    :pswitch_3
    sget-object v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;->FINISHED:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    iput-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->state:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    goto :goto_0

    .line 646
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private findPartsForPgpInlinePass()V
    .locals 6

    .prologue
    .line 170
    iget-object v3, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentMessage:Lcom/fsck/k9/mail/Message;

    invoke-static {v3}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->findPgpInlineParts(Lcom/fsck/k9/mail/Part;)Ljava/util/List;

    move-result-object v1

    .line 171
    .local v1, "inlineParts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Part;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/Part;

    .line 172
    .local v2, "part":Lcom/fsck/k9/mail/Part;
    iget-boolean v4, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->processSignedOnly:Z

    if-nez v4, :cond_1

    invoke-static {v2}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->isPartPgpInlineEncrypted(Lcom/fsck/k9/mail/Part;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    :cond_1
    iget-object v4, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentMessage:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/Message;->getFlags()Ljava/util/Set;

    move-result-object v4

    sget-object v5, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 177
    invoke-static {v2}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->isPartPgpInlineEncrypted(Lcom/fsck/k9/mail/Part;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 178
    sget-object v4, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->OPENPGP_ENCRYPTED_BUT_INCOMPLETE:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    sget-object v5, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->NO_REPLACEMENT_PART:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    invoke-direct {p0, v2, v4, v5}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->addErrorAnnotation(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    goto :goto_0

    .line 180
    :cond_2
    sget-object v4, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->OPENPGP_SIGNED_BUT_INCOMPLETE:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    sget-object v5, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->NO_REPLACEMENT_PART:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    invoke-direct {p0, v2, v4, v5}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->addErrorAnnotation(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    goto :goto_0

    .line 185
    :cond_3
    new-instance v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    sget-object v4, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;->PGP_INLINE:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    invoke-direct {v0, v4, v2}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;-><init>(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;Lcom/fsck/k9/mail/Part;)V

    .line 186
    .local v0, "cryptoPart":Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;
    iget-object v4, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->partsToProcess:Ljava/util/Deque;

    invoke-interface {v4, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    .end local v0    # "cryptoPart":Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;
    .end local v2    # "part":Lcom/fsck/k9/mail/Part;
    :cond_4
    return-void
.end method

.method private getDataSinkForDecryptedData()Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink",
            "<",
            "Lcom/fsck/k9/mail/internet/MimeBodyPart;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    new-instance v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$9;

    invoke-direct {v0, p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$9;-><init>(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)V

    return-object v0
.end method

.method private getDataSinkForDecryptedInlineData()Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink",
            "<",
            "Lcom/fsck/k9/mail/internet/MimeBodyPart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    new-instance v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$4;

    invoke-direct {v0, p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$4;-><init>(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)V

    return-object v0
.end method

.method private getDataSourceForEncryptedOrInlineData()Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    new-instance v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$8;

    invoke-direct {v0, p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$8;-><init>(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)V

    return-object v0
.end method

.method private getDataSourceForSignedData(Lcom/fsck/k9/mail/Part;)Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
    .locals 1
    .param p1, "signedPart"    # Lcom/fsck/k9/mail/Part;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    new-instance v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$7;

    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$7;-><init>(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;Lcom/fsck/k9/mail/Part;)V

    return-object v0
.end method

.method private getDecryptVerifyIntent()Landroid/content/Intent;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 269
    new-instance v0, Landroid/content/Intent;

    const-string v2, "org.openintents.openpgp.action.DECRYPT_VERIFY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, "decryptIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentMessage:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v1

    .line 272
    .local v1, "from":[Lcom/fsck/k9/mail/Address;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 273
    const-string v2, "sender_address"

    aget-object v3, v1, v4

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v2, "autocrypt_peer_id"

    aget-object v3, v1, v4

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->autocryptOperations:Lcom/fsck/k9/autocrypt/AutocryptOperations;

    iget-object v3, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentMessage:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v2, v3, v0}, Lcom/fsck/k9/autocrypt/AutocryptOperations;->addAutocryptPeerUpdateToIntentIfPresent(Lcom/fsck/k9/mail/Message;Landroid/content/Intent;)Z

    .line 279
    const-string v2, "support_override_crpto_warning"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 280
    const-string v2, "decryption_result"

    iget-object v3, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->cachedDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 282
    return-object v0
.end method

.method private static getMultipartSignedContentPartIfAvailable(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/internet/MimeBodyPart;
    .locals 5
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 776
    sget-object v2, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->NO_REPLACEMENT_PART:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 777
    .local v2, "replacementPart":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 778
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    instance-of v3, v0, Lcom/fsck/k9/mail/internet/MimeMultipart;

    if-eqz v3, :cond_0

    .line 779
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 780
    .local v1, "multipart":Lcom/fsck/k9/mail/internet/MimeMultipart;
    invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/MimeMultipart;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 781
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/fsck/k9/mail/internet/MimeMultipart;->getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;

    move-result-object v2

    .end local v2    # "replacementPart":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    check-cast v2, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 784
    .end local v1    # "multipart":Lcom/fsck/k9/mail/internet/MimeMultipart;
    .restart local v2    # "replacementPart":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    :cond_0
    return-object v2
.end method

.method private handleCryptoOperationError()V
    .locals 5

    .prologue
    .line 547
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoResult:Landroid/content/Intent;

    const-string v2, "error"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/openintents/openpgp/OpenPgpError;

    .line 548
    .local v0, "error":Lorg/openintents/openpgp/OpenPgpError;
    const-string v1, "OpenPGP API error: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/openintents/openpgp/OpenPgpError;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    invoke-direct {p0, v0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->onCryptoOperationFailed(Lorg/openintents/openpgp/OpenPgpError;)V

    .line 551
    return-void
.end method

.method private handleCryptoOperationResult(Lcom/fsck/k9/mail/internet/MimeBodyPart;)V
    .locals 5
    .param p1, "outputPart"    # Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .prologue
    const/4 v4, 0x0

    .line 514
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoResult:Landroid/content/Intent;

    const-string v2, "result_code"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 515
    .local v0, "resultCode":I
    const-string v1, "OpenPGP API decryptVerify result code: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    packed-switch v0, :pswitch_data_0

    .line 535
    :goto_0
    return-void

    .line 519
    :pswitch_0
    const-string v1, "Internal error: no result code!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 523
    :pswitch_1
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->handleUserInteractionRequest()V

    goto :goto_0

    .line 527
    :pswitch_2
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->handleCryptoOperationError()V

    goto :goto_0

    .line 531
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->handleCryptoOperationSuccess(Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    goto :goto_0

    .line 517
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private handleCryptoOperationSuccess(Lcom/fsck/k9/mail/internet/MimeBodyPart;)V
    .locals 9
    .param p1, "outputPart"    # Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .prologue
    .line 554
    iget-object v4, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoResult:Landroid/content/Intent;

    const-string v7, "decryption"

    .line 555
    invoke-virtual {v4, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 556
    .local v0, "decryptionResult":Lorg/openintents/openpgp/OpenPgpDecryptionResult;
    iget-object v4, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoResult:Landroid/content/Intent;

    const-string v7, "signature"

    .line 557
    invoke-virtual {v4, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/openintents/openpgp/OpenPgpSignatureResult;

    .line 558
    .local v1, "signatureResult":Lorg/openintents/openpgp/OpenPgpSignatureResult;
    iget-object v4, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoResult:Landroid/content/Intent;

    const-string v7, "intent"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 559
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoResult:Landroid/content/Intent;

    const-string v7, "insecure_detail_intent"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 560
    .local v3, "insecureWarningPendingIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoResult:Landroid/content/Intent;

    const-string v7, "override_crypto_warning"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .local v5, "overrideCryptoWarning":Z
    move-object v4, p1

    .line 563
    invoke-static/range {v0 .. v5}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->createOpenPgpResultAnnotation(Lorg/openintents/openpgp/OpenPgpDecryptionResult;Lorg/openintents/openpgp/OpenPgpSignatureResult;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/fsck/k9/mail/internet/MimeBodyPart;Z)Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    move-result-object v6

    .line 566
    .local v6, "resultAnnotation":Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    invoke-direct {p0, v6}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->onCryptoOperationSuccess(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)V

    .line 567
    return-void
.end method

.method private handleUserInteractionRequest()V
    .locals 3

    .prologue
    .line 538
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoResult:Landroid/content/Intent;

    const-string v2, "intent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 539
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    if-nez v0, :cond_0

    .line 540
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Expecting PendingIntent on USER_INTERACTION_REQUIRED!"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 543
    :cond_0
    invoke-direct {p0, v0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callbackPendingIntent(Landroid/app/PendingIntent;)V

    .line 544
    return-void
.end method

.method private isBoundToCryptoProviderService()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextStep()V
    .locals 2

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->isCancelled:Z

    if-eqz v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 212
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->state:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    sget-object v1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;->FINISHED:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->partsToProcess:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->findPartsForNextPass()V

    goto :goto_1

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->state:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    sget-object v1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;->FINISHED:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    if-ne v0, v1, :cond_2

    .line 217
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callbackReturnResult()V

    goto :goto_0

    .line 221
    :cond_2
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->isBoundToCryptoProviderService()Z

    move-result v0

    if-nez v0, :cond_3

    .line 222
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->connectToCryptoProviderService()V

    goto :goto_0

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->partsToProcess:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    iput-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    .line 227
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    iget-object v0, v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->type:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    sget-object v1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;->PLAIN_AUTOCRYPT:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    if-ne v0, v1, :cond_4

    .line 228
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->processAutocryptHeaderForCurrentPart()V

    goto :goto_0

    .line 230
    :cond_4
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->decryptOrVerifyCurrentPart()V

    goto :goto_0
.end method

.method private onCryptoFinished()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 631
    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->partsToProcess:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 632
    .local v0, "currentPartIsFirstInQueue":Z
    :goto_0
    if-nez v0, :cond_1

    .line 633
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to remove part from queue that is not the currently processed one!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "currentPartIsFirstInQueue":Z
    :cond_0
    move v0, v1

    .line 631
    goto :goto_0

    .line 636
    .restart local v0    # "currentPartIsFirstInQueue":Z
    :cond_1
    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    if-eqz v2, :cond_2

    .line 637
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->partsToProcess:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 638
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    .line 642
    :goto_1
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->nextStep()V

    .line 643
    return-void

    .line 640
    :cond_2
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "Got to onCryptoFinished() with no part in processing!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private onCryptoOperationCanceled()V
    .locals 2

    .prologue
    .line 604
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    if-eqz v1, :cond_0

    .line 605
    invoke-static {}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->createOpenPgpCanceledAnnotation()Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    move-result-object v0

    .line 606
    .local v0, "errorPart":Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    invoke-direct {p0, v0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->addCryptoResultAnnotationToMessage(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)V

    .line 608
    .end local v0    # "errorPart":Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->onCryptoFinished()V

    .line 609
    return-void
.end method

.method private onCryptoOperationFailed(Lorg/openintents/openpgp/OpenPgpError;)V
    .locals 4
    .param p1, "error"    # Lorg/openintents/openpgp/OpenPgpError;

    .prologue
    .line 613
    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    iget-object v2, v2, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->type:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    sget-object v3, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;->PGP_SIGNED:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    if-ne v2, v3, :cond_0

    .line 614
    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    iget-object v2, v2, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->part:Lcom/fsck/k9/mail/Part;

    invoke-static {v2}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->getMultipartSignedContentPartIfAvailable(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    move-result-object v1

    .line 615
    .local v1, "replacementPart":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    invoke-static {p1, v1}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->createOpenPgpSignatureErrorAnnotation(Lorg/openintents/openpgp/OpenPgpError;Lcom/fsck/k9/mail/internet/MimeBodyPart;)Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    move-result-object v0

    .line 619
    .end local v1    # "replacementPart":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    .local v0, "annotation":Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    :goto_0
    invoke-direct {p0, v0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->addCryptoResultAnnotationToMessage(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)V

    .line 620
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->onCryptoFinished()V

    .line 621
    return-void

    .line 617
    .end local v0    # "annotation":Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    :cond_0
    invoke-static {p1}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->createOpenPgpEncryptionErrorAnnotation(Lorg/openintents/openpgp/OpenPgpError;)Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    move-result-object v0

    .restart local v0    # "annotation":Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    goto :goto_0
.end method

.method private onCryptoOperationReturned(Lcom/fsck/k9/mail/internet/MimeBodyPart;)V
    .locals 2
    .param p1, "decryptedPart"    # Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .prologue
    const/4 v1, 0x0

    .line 501
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoResult:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 502
    const-string v0, "Internal error: we should have a result here!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 511
    :goto_0
    return-void

    .line 507
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->handleCryptoOperationResult(Lcom/fsck/k9/mail/internet/MimeBodyPart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    iput-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoResult:Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoResult:Landroid/content/Intent;

    throw v0
.end method

.method private onCryptoOperationSuccess(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)V
    .locals 0
    .param p1, "resultAnnotation"    # Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->addCryptoResultAnnotationToMessage(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)V

    .line 587
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->onCryptoFinished()V

    .line 588
    return-void
.end method

.method private processAutocryptHeaderForCurrentPart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 314
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.openintents.openpgp.action.UPDATE_AUTOCRYPT_PEER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->autocryptOperations:Lcom/fsck/k9/autocrypt/AutocryptOperations;

    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    iget-object v2, v2, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->part:Lcom/fsck/k9/mail/Part;

    check-cast v2, Lcom/fsck/k9/mail/Message;

    invoke-virtual {v3, v2, v1}, Lcom/fsck/k9/autocrypt/AutocryptOperations;->addAutocryptPeerUpdateToIntentIfPresent(Lcom/fsck/k9/mail/Message;Landroid/content/Intent;)Z

    move-result v0

    .line 317
    .local v0, "hasInlineKeyData":Z
    if-eqz v0, :cond_0

    .line 318
    const-string v2, "Passing autocrypt data from plain mail to OpenPGP API"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

    new-instance v3, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$2;

    invoke-direct {v3, p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$2;-><init>(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)V

    invoke-virtual {v2, v1, v4, v4, v3}, Lorg/openintents/openpgp/util/OpenPgpApi;->executeApiAsync(Landroid/content/Intent;Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpCallback;)V

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->onCryptoFinished()V

    .line 328
    return-void
.end method

.method private propagateEncapsulatedSignedPart(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;Lcom/fsck/k9/mail/Part;)V
    .locals 4
    .param p1, "resultAnnotation"    # Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    .param p2, "part"    # Lcom/fsck/k9/mail/Part;

    .prologue
    .line 591
    iget-object v3, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->messageAnnotations:Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    invoke-virtual {v3, p2}, Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;->findKeyForAnnotationWithReplacementPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/Part;

    move-result-object v0

    .line 592
    .local v0, "encapsulatingPart":Lcom/fsck/k9/mail/Part;
    iget-object v3, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->messageAnnotations:Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    invoke-virtual {v3, v0}, Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;->get(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    move-result-object v1

    .line 594
    .local v1, "encapsulatingPartAnnotation":Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->hasSignatureResult()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 596
    invoke-virtual {v1, p1}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->withEncapsulatedResult(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    move-result-object v2

    .line 597
    .local v2, "replacementAnnotation":Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    iget-object v3, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->messageAnnotations:Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    invoke-virtual {v3, v0, v2}, Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;->put(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)V

    .line 599
    .end local v2    # "replacementAnnotation":Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    :cond_0
    return-void
.end method

.method private reattachCallback(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/ui/crypto/MessageCryptoCallback;)V
    .locals 4
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .param p2, "callback"    # Lcom/fsck/k9/ui/crypto/MessageCryptoCallback;

    .prologue
    const/4 v0, 0x0

    .line 696
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentMessage:Lcom/fsck/k9/mail/Message;

    invoke-virtual {p1, v1}, Lcom/fsck/k9/mail/Message;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 697
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Callback may only be reattached for the same message!"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 699
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callbackLock:Ljava/lang/Object;

    monitor-enter v2

    .line 700
    :try_start_0
    iput-object p2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callback:Lcom/fsck/k9/ui/crypto/MessageCryptoCallback;

    .line 702
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->queuedResult:Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->queuedPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 703
    .local v0, "hasCachedResult":Z
    :cond_2
    if-eqz v0, :cond_3

    .line 704
    const-string v1, "Returning cached result or pending intent to reattached callback"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 705
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->deliverResult()V

    .line 707
    :cond_3
    monitor-exit v2

    .line 708
    return-void

    .line 707
    .end local v0    # "hasCachedResult":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public asyncStartOrResumeProcessingMessage(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/ui/crypto/MessageCryptoCallback;Lorg/openintents/openpgp/OpenPgpDecryptionResult;Z)V
    .locals 1
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .param p2, "callback"    # Lcom/fsck/k9/ui/crypto/MessageCryptoCallback;
    .param p3, "cachedDecryptionResult"    # Lorg/openintents/openpgp/OpenPgpDecryptionResult;
    .param p4, "processSignedOnly"    # Z

    .prologue
    .line 112
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentMessage:Lcom/fsck/k9/mail/Message;

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->reattachCallback(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/ui/crypto/MessageCryptoCallback;)V

    .line 125
    :goto_0
    return-void

    .line 117
    :cond_0
    new-instance v0, Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    invoke-direct {v0}, Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->messageAnnotations:Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    .line 118
    sget-object v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;->START:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    iput-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->state:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    .line 119
    iput-object p1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentMessage:Lcom/fsck/k9/mail/Message;

    .line 120
    iput-object p3, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->cachedDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 121
    iput-object p2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callback:Lcom/fsck/k9/ui/crypto/MessageCryptoCallback;

    .line 122
    iput-boolean p4, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->processSignedOnly:Z

    .line 124
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->nextStep()V

    goto :goto_0
.end method

.method public cancelIfRunning()V
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->detachCallback()V

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->isCancelled:Z

    .line 354
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->cancelableBackgroundOperation:Lorg/openintents/openpgp/util/OpenPgpApi$CancelableBackgroundOperation;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->cancelableBackgroundOperation:Lorg/openintents/openpgp/util/OpenPgpApi$CancelableBackgroundOperation;

    invoke-interface {v0}, Lorg/openintents/openpgp/util/OpenPgpApi$CancelableBackgroundOperation;->cancelOperation()V

    .line 357
    :cond_0
    return-void
.end method

.method public detachCallback()V
    .locals 2

    .prologue
    .line 690
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 691
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callback:Lcom/fsck/k9/ui/crypto/MessageCryptoCallback;

    .line 692
    monitor-exit v1

    .line 693
    return-void

    .line 692
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isConfiguredForOutdatedCryptoProvider()Z
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpProviderPackage:Ljava/lang/String;

    invoke-static {}, Lcom/fsck/k9/K9;->getOpenPgpProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 570
    iget-boolean v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->isCancelled:Z

    if-eqz v0, :cond_0

    .line 583
    :goto_0
    return-void

    .line 574
    :cond_0
    const/16 v0, 0x7c

    if-eq p1, v0, :cond_1

    .line 575
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "got an activity result that wasn\'t meant for us. this is a bug!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 578
    iput-object p3, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->userInteractionResultIntent:Landroid/content/Intent;

    .line 579
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->nextStep()V

    goto :goto_0

    .line 581
    :cond_2
    invoke-direct {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->onCryptoOperationCanceled()V

    goto :goto_0
.end method
