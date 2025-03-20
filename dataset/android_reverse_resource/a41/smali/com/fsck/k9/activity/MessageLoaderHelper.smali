.class public Lcom/fsck/k9/activity/MessageLoaderHelper;
.super Ljava/lang/Object;
.source "MessageLoaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;
    }
.end annotation


# static fields
.field private static final DECODE_MESSAGE_LOADER_ID:I = 0x2

.field private static final LOCAL_MESSAGE_LOADER_ID:I = 0x1


# instance fields
.field private account:Lcom/fsck/k9/Account;

.field private cachedDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

.field private callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private decodeMessageLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/fsck/k9/mailstore/MessageViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field downloadMessageListener:Lcom/fsck/k9/controller/MessagingListener;

.field private fragmentManager:Landroid/app/FragmentManager;

.field private loaderManager:Landroid/app/LoaderManager;

.field private localMessage:Lcom/fsck/k9/mailstore/LocalMessage;

.field private localMessageLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/fsck/k9/mailstore/LocalMessage;",
            ">;"
        }
    .end annotation
.end field

.field private messageCryptoAnnotations:Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

.field private messageCryptoCallback:Lcom/fsck/k9/ui/crypto/MessageCryptoCallback;

.field private messageCryptoHelper:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

.field private messageReference:Lcom/fsck/k9/activity/MessageReference;

