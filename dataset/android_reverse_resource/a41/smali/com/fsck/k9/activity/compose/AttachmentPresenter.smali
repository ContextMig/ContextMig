.class public Lcom/fsck/k9/activity/compose/AttachmentPresenter;
.super Ljava/lang/Object;
.source "AttachmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentsChangedListener;,
        Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;,
        Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;
    }
.end annotation


# static fields
.field private static final LOADER_ARG_ATTACHMENT:Ljava/lang/String; = "attachment"

.field private static final LOADER_ID_MASK:I = 0x40

.field private static final MAX_TOTAL_LOADERS:I = 0x3f

.field private static final REQUEST_CODE_ATTACHMENT_URI:I = 0x1

.field private static final STATE_KEY_ATTACHMENTS:Ljava/lang/String; = "com.fsck.k9.activity.MessageCompose.attachments"

.field private static final STATE_KEY_NEXT_LOADER_ID:Ljava/lang/String; = "nextLoaderId"

.field private static final STATE_KEY_WAITING_FOR_ATTACHMENTS:Ljava/lang/String; = "waitingForAttachments"


# instance fields
.field private actionToPerformAfterWaiting:Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

.field private final attachmentMvpView:Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;

.field private attachments:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/fsck/k9/activity/misc/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final listener:Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentsChangedListener;

.field private final loaderManager:Landroid/app/LoaderManager;

