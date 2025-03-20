.class public Lcom/fsck/k9/ui/messageview/MessageTopView;
.super Landroid/widget/LinearLayout;
.source "MessageTopView.java"


# static fields
.field public static final PROGRESS_MAX:I = 0x3e8

.field public static final PROGRESS_MAX_WITH_MARGIN:I = 0x3b6

.field public static final PROGRESS_STEP_DURATION:I = 0xb4


# instance fields
.field private attachmentCallback:Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

.field private containerView:Landroid/view/ViewGroup;

.field private isShowingProgress:Z

.field private mDownloadRemainder:Landroid/widget/Button;

.field private mHeaderContainer:Lcom/fsck/k9/view/MessageHeader;

.field private mInflater:Landroid/view/LayoutInflater;

.field private messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

.field private progressBar:Landroid/widget/ProgressBar;

.field private progressText:Landroid/widget/TextView;

.field private showPicturesButton:Landroid/widget/Button;

.field private viewAnimator:Lcom/fsck/k9/view/ToolableViewAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/ui/messageview/MessageTopView;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/MessageTopView;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->showPicturesInAllContainerViews()V

    return-void
.end method

.method static synthetic access$100(Lcom/fsck/k9/ui/messageview/MessageTopView;)Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/MessageTopView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/ui/messageview/MessageTopView;)Lcom/fsck/k9/view/ToolableViewAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/MessageTopView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->viewAnimator:Lcom/fsck/k9/view/ToolableViewAnimator;

    return-object v0
.end method