.field private final processSignedOnly:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/LoaderManager;Landroid/app/FragmentManager;Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loaderManager"    # Landroid/app/LoaderManager;
    .param p3, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p4, "callback"    # Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance v0, Lcom/fsck/k9/activity/MessageLoaderHelper$1;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/MessageLoaderHelper$1;-><init>(Lcom/fsck/k9/activity/MessageLoaderHelper;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->localMessageLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 305
    new-instance v0, Lcom/fsck/k9/activity/MessageLoaderHelper$2;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/MessageLoaderHelper$2;-><init>(Lcom/fsck/k9/activity/MessageLoaderHelper;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoCallback:Lcom/fsck/k9/ui/crypto/MessageCryptoCallback;

    .line 378
    new-instance v0, Lcom/fsck/k9/activity/MessageLoaderHelper$3;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/MessageLoaderHelper$3;-><init>(Lcom/fsck/k9/activity/MessageLoaderHelper;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->decodeMessageLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 441
    new-instance v0, Lcom/fsck/k9/activity/MessageLoaderHelper$4;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/MessageLoaderHelper$4;-><init>(Lcom/fsck/k9/activity/MessageLoaderHelper;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->downloadMessageListener:Lcom/fsck/k9/controller/MessagingListener;

    .line 100
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->context:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->loaderManager:Landroid/app/LoaderManager;

    .line 102
    iput-object p3, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->fragmentManager:Landroid/app/FragmentManager;

    .line 103
    iput-object p4, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    .line 105
    invoke-static {}, Lcom/fsck/k9/K9;->getOpenPgpSupportSignOnly()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->processSignedOnly:Z

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/MessageLoaderHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageLoaderHelper;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/activity/MessageLoaderHelper;)Lcom/fsck/k9/Account;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageLoaderHelper;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->account:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fsck/k9/activity/MessageLoaderHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageLoaderHelper;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->onMessageDownloadFinished()V

    return-void
.end method

.method static synthetic access$1100(Lcom/fsck/k9/activity/MessageLoaderHelper;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageLoaderHelper;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/MessageLoaderHelper;->onDownloadMessageFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/fsck/k9/activity/MessageLoaderHelper;)Lcom/fsck/k9/activity/MessageReference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageLoaderHelper;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/activity/MessageLoaderHelper;)Lcom/fsck/k9/mailstore/LocalMessage;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageLoaderHelper;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->localMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    return-object v0
.end method

.method static synthetic access$302(Lcom/fsck/k9/activity/MessageLoaderHelper;Lcom/fsck/k9/mailstore/LocalMessage;)Lcom/fsck/k9/mailstore/LocalMessage;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageLoaderHelper;
    .param p1, "x1"    # Lcom/fsck/k9/mailstore/LocalMessage;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->localMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    return-object p1
.end method

.method static synthetic access$400(Lcom/fsck/k9/activity/MessageLoaderHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageLoaderHelper;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->onLoadMessageFromDatabaseFailed()V

    return-void
.end method

.method static synthetic access$500(Lcom/fsck/k9/activity/MessageLoaderHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageLoaderHelper;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->onLoadMessageFromDatabaseFinished()V

    return-void
.end method

.method static synthetic access$600(Lcom/fsck/k9/activity/MessageLoaderHelper;)Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageLoaderHelper;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fsck/k9/activity/MessageLoaderHelper;)Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageLoaderHelper;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoAnnotations:Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    return-object v0
.end method

.method static synthetic access$702(Lcom/fsck/k9/activity/MessageLoaderHelper;Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;)Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageLoaderHelper;
    .param p1, "x1"    # Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoAnnotations:Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    return-object p1
.end method

.method static synthetic access$800(Lcom/fsck/k9/activity/MessageLoaderHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageLoaderHelper;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->startOrResumeDecodeMessage()V

    return-void
.end method

.method static synthetic access$900(Lcom/fsck/k9/activity/MessageLoaderHelper;Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageLoaderHelper;
    .param p1, "x1"    # Lcom/fsck/k9/mailstore/MessageViewInfo;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/MessageLoaderHelper;->onDecodeMessageFinished(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    return-void
.end method

.method private cancelAndClearCryptoOperation()V
    .locals 2

    .prologue
    .line 286
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/MessageLoaderHelper;->getMessageCryptoHelperRetainFragment(Z)Lcom/fsck/k9/helper/RetainFragment;

    move-result-object v0

    .line 287
    .local v0, "retainCryptoHelperFragment":Lcom/fsck/k9/helper/RetainFragment;, "Lcom/fsck/k9/helper/RetainFragment<Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;>;"
    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {v0}, Lcom/fsck/k9/helper/RetainFragment;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {v0}, Lcom/fsck/k9/helper/RetainFragment;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoHelper:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 290
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoHelper:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    invoke-virtual {v1}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->cancelIfRunning()V

    .line 291
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoHelper:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->fragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/helper/RetainFragment;->clearAndRemove(Landroid/app/FragmentManager;)V

    .line 295
    :cond_1
    return-void
.end method

.method private cancelAndClearDecodeLoader()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->loaderManager:Landroid/app/LoaderManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 376
    return-void
.end method

.method private cancelAndClearLocalMessageLoader()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->loaderManager:Landroid/app/LoaderManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 233
    return-void
.end method

.method private createErrorStateMessageViewInfo()Lcom/fsck/k9/mailstore/MessageViewInfo;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 370
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->localMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    sget-object v2, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 371
    .local v0, "isMessageIncomplete":Z
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->localMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-static {v1, v0}, Lcom/fsck/k9/mailstore/MessageViewInfo;->createWithErrorState(Lcom/fsck/k9/mail/Message;Z)Lcom/fsck/k9/mailstore/MessageViewInfo;

    move-result-object v1

    return-object v1

    .line 370
    .end local v0    # "isMessageIncomplete":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMessageCryptoHelperRetainFragment(Z)Lcom/fsck/k9/helper/RetainFragment;
    .locals 3
    .param p1, "createIfNotExists"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/fsck/k9/helper/RetainFragment",
            "<",
            "Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    if-eqz p1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->fragmentManager:Landroid/app/FragmentManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crypto_helper_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/MessageReference;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fsck/k9/helper/RetainFragment;->findOrCreate(Landroid/app/FragmentManager;Ljava/lang/String;)Lcom/fsck/k9/helper/RetainFragment;

    move-result-object v0

    .line 301
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->fragmentManager:Landroid/app/FragmentManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crypto_helper_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/MessageReference;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fsck/k9/helper/RetainFragment;->findOrNull(Landroid/app/FragmentManager;Ljava/lang/String;)Lcom/fsck/k9/helper/RetainFragment;

    move-result-object v0

    goto :goto_0
.end method

.method private onDecodeMessageFinished(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 2
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected call when callback is already detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    if-nez p1, :cond_1

    .line 360
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->createErrorStateMessageViewInfo()Lcom/fsck/k9/mailstore/MessageViewInfo;

    move-result-object p1

    .line 361
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    invoke-interface {v0, p1}, Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;->onMessageViewInfoLoadFailed(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 366
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    invoke-interface {v0, p1}, Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;->onMessageViewInfoLoadFinished(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    goto :goto_0
.end method

.method private onDownloadMessageFailed(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    if-nez v0, :cond_0

    .line 439
    :goto_0
    return-void

    .line 434
    :cond_0
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    invoke-interface {v0}, Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;->onDownloadErrorMessageNotFound()V

    goto :goto_0

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    invoke-interface {v0}, Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;->onDownloadErrorNetworkError()V

    goto :goto_0
.end method

.method private onLoadMessageFromDatabaseFailed()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected call when callback is already detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    invoke-interface {v0}, Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;->onMessageDataLoadFailed()V

    .line 229
    return-void
.end method

.method private onLoadMessageFromDatabaseFinished()V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 203
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    if-nez v2, :cond_0

    .line 204
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unexpected call when callback is already detached"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->localMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-interface {v2, v3}, Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;->onMessageDataLoadFinished(Lcom/fsck/k9/mailstore/LocalMessage;)V

    .line 209
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->localMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    sget-object v3, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    .line 210
    invoke-virtual {v2, v3}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->localMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    sget-object v3, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 211
    .local v0, "messageIncomplete":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 212
    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/MessageLoaderHelper;->startDownloadingMessageBody(Z)V

    .line 222
    :goto_1
    return-void

    .end local v0    # "messageIncomplete":Z
    :cond_1
    move v0, v1

    .line 210
    goto :goto_0

    .line 216
    .restart local v0    # "messageIncomplete":Z
    :cond_2
    invoke-static {}, Lcom/fsck/k9/K9;->isOpenPgpProviderConfigured()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 217
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->startOrResumeCryptoOperation()V

    goto :goto_1

    .line 221
    :cond_3
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->startOrResumeDecodeMessage()V

    goto :goto_1
.end method

.method private onMessageDownloadFinished()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    if-nez v0, :cond_0

    .line 427
    :goto_0
    return-void

    .line 422
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->cancelAndClearLocalMessageLoader()V

    .line 423
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->cancelAndClearDecodeLoader()V

    .line 424
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->cancelAndClearCryptoOperation()V

    .line 426
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->startOrResumeLocalMessageLoader()V

    goto :goto_0
.end method

.method private startDownloadingMessageBody(Z)V
    .locals 5
    .param p1, "downloadComplete"    # Z

    .prologue
    .line 408
    if-eqz p1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->account:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 410
    invoke-virtual {v2}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v3}, Lcom/fsck/k9/activity/MessageReference;->getUid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->downloadMessageListener:Lcom/fsck/k9/controller/MessagingListener;

    .line 409
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fsck/k9/controller/MessagingController;->loadMessageRemote(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 415
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->account:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 413
    invoke-virtual {v2}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v3}, Lcom/fsck/k9/activity/MessageReference;->getUid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->downloadMessageListener:Lcom/fsck/k9/controller/MessagingListener;

    .line 412
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fsck/k9/controller/MessagingController;->loadMessageRemotePartial(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;)V

    goto :goto_0
.end method

.method private startOrResumeCryptoOperation()V
    .locals 6

    .prologue
    .line 272
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/MessageLoaderHelper;->getMessageCryptoHelperRetainFragment(Z)Lcom/fsck/k9/helper/RetainFragment;

    move-result-object v0

    .line 273
    .local v0, "retainCryptoHelperFragment":Lcom/fsck/k9/helper/RetainFragment;, "Lcom/fsck/k9/helper/RetainFragment<Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;>;"
    invoke-virtual {v0}, Lcom/fsck/k9/helper/RetainFragment;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {v0}, Lcom/fsck/k9/helper/RetainFragment;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoHelper:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoHelper:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoHelper:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    invoke-virtual {v1}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->isConfiguredForOutdatedCryptoProvider()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 277
    :cond_1
    new-instance v1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->context:Landroid/content/Context;

    new-instance v3, Lcom/fsck/k9/ui/crypto/OpenPgpApiFactory;

    invoke-direct {v3}, Lcom/fsck/k9/ui/crypto/OpenPgpApiFactory;-><init>()V

    .line 278
    invoke-static {}, Lcom/fsck/k9/autocrypt/AutocryptOperations;->getInstance()Lcom/fsck/k9/autocrypt/AutocryptOperations;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;-><init>(Landroid/content/Context;Lcom/fsck/k9/ui/crypto/OpenPgpApiFactory;Lcom/fsck/k9/autocrypt/AutocryptOperations;)V

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoHelper:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 279
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoHelper:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/helper/RetainFragment;->setData(Ljava/lang/Object;)V

    .line 281
    :cond_2
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoHelper:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->localMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoCallback:Lcom/fsck/k9/ui/crypto/MessageCryptoCallback;

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->cachedDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    iget-boolean v5, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->processSignedOnly:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->asyncStartOrResumeProcessingMessage(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/ui/crypto/MessageCryptoCallback;Lorg/openintents/openpgp/OpenPgpDecryptionResult;Z)V

    .line 283
    return-void
.end method

.method private startOrResumeDecodeMessage()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 341
    iget-object v3, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->loaderManager:Landroid/app/LoaderManager;

    .line 342
    invoke-virtual {v3, v5}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;

    .line 343
    .local v1, "loader":Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->localMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoAnnotations:Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    invoke-virtual {v1, v3, v4}, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->isCreatedFor(Lcom/fsck/k9/mailstore/LocalMessage;Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 345
    .local v0, "isLoaderStale":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 346
    const-string v3, "Creating new decode message loader"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->loaderManager:Landroid/app/LoaderManager;

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->decodeMessageLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v2, v5, v6, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 352
    :goto_1
    return-void

    .end local v0    # "isLoaderStale":Z
    :cond_1
    move v0, v2

    .line 343
    goto :goto_0

    .line 349
    .restart local v0    # "isLoaderStale":Z
    :cond_2
    const-string v3, "Reusing decode message loader"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->loaderManager:Landroid/app/LoaderManager;

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->decodeMessageLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v2, v5, v6, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_1
.end method

.method private startOrResumeLocalMessageLoader()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 186
    iget-object v4, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->loaderManager:Landroid/app/LoaderManager;

    .line 187
    invoke-virtual {v4, v3}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/ui/message/LocalMessageLoader;

    .line 188
    .local v1, "loader":Lcom/fsck/k9/ui/message/LocalMessageLoader;
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v1, v4}, Lcom/fsck/k9/ui/message/LocalMessageLoader;->isCreatedFor(Lcom/fsck/k9/activity/MessageReference;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v0, v3

    .line 190
    .local v0, "isLoaderStale":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 191
    const-string v4, "Creating new local message loader"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->cancelAndClearCryptoOperation()V

    .line 193
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->cancelAndClearDecodeLoader()V

    .line 194
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->loaderManager:Landroid/app/LoaderManager;

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->localMessageLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v2, v3, v5, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 199
    :goto_1
    return-void

    .end local v0    # "isLoaderStale":Z
    :cond_1
    move v0, v2

    .line 188
    goto :goto_0

    .line 196
    .restart local v0    # "isLoaderStale":Z
    :cond_2
    const-string v4, "Reusing local message loader"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->loaderManager:Landroid/app/LoaderManager;

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->localMessageLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v2, v3, v5, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_1
.end method


# virtual methods
.method public asyncReloadMessage()V
    .locals 0
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->startOrResumeLocalMessageLoader()V

    .line 130
    return-void
.end method

.method public asyncRestartMessageCryptoProcessing()V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->cancelAndClearCryptoOperation()V

    .line 135
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->cancelAndClearDecodeLoader()V

    .line 136
    invoke-static {}, Lcom/fsck/k9/K9;->isOpenPgpProviderConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->startOrResumeCryptoOperation()V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->startOrResumeDecodeMessage()V

    goto :goto_0
.end method

.method public asyncStartOrResumeLoadingMessage(Lcom/fsck/k9/activity/MessageReference;Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;
    .param p2, "cachedDecryptionResult"    # Landroid/os/Parcelable;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 113
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 114
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fsck/k9/activity/MessageReference;->getAccountUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->account:Lcom/fsck/k9/Account;

    .line 116
    if-eqz p2, :cond_0

    .line 117
    instance-of v0, p2, Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    if-eqz v0, :cond_1

    .line 118
    check-cast p2, Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .end local p2    # "cachedDecryptionResult":Landroid/os/Parcelable;
    iput-object p2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->cachedDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 124
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->startOrResumeLocalMessageLoader()V

    .line 125
    return-void

    .line 120
    .restart local p2    # "cachedDecryptionResult":Landroid/os/Parcelable;
    :cond_1
    const-string v0, "Got decryption result of unknown type - ignoring"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public downloadCompleteMessage()V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->startDownloadingMessageBody(Z)V

    .line 175
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoHelper:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 180
    return-void
.end method

.method public onDestroy()V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoHelper:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoHelper:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    invoke-virtual {v0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->cancelIfRunning()V

    .line 150
    :cond_0
    iput-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    .line 151
    iput-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->context:Landroid/content/Context;

    .line 152
    iput-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->fragmentManager:Landroid/app/FragmentManager;

    .line 153
    iput-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->loaderManager:Landroid/app/LoaderManager;

    .line 154
    return-void
.end method

.method public onDestroyChangingConfigurations()V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->cancelAndClearDecodeLoader()V

    .line 162
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoHelper:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoHelper:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    invoke-virtual {v0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->detachCallback()V

    .line 166
    :cond_0
    iput-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    .line 167
    iput-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->context:Landroid/content/Context;

    .line 168
    iput-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->fragmentManager:Landroid/app/FragmentManager;

    .line 169
    iput-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->loaderManager:Landroid/app/LoaderManager;

    .line 170
    return-void
.end method