.field private mAttachmentContentLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/fsck/k9/activity/misc/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private mAttachmentInfoLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/fsck/k9/activity/misc/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private nextLoaderId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;Landroid/app/LoaderManager;Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentsChangedListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attachmentMvpView"    # Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;
    .param p3, "loaderManager"    # Landroid/app/LoaderManager;
    .param p4, "listener"    # Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentsChangedListener;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->nextLoaderId:I

    .line 48
    sget-object v0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;->NONE:Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->actionToPerformAfterWaiting:Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    .line 227
    new-instance v0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;-><init>(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->mAttachmentInfoLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 255
    new-instance v0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$2;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$2;-><init>(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->mAttachmentContentLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 53
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->context:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachmentMvpView:Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;

    .line 55
    iput-object p3, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->loaderManager:Landroid/app/LoaderManager;

    .line 56
    iput-object p4, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->listener:Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentsChangedListener;

    .line 58
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachments:Ljava/util/LinkedHashMap;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachments:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)Landroid/app/LoaderManager;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->loaderManager:Landroid/app/LoaderManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachmentMvpView:Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fsck/k9/activity/compose/AttachmentPresenter;Lcom/fsck/k9/activity/misc/Attachment;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/compose/AttachmentPresenter;
    .param p1, "x1"    # Lcom/fsck/k9/activity/misc/Attachment;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->initAttachmentContentLoader(Lcom/fsck/k9/activity/misc/Attachment;)V

    return-void
.end method

.method static synthetic access$500(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->postPerformStalledAction()V

    return-void
.end method

.method static synthetic access$600(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->performStalledAction()V

    return-void
.end method

.method private addAttachment(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->addAttachment(Landroid/net/Uri;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method private addAttachment(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V
    .locals 6
    .param p1, "attachmentViewInfo"    # Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .prologue
    .line 138
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachments:Ljava/util/LinkedHashMap;

    iget-object v3, p1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->internalUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Received the same attachmentViewInfo twice!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->getNextFreeLoaderId()I

    move-result v1

    .line 143
    .local v1, "loaderId":I
    iget-object v2, p1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->internalUri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->mimeType:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/fsck/k9/activity/misc/Attachment;->createAttachment(Landroid/net/Uri;ILjava/lang/String;)Lcom/fsck/k9/activity/misc/Attachment;

    move-result-object v0

    .line 145
    .local v0, "attachment":Lcom/fsck/k9/activity/misc/Attachment;
    iget-object v2, p1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->displayName:Ljava/lang/String;

    iget-wide v4, p1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->size:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/fsck/k9/activity/misc/Attachment;->deriveWithMetadataLoaded(Ljava/lang/String;Ljava/lang/String;J)Lcom/fsck/k9/activity/misc/Attachment;

    move-result-object v0

    .line 148
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->addAttachmentAndStartLoader(Lcom/fsck/k9/activity/misc/Attachment;)V

    .line 149
    return-void
.end method

.method private addAttachmentAndStartLoader(Lcom/fsck/k9/activity/misc/Attachment;)V
    .locals 2
    .param p1, "attachment"    # Lcom/fsck/k9/activity/misc/Attachment;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachments:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->listener:Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentsChangedListener;

    invoke-interface {v0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentsChangedListener;->onAttachmentAdded()V

    .line 189
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachmentMvpView:Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;

    invoke-interface {v0, p1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;->addAttachmentView(Lcom/fsck/k9/activity/misc/Attachment;)V

    .line 191
    iget-object v0, p1, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    sget-object v1, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->URI_ONLY:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    if-ne v0, v1, :cond_0

    .line 192
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->initAttachmentInfoLoader(Lcom/fsck/k9/activity/misc/Attachment;)V

    .line 198
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p1, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    sget-object v1, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->METADATA:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    if-ne v0, v1, :cond_1

    .line 194
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->initAttachmentContentLoader(Lcom/fsck/k9/activity/misc/Attachment;)V

    goto :goto_0

    .line 196
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attachment can only be added in URI_ONLY or METADATA state!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addAttachmentsFromResultIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "data"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 319
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_1

    .line 320
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 321
    .local v0, "clipData":Landroid/content/ClipData;
    if-eqz v0, :cond_1

    .line 322
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    .local v1, "end":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 323
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 324
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 325
    invoke-direct {p0, v3}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->addAttachment(Landroid/net/Uri;)V

    .line 322
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 332
    .end local v0    # "clipData":Landroid/content/ClipData;
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 333
    .restart local v3    # "uri":Landroid/net/Uri;
    if-eqz v3, :cond_2

    .line 334
    invoke-direct {p0, v3}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->addAttachment(Landroid/net/Uri;)V

    .line 336
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    return-void
.end method

.method private getNextFreeLoaderId()I
    .locals 2

    .prologue
    .line 221
    iget v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->nextLoaderId:I

    const/16 v1, 0x3f

    if-lt v0, v1, :cond_0

    .line 222
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "more than 63 attachments? hum."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 224
    :cond_0
    iget v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->nextLoaderId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->nextLoaderId:I

    or-int/lit8 v0, v0, 0x40

    return v0
.end method

.method private hasLoadingAttachments()Z
    .locals 5

    .prologue
    .line 101
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachments:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/misc/Attachment;

    .line 102
    .local v0, "attachment":Lcom/fsck/k9/activity/misc/Attachment;
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->loaderManager:Landroid/app/LoaderManager;

    iget v4, v0, Lcom/fsck/k9/activity/misc/Attachment;->loaderId:I

    invoke-virtual {v3, v4}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v1

    .line 103
    .local v1, "loader":Landroid/content/Loader;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Loader;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    const/4 v2, 0x1

    .line 107
    .end local v0    # "attachment":Lcom/fsck/k9/activity/misc/Attachment;
    .end local v1    # "loader":Landroid/content/Loader;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initAttachmentContentLoader(Lcom/fsck/k9/activity/misc/Attachment;)V
    .locals 4
    .param p1, "attachment"    # Lcom/fsck/k9/activity/misc/Attachment;

    .prologue
    .line 211
    iget-object v1, p1, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    sget-object v2, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->METADATA:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    if-eq v1, v2, :cond_0

    .line 212
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "initAttachmentContentLoader can only be called for METADATA state!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 216
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "attachment"

    iget-object v2, p1, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 217
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->loaderManager:Landroid/app/LoaderManager;

    iget v2, p1, Lcom/fsck/k9/activity/misc/Attachment;->loaderId:I

    iget-object v3, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->mAttachmentContentLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 218
    return-void
.end method

.method private initAttachmentInfoLoader(Lcom/fsck/k9/activity/misc/Attachment;)V
    .locals 4
    .param p1, "attachment"    # Lcom/fsck/k9/activity/misc/Attachment;

    .prologue
    .line 201
    iget-object v1, p1, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    sget-object v2, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->URI_ONLY:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    if-eq v1, v2, :cond_0

    .line 202
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "initAttachmentInfoLoader can only be called for URI_ONLY state!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 206
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "attachment"

    iget-object v2, p1, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 207
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->loaderManager:Landroid/app/LoaderManager;

    iget v2, p1, Lcom/fsck/k9/activity/misc/Attachment;->loaderId:I

    iget-object v3, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->mAttachmentInfoLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 208
    return-void
.end method

.method private performStalledAction()V
    .locals 3

    .prologue
    .line 299
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachmentMvpView:Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;

    invoke-interface {v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;->dismissWaitingForAttachmentDialog()V

    .line 301
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->actionToPerformAfterWaiting:Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    .line 302
    .local v0, "waitingFor":Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;
    sget-object v1, Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;->NONE:Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    iput-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->actionToPerformAfterWaiting:Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    .line 304
    sget-object v1, Lcom/fsck/k9/activity/compose/AttachmentPresenter$4;->$SwitchMap$com$fsck$k9$activity$compose$AttachmentPresenter$WaitingAction:[I

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 314
    :goto_0
    return-void

    .line 306
    :pswitch_0
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachmentMvpView:Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;

    invoke-interface {v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;->performSendAfterChecks()V

    goto :goto_0

    .line 310
    :pswitch_1
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachmentMvpView:Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;

    invoke-interface {v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;->performSaveAfterChecks()V

    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private postPerformStalledAction()V
    .locals 2

    .prologue
    .line 290
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/fsck/k9/activity/compose/AttachmentPresenter$3;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$3;-><init>(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 296
    return-void
.end method


# virtual methods
.method public addAttachment(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachments:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->getNextFreeLoaderId()I

    move-result v1

    .line 157
    .local v1, "loaderId":I
    invoke-static {p1, v1, p2}, Lcom/fsck/k9/activity/misc/Attachment;->createAttachment(Landroid/net/Uri;ILjava/lang/String;)Lcom/fsck/k9/activity/misc/Attachment;

    move-result-object v0

    .line 159
    .local v0, "attachment":Lcom/fsck/k9/activity/misc/Attachment;
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->addAttachmentAndStartLoader(Lcom/fsck/k9/activity/misc/Attachment;)V

    goto :goto_0
.end method

.method public attachmentProgressDialogCancelled()V
    .locals 1

    .prologue
    .line 339
    sget-object v0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;->NONE:Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->actionToPerformAfterWaiting:Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    .line 340
    return-void
.end method

.method public checkOkForSendingOrDraftSaving()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 87
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->actionToPerformAfterWaiting:Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    sget-object v2, Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;->NONE:Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    if-eq v1, v2, :cond_0

    .line 97
    :goto_0
    return v0

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->hasLoadingAttachments()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    sget-object v1, Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;->SEND:Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    iput-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->actionToPerformAfterWaiting:Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    .line 93
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachmentMvpView:Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;

    iget-object v2, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->actionToPerformAfterWaiting:Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    invoke-interface {v1, v2}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;->showWaitingForAttachmentDialog(Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;)V

    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createAttachmentList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fsck/k9/activity/misc/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/activity/misc/Attachment;>;"
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachments:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/misc/Attachment;

    .line 113
    .local v0, "attachment":Lcom/fsck/k9/activity/misc/Attachment;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    .end local v0    # "attachment":Lcom/fsck/k9/activity/misc/Attachment;
    :cond_0
    return-object v1
.end method

.method public loadNonInlineAttachments(Lcom/fsck/k9/mailstore/MessageViewInfo;)Z
    .locals 4
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;

    .prologue
    .line 163
    const/4 v0, 0x1

    .line 165
    .local v0, "allPartsAvailable":Z
    iget-object v2, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->attachments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 166
    .local v1, "attachmentViewInfo":Lcom/fsck/k9/mailstore/AttachmentViewInfo;
    iget-boolean v3, v1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->inlineAttachment:Z

    if-nez v3, :cond_0

    .line 169
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->isContentAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 170
    const/4 v0, 0x0

    .line 171
    goto :goto_0

    .line 173
    :cond_1
    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->addAttachment(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    goto :goto_0

    .line 176
    .end local v1    # "attachmentViewInfo":Lcom/fsck/k9/mailstore/AttachmentViewInfo;
    :cond_2
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "requestCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 353
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "onActivityResult must only be called for our request code"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 356
    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 364
    :cond_1
    :goto_0
    return-void

    .line 360
    :cond_2
    if-eqz p3, :cond_1

    .line 363
    invoke-direct {p0, p3}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->addAttachmentsFromResultIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClickAddAttachment(Lcom/fsck/k9/activity/compose/RecipientPresenter;)V
    .locals 4
    .param p1, "recipientPresenter"    # Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->getCurrentCachedCryptoStatus()Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    move-result-object v0

    .line 120
    .local v0, "currentCachedCryptoStatus":Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;
    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->getAttachErrorStateOrNull()Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

    move-result-object v1

    .line 125
    .local v1, "maybeAttachErrorState":Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;
    if-eqz v1, :cond_1

    .line 126
    invoke-virtual {p1, v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->showPgpAttachError(Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachmentMvpView:Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;->showPickAttachmentDialog(I)V

    goto :goto_0
.end method

.method public onClickRemoveAttachment(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 343
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachments:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/misc/Attachment;

    .line 345
    .local v0, "attachment":Lcom/fsck/k9/activity/misc/Attachment;
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->loaderManager:Landroid/app/LoaderManager;

    iget v2, v0, Lcom/fsck/k9/activity/misc/Attachment;->loaderId:I

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 347
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachmentMvpView:Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;

    invoke-interface {v1, v0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;->removeAttachmentView(Lcom/fsck/k9/activity/misc/Attachment;)V

    .line 348
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachments:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->listener:Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentsChangedListener;

    invoke-interface {v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentsChangedListener;->onAttachmentRemoved()V

    .line 350
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    const-string v2, "waitingForAttachments"

    .line 69
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v2}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->actionToPerformAfterWaiting:Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    .line 70
    const-string v2, "nextLoaderId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->nextLoaderId:I

    .line 72
    const-string v2, "com.fsck.k9.activity.MessageCompose.attachments"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 74
    .local v1, "attachmentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/activity/misc/Attachment;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/misc/Attachment;

    .line 75
    .local v0, "attachment":Lcom/fsck/k9/activity/misc/Attachment;
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachments:Ljava/util/LinkedHashMap;

    iget-object v4, v0, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachmentMvpView:Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;

    invoke-interface {v3, v0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;->addAttachmentView(Lcom/fsck/k9/activity/misc/Attachment;)V

    .line 78
    iget-object v3, v0, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    sget-object v4, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->URI_ONLY:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    if-ne v3, v4, :cond_1

    .line 79
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->initAttachmentInfoLoader(Lcom/fsck/k9/activity/misc/Attachment;)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v3, v0, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    sget-object v4, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->METADATA:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    if-ne v3, v4, :cond_0

    .line 81
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->initAttachmentContentLoader(Lcom/fsck/k9/activity/misc/Attachment;)V

    goto :goto_0

    .line 84
    .end local v0    # "attachment":Lcom/fsck/k9/activity/misc/Attachment;
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    const-string v0, "waitingForAttachments"

    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->actionToPerformAfterWaiting:Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "com.fsck.k9.activity.MessageCompose.attachments"

    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->createAttachmentList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 64
    const-string v0, "nextLoaderId"

    iget v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->nextLoaderId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    return-void
.end method

.method public processMessageToForward(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 2
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->loadNonInlineAttachments(Lcom/fsck/k9/mailstore/MessageViewInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 181
    .local v0, "isMissingParts":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 182
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachmentMvpView:Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;

    invoke-interface {v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;->showMissingAttachmentsPartialMessageWarning()V

    .line 184
    :cond_0
    return-void

    .line 180
    .end local v0    # "isMissingParts":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