.method private getSenderEmailAddress(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .locals 2
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 317
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    .line 318
    .local v0, "from":[Lcom/fsck/k9/mail/Address;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 319
    :cond_0
    const/4 v1, 0x0

    .line 322
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private hideHeaderView()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->mHeaderContainer:Lcom/fsck/k9/view/MessageHeader;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/MessageHeader;->setVisibility(I)V

    .line 258
    return-void
.end method

.method private hideShowPicturesButton()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->showPicturesButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 296
    return-void
.end method

.method private resetAndPrepareMessageView(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 2
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->mDownloadRemainder:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 104
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setShowDownloadButton(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 105
    return-void
.end method

.method private setCryptoProviderIcon(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 3
    .param p1, "openPgpApiProviderIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 221
    const v1, 0x7f0c00a6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 222
    .local v0, "cryptoProviderIcon":Landroid/widget/ImageView;
    if-eqz p1, :cond_0

    .line 223
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    :goto_0
    return-void

    .line 225
    :cond_0
    const v1, 0x7f020094

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 226
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f01003f

    invoke-static {v1, v2}, Lcom/fsck/k9/view/ThemeUtils;->getStyledColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0
.end method

.method private setShowDownloadButton(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 2
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;

    .prologue
    .line 282
    iget-boolean v0, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->isMessageIncomplete:Z

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->mDownloadRemainder:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 284
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->mDownloadRemainder:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->mDownloadRemainder:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private setShowPicturesButtonListener()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->showPicturesButton:Landroid/widget/Button;

    new-instance v1, Lcom/fsck/k9/ui/messageview/MessageTopView$1;

    invoke-direct {v1, p0}, Lcom/fsck/k9/ui/messageview/MessageTopView$1;-><init>(Lcom/fsck/k9/ui/messageview/MessageTopView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method private shouldAutomaticallyLoadPictures(Lcom/fsck/k9/Account$ShowPictures;Lcom/fsck/k9/mail/Message;)Z
    .locals 1
    .param p1, "showPicturesSetting"    # Lcom/fsck/k9/Account$ShowPictures;
    .param p2, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 299
    sget-object v0, Lcom/fsck/k9/Account$ShowPictures;->ALWAYS:Lcom/fsck/k9/Account$ShowPictures;

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/ui/messageview/MessageTopView;->shouldShowPicturesFromSender(Lcom/fsck/k9/Account$ShowPictures;Lcom/fsck/k9/mail/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowPicturesFromSender(Lcom/fsck/k9/Account$ShowPictures;Lcom/fsck/k9/mail/Message;)Z
    .locals 4
    .param p1, "showPicturesSetting"    # Lcom/fsck/k9/Account$ShowPictures;
    .param p2, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    const/4 v2, 0x0

    .line 303
    sget-object v3, Lcom/fsck/k9/Account$ShowPictures;->ONLY_FROM_CONTACTS:Lcom/fsck/k9/Account$ShowPictures;

    if-eq p1, v3, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v2

    .line 307
    :cond_1
    invoke-direct {p0, p2}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getSenderEmailAddress(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "senderEmailAddress":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/helper/Contacts;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/helper/Contacts;

    move-result-object v0

    .line 313
    .local v0, "contacts":Lcom/fsck/k9/helper/Contacts;
    invoke-virtual {v0, v1}, Lcom/fsck/k9/helper/Contacts;->isInContacts(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method private showPicturesInAllContainerViews()V
    .locals 3

    .prologue
    .line 94
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "messageContainerViewCandidate":Landroid/view/View;
    instance-of v1, v0, Lcom/fsck/k9/ui/messageview/MessageContainerView;

    if-eqz v1, :cond_0

    .line 96
    check-cast v0, Lcom/fsck/k9/ui/messageview/MessageContainerView;

    .end local v0    # "messageContainerViewCandidate":Landroid/view/View;
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->showPictures()V

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->hideShowPicturesButton()V

    .line 99
    return-void
.end method

.method private showShowPicturesButton()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->showPicturesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 292
    return-void
.end method


# virtual methods
.method public additionalHeadersVisible()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->mHeaderContainer:Lcom/fsck/k9/view/MessageHeader;

    invoke-virtual {v0}, Lcom/fsck/k9/view/MessageHeader;->additionalHeadersVisible()Z

    move-result v0

    return v0
.end method

.method public disableDownloadButton()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->mDownloadRemainder:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 279
    return-void
.end method

.method public displayViewOnLoadFinished(Z)V
    .locals 6
    .param p1, "finishProgressBar"    # Z

    .prologue
    const/4 v3, 0x2

    .line 326
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->isShowingProgress:Z

    if-nez v1, :cond_1

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->viewAnimator:Lcom/fsck/k9/view/ToolableViewAnimator;

    invoke-virtual {v1, v3}, Lcom/fsck/k9/view/ToolableViewAnimator;->setDisplayedChild(I)V

    .line 341
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->progressBar:Landroid/widget/ProgressBar;

    const-string v2, "progress"

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->progressBar:Landroid/widget/ProgressBar;

    .line 332
    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x3e8

    aput v5, v3, v4

    .line 331
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 333
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    new-instance v1, Lcom/fsck/k9/ui/messageview/MessageTopView$7;

    invoke-direct {v1, p0}, Lcom/fsck/k9/ui/messageview/MessageTopView$7;-><init>(Lcom/fsck/k9/ui/messageview/MessageTopView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 339
    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 340
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public enableDownloadButton()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->mDownloadRemainder:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 275
    return-void
.end method

.method public getMessageHeaderView()Lcom/fsck/k9/view/MessageHeader;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->mHeaderContainer:Lcom/fsck/k9/view/MessageHeader;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 65
    const v0, 0x7f0c00e1

    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/view/MessageHeader;

    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->mHeaderContainer:Lcom/fsck/k9/view/MessageHeader;

    .line 67
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->mInflater:Landroid/view/LayoutInflater;

    .line 69
    const v0, 0x7f0c0075

    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/view/ToolableViewAnimator;

    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->viewAnimator:Lcom/fsck/k9/view/ToolableViewAnimator;

    .line 70
    const v0, 0x7f0c0076

    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->progressBar:Landroid/widget/ProgressBar;

    .line 71
    const v0, 0x7f0c0077

    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->progressText:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0c0079

    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->mDownloadRemainder:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->mDownloadRemainder:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 76
    const v0, 0x7f0c0074

    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->showPicturesButton:Landroid/widget/Button;

    .line 77
    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setShowPicturesButtonListener()V

    .line 79
    const v0, 0x7f0c0078

    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    .line 81
    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->hideHeaderView()V

    .line 82
    return-void
.end method

.method public setAttachmentCallback(Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->attachmentCallback:Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

    .line 266
    return-void
.end method

.method public setHeaders(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .param p2, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->mHeaderContainer:Lcom/fsck/k9/view/MessageHeader;

    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/view/MessageHeader;->populate(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/Account;)V

    .line 241
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->mHeaderContainer:Lcom/fsck/k9/view/MessageHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/MessageHeader;->setVisibility(I)V

    .line 242
    return-void
.end method

.method public setLoadingProgress(II)V
    .locals 7
    .param p1, "progress"    # I
    .param p2, "max"    # I

    .prologue
    const/4 v6, 0x1

    .line 350
    iget-boolean v2, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->isShowingProgress:Z

    if-nez v2, :cond_0

    .line 351
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->viewAnimator:Lcom/fsck/k9/view/ToolableViewAnimator;

    invoke-virtual {v2, v6}, Lcom/fsck/k9/view/ToolableViewAnimator;->setDisplayedChild(I)V

    .line 352
    iput-boolean v6, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->isShowingProgress:Z

    .line 364
    :goto_0
    return-void

    .line 356
    :cond_0
    int-to-float v2, p1

    int-to-float v3, p2

    div-float/2addr v2, v3

    const v3, 0x446d8000    # 950.0f

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 357
    .local v1, "newPosition":I
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 358
    .local v0, "currentPosition":I
    if-le v1, v0, :cond_1

    .line 359
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->progressBar:Landroid/widget/ProgressBar;

    const-string v3, "progress"

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    aput v1, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0xb4

    .line 360
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 362
    :cond_1
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public setMessageCryptoPresenter(Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;)V
    .locals 1
    .param p1, "messageCryptoPresenter"    # Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    .line 270
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->mHeaderContainer:Lcom/fsck/k9/view/MessageHeader;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/view/MessageHeader;->setOnCryptoClickListener(Lcom/fsck/k9/ui/messageview/OnCryptoClickListener;)V

    .line 271
    return-void
.end method

.method public setOnDownloadButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->mDownloadRemainder:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    return-void
.end method

.method public setOnToggleFlagClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->mHeaderContainer:Lcom/fsck/k9/view/MessageHeader;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/view/MessageHeader;->setOnFlagListener(Landroid/view/View$OnClickListener;)V

    .line 246
    return-void
.end method

.method public setToLoadingState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 344
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->viewAnimator:Lcom/fsck/k9/view/ToolableViewAnimator;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/ToolableViewAnimator;->setDisplayedChild(I)V

    .line 345
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 346
    iput-boolean v1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->isShowingProgress:Z

    .line 347
    return-void
.end method

.method public showAllHeaders()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->mHeaderContainer:Lcom/fsck/k9/view/MessageHeader;

    invoke-virtual {v0}, Lcom/fsck/k9/view/MessageHeader;->onShowAdditionalHeaders()V

    .line 250
    return-void
.end method

.method public showCryptoProviderNotConfigured(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 5
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;

    .prologue
    const/4 v4, 0x0

    .line 206
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->resetAndPrepareMessageView(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 207
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030026

    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 209
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0c00aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/fsck/k9/ui/messageview/MessageTopView$6;

    invoke-direct {v2, p0}, Lcom/fsck/k9/ui/messageview/MessageTopView$6;-><init>(Lcom/fsck/k9/ui/messageview/MessageTopView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 217
    invoke-virtual {p0, v4}, Lcom/fsck/k9/ui/messageview/MessageTopView;->displayViewOnLoadFinished(Z)V

    .line 218
    return-void
.end method

.method public showMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 7
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;

    .prologue
    const/4 v4, 0x0

    .line 108
    invoke-direct {p0, p2}, Lcom/fsck/k9/ui/messageview/MessageTopView;->resetAndPrepareMessageView(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 110
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getShowPictures()Lcom/fsck/k9/Account$ShowPictures;

    move-result-object v6

    .line 111
    .local v6, "showPicturesSetting":Lcom/fsck/k9/Account$ShowPictures;
    iget-object v1, p2, Lcom/fsck/k9/mailstore/MessageViewInfo;->message:Lcom/fsck/k9/mail/Message;

    .line 112
    invoke-direct {p0, v6, v1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->shouldAutomaticallyLoadPictures(Lcom/fsck/k9/Account$ShowPictures;Lcom/fsck/k9/mail/Message;)Z

    move-result v3

    .line 114
    .local v3, "automaticallyLoadPictures":Z
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030022

    iget-object v5, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/ui/messageview/MessageContainerView;

    .line 116
    .local v0, "view":Lcom/fsck/k9/ui/messageview/MessageContainerView;
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    invoke-static {}, Lcom/fsck/k9/K9;->getOpenPgpSupportSignOnly()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v4, 0x1

    .line 119
    .local v4, "hideUnsignedTextDivider":Z
    :cond_0
    new-instance v2, Lcom/fsck/k9/ui/messageview/MessageTopView$2;

    invoke-direct {v2, p0}, Lcom/fsck/k9/ui/messageview/MessageTopView$2;-><init>(Lcom/fsck/k9/ui/messageview/MessageTopView;)V

    iget-object v5, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->attachmentCallback:Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->displayMessageViewContainer(Lcom/fsck/k9/mailstore/MessageViewInfo;Lcom/fsck/k9/ui/messageview/MessageContainerView$OnRenderingFinishedListener;ZZLcom/fsck/k9/ui/messageview/AttachmentViewCallback;)V

    .line 126
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->hasHiddenExternalImages()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->showShowPicturesButton()V

    .line 129
    :cond_1
    return-void
.end method

.method public showMessageCryptoCancelledView(Lcom/fsck/k9/mailstore/MessageViewInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;
    .param p2, "providerIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    .line 190
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->resetAndPrepareMessageView(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 191
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030023

    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 192
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, p2, v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setCryptoProviderIcon(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 194
    const v1, 0x7f0c00a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/fsck/k9/ui/messageview/MessageTopView$5;

    invoke-direct {v2, p0}, Lcom/fsck/k9/ui/messageview/MessageTopView$5;-><init>(Lcom/fsck/k9/ui/messageview/MessageTopView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 202
    invoke-virtual {p0, v4}, Lcom/fsck/k9/ui/messageview/MessageTopView;->displayViewOnLoadFinished(Z)V

    .line 203
    return-void
.end method

.method public showMessageCryptoErrorView(Lcom/fsck/k9/mailstore/MessageViewInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;
    .param p2, "providerIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .line 174
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->resetAndPrepareMessageView(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 175
    iget-object v4, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030024

    iget-object v6, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 176
    .local v3, "view":Landroid/view/View;
    invoke-direct {p0, p2, v3}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setCryptoProviderIcon(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 178
    const v4, 0x7f0c00a9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 179
    .local v0, "cryptoErrorText":Landroid/widget/TextView;
    iget-object v4, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    invoke-virtual {v4}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->getOpenPgpError()Lorg/openintents/openpgp/OpenPgpError;

    move-result-object v2

    .line 180
    .local v2, "openPgpError":Lorg/openintents/openpgp/OpenPgpError;
    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {v2}, Lorg/openintents/openpgp/OpenPgpError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "errorText":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .end local v1    # "errorText":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 186
    invoke-virtual {p0, v7}, Lcom/fsck/k9/ui/messageview/MessageTopView;->displayViewOnLoadFinished(Z)V

    .line 187
    return-void
.end method

.method public showMessageCryptoWarning(Lcom/fsck/k9/mailstore/MessageViewInfo;Landroid/graphics/drawable/Drawable;IZ)V
    .locals 7
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;
    .param p2, "providerIcon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "warningTextRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p4, "showDetailButton"    # Z

    .prologue
    const/4 v6, 0x0

    .line 133
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->resetAndPrepareMessageView(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 134
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030027

    iget-object v5, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 135
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, p2, v1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setCryptoProviderIcon(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 137
    const v3, 0x7f0c00ac

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 138
    .local v0, "detailButton":Landroid/view/View;
    if-eqz p4, :cond_0

    .line 139
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 140
    new-instance v3, Lcom/fsck/k9/ui/messageview/MessageTopView$3;

    invoke-direct {v3, p0}, Lcom/fsck/k9/ui/messageview/MessageTopView$3;-><init>(Lcom/fsck/k9/ui/messageview/MessageTopView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    :goto_0
    const v3, 0x7f0c00ad

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/fsck/k9/ui/messageview/MessageTopView$4;

    invoke-direct {v4, p0}, Lcom/fsck/k9/ui/messageview/MessageTopView$4;-><init>(Lcom/fsck/k9/ui/messageview/MessageTopView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v3, 0x7f0c00ab

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 158
    .local v2, "warningText":Landroid/widget/TextView;
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 160
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 161
    invoke-virtual {p0, v6}, Lcom/fsck/k9/ui/messageview/MessageTopView;->displayViewOnLoadFinished(Z)V

    .line 162
    return-void

    .line 147
    .end local v2    # "warningText":Landroid/widget/TextView;
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showMessageEncryptedButIncomplete(Lcom/fsck/k9/mailstore/MessageViewInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;
    .param p2, "providerIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    .line 165
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->resetAndPrepareMessageView(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 166
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030025

    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, p2, v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setCryptoProviderIcon(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 169
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 170
    invoke-virtual {p0, v4}, Lcom/fsck/k9/ui/messageview/MessageTopView;->displayViewOnLoadFinished(Z)V

    .line 171
    return-void
.end method
