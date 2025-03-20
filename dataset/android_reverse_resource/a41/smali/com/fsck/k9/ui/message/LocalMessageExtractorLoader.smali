.class public Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;
.super Landroid/content/AsyncTaskLoader;
.source "LocalMessageExtractorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/fsck/k9/mailstore/MessageViewInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final messageViewInfoExtractor:Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;


# instance fields
.field private annotations:Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final message:Lcom/fsck/k9/mail/Message;

.field private messageViewInfo:Lcom/fsck/k9/mailstore/MessageViewInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->getInstance()Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->messageViewInfoExtractor:Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/fsck/k9/mail/Message;
    .param p3, "annotations"    # Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p2, p0, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->message:Lcom/fsck/k9/mail/Message;

    .line 30
    iput-object p3, p0, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->annotations:Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    .line 31
    return-void
.end method


# virtual methods
.method public deliverResult(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 0
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->messageViewInfo:Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 47
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcom/fsck/k9/mailstore/MessageViewInfo;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->deliverResult(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    return-void
.end method

.method public isCreatedFor(Lcom/fsck/k9/mailstore/LocalMessage;Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;)Z
    .locals 1
    .param p1, "localMessage"    # Lcom/fsck/k9/mailstore/LocalMessage;
    .param p2, "messageCryptoAnnotations"    # Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->annotations:Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->message:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/Message;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadInBackground()Lcom/fsck/k9/mailstore/MessageViewInfo;
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 54
    :try_start_0
    sget-object v1, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->messageViewInfoExtractor:Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;

    iget-object v2, p0, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->message:Lcom/fsck/k9/mail/Message;

    iget-object v3, p0, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->annotations:Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->extractMessageForView(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;)Lcom/fsck/k9/mailstore/MessageViewInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 57
    :goto_0
    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error while decoding message"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->loadInBackground()Lcom/fsck/k9/mailstore/MessageViewInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->messageViewInfo:Lcom/fsck/k9/mailstore/MessageViewInfo;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->messageViewInfo:Lcom/fsck/k9/mailstore/MessageViewInfo;

    invoke-super {p0, v0}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->messageViewInfo:Lcom/fsck/k9/mailstore/MessageViewInfo;

    if-nez v0, :cond_2

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->forceLoad()V

    .line 42
    :cond_2
    return-void
.end method
