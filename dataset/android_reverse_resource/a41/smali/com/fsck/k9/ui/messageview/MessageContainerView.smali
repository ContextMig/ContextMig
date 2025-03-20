.class public Lcom/fsck/k9/ui/messageview/MessageContainerView;
.super Landroid/widget/LinearLayout;
.source "MessageContainerView.java"

# interfaces
.implements Lcom/fsck/k9/view/MessageHeader$OnLayoutChangedListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/ui/messageview/MessageContainerView$OnRenderingFinishedListener;,
        Lcom/fsck/k9/ui/messageview/MessageContainerView$SavedState;
    }
.end annotation


# static fields
.field private static final MENU_ITEM_EMAIL_COPY:I = 0x3

.field private static final MENU_ITEM_EMAIL_SAVE:I = 0x2

.field private static final MENU_ITEM_EMAIL_SEND:I = 0x1

.field private static final MENU_ITEM_IMAGE_COPY:I = 0x3

.field private static final MENU_ITEM_IMAGE_SAVE:I = 0x2

.field private static final MENU_ITEM_IMAGE_VIEW:I = 0x1

.field private static final MENU_ITEM_LINK_COPY:I = 0x3

.field private static final MENU_ITEM_LINK_SHARE:I = 0x2

.field private static final MENU_ITEM_LINK_VIEW:I = 0x1

.field private static final MENU_ITEM_PHONE_CALL:I = 0x1

.field private static final MENU_ITEM_PHONE_COPY:I = 0x3

.field private static final MENU_ITEM_PHONE_SAVE:I = 0x2


# instance fields
.field private attachmentCallback:Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

.field private attachmentViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/fsck/k9/mailstore/AttachmentViewInfo;",
            "Lcom/fsck/k9/ui/messageview/AttachmentView;",
            ">;"
        }
    .end annotation
.end field

.field private attachments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/fsck/k9/mailstore/AttachmentViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private currentAttachmentResolver:Lcom/fsck/k9/mailstore/AttachmentResolver;

.field private currentHtmlText:Ljava/lang/String;

.field private hasHiddenExternalImages:Z

.field private mAttachments:Landroid/widget/LinearLayout;

.field private mAttachmentsContainer:Landroid/view/View;

.field private mClipboardManager:Lcom/fsck/k9/helper/ClipboardManager;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMessageContentView:Lcom/fsck/k9/view/MessageWebView;

.field private mSavedState:Lcom/fsck/k9/ui/messageview/MessageContainerView$SavedState;

.field private showingPictures:Z

.field private unsignedText:Landroid/widget/TextView;

.field private unsignedTextContainer:Landroid/view/View;

.field private unsignedTextDivider:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 343
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachmentViewMap:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachments:Ljava/util/Map;

    .line 344
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/ui/messageview/MessageContainerView;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/MessageContainerView;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->startActivityIfAvailable(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/fsck/k9/ui/messageview/MessageContainerView;)Lcom/fsck/k9/helper/ClipboardManager;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/MessageContainerView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mClipboardManager:Lcom/fsck/k9/helper/ClipboardManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/ui/messageview/MessageContainerView;)Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/MessageContainerView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachmentCallback:Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

    return-object v0
.end method

.method private clearDisplayedContent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 439
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mMessageContentView:Lcom/fsck/k9/view/MessageWebView;

    const-string v1, ""

    invoke-virtual {v0, v1, v2, v2}, Lcom/fsck/k9/view/MessageWebView;->displayHtmlContentWithInlineAttachments(Ljava/lang/String;Lcom/fsck/k9/mailstore/AttachmentResolver;Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;)V

    .line 440
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->unsignedTextContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->unsignedText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    return-void
.end method

.method private displayHtmlContentWithInlineAttachments(Ljava/lang/String;Lcom/fsck/k9/mailstore/AttachmentResolver;Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;)V
    .locals 1
    .param p1, "htmlText"    # Ljava/lang/String;
    .param p2, "attachmentResolver"    # Lcom/fsck/k9/mailstore/AttachmentResolver;
    .param p3, "onPageFinishedListener"    # Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->currentHtmlText:Ljava/lang/String;

    .line 430
    iput-object p2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->currentAttachmentResolver:Lcom/fsck/k9/mailstore/AttachmentResolver;

    .line 431
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mMessageContentView:Lcom/fsck/k9/view/MessageWebView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fsck/k9/view/MessageWebView;->displayHtmlContentWithInlineAttachments(Ljava/lang/String;Lcom/fsck/k9/mailstore/AttachmentResolver;Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;)V

    .line 432
    return-void
.end method

.method private getAttachmentView(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)Lcom/fsck/k9/ui/messageview/AttachmentView;
    .locals 1
    .param p1, "attachment"    # Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .prologue
    .line 555
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachmentViewMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/ui/messageview/AttachmentView;

    return-object v0
.end method

.method private getAttachmentViewInfoIfCidUri(Landroid/net/Uri;)Lcom/fsck/k9/mailstore/AttachmentViewInfo;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 324
    const-string v2, "cid"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 325
    const/4 v2, 0x0

    .line 331
    :goto_0
    return-object v2

    .line 328
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "cid":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->currentAttachmentResolver:Lcom/fsck/k9/mailstore/AttachmentResolver;

    invoke-virtual {v2, v0}, Lcom/fsck/k9/mailstore/AttachmentResolver;->getAttachmentUriForContentId(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 331
    .local v1, "internalUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachments:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    goto :goto_0
.end method

.method private isShowingPictures()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->showingPictures:Z

    return v0
.end method

.method private refreshDisplayedContent()V
    .locals 4

    .prologue
    .line 435
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mMessageContentView:Lcom/fsck/k9/view/MessageWebView;

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->currentHtmlText:Ljava/lang/String;

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->currentAttachmentResolver:Lcom/fsck/k9/mailstore/AttachmentResolver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/view/MessageWebView;->displayHtmlContentWithInlineAttachments(Ljava/lang/String;Lcom/fsck/k9/mailstore/AttachmentResolver;Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;)V

    .line 436
    return-void
.end method

.method private setLoadPictures(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 352
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mMessageContentView:Lcom/fsck/k9/view/MessageWebView;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/fsck/k9/view/MessageWebView;->blockNetworkData(Z)V

    .line 353
    iput-boolean p1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->showingPictures:Z

    .line 354
    return-void

    .line 352
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startActivityIfAvailable(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 336
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const v1, 0x7f0701c3

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public beginSelectingText()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mMessageContentView:Lcom/fsck/k9/view/MessageWebView;

    invoke-virtual {v0}, Lcom/fsck/k9/view/MessageWebView;->emulateShiftHeld()V

    .line 490
    return-void
.end method

.method public disableAttachmentButtons()V
    .locals 3

    .prologue
    .line 368
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachmentViewMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/ui/messageview/AttachmentView;

    .line 369
    .local v0, "attachmentView":Lcom/fsck/k9/ui/messageview/AttachmentView;
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/AttachmentView;->disableButtons()V

    goto :goto_0

    .line 371
    .end local v0    # "attachmentView":Lcom/fsck/k9/ui/messageview/AttachmentView;
    :cond_0
    return-void
.end method

.method public disableAttachmentButtons(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V
    .locals 1
    .param p1, "attachment"    # Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .prologue
    .line 547
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getAttachmentView(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)Lcom/fsck/k9/ui/messageview/AttachmentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/AttachmentView;->disableButtons()V

    .line 548
    return-void
.end method

.method public displayMessageViewContainer(Lcom/fsck/k9/mailstore/MessageViewInfo;Lcom/fsck/k9/ui/messageview/MessageContainerView$OnRenderingFinishedListener;ZZLcom/fsck/k9/ui/messageview/AttachmentViewCallback;)V
    .locals 5
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;
    .param p2, "onRenderingFinishedListener"    # Lcom/fsck/k9/ui/messageview/MessageContainerView$OnRenderingFinishedListener;
    .param p3, "automaticallyLoadPictures"    # Z
    .param p4, "hideUnsignedTextDivider"    # Z
    .param p5, "attachmentCallback"    # Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 377
    iput-object p5, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachmentCallback:Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

    .line 379
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->resetView()V

    .line 381
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->renderAttachments(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 383
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mSavedState:Lcom/fsck/k9/ui/messageview/MessageContainerView$SavedState;

    if-eqz v3, :cond_1

    .line 384
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mSavedState:Lcom/fsck/k9/ui/messageview/MessageContainerView$SavedState;

    iget-boolean v3, v3, Lcom/fsck/k9/ui/messageview/MessageContainerView$SavedState;->showingPictures:Z

    if-eqz v3, :cond_0

    .line 385
    invoke-direct {p0, v4}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->setLoadPictures(Z)V

    .line 388
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mSavedState:Lcom/fsck/k9/ui/messageview/MessageContainerView$SavedState;

    .line 391
    :cond_1
    iget-object v1, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->text:Ljava/lang/String;

    .line 392
    .local v1, "textToDisplay":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->isShowingPictures()Z

    move-result v3

    if-nez v3, :cond_2

    .line 393
    invoke-static {v1}, Lcom/fsck/k9/helper/Utility;->hasExternalImages(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 394
    if-eqz p3, :cond_6

    .line 395
    invoke-direct {p0, v4}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->setLoadPictures(Z)V

    .line 402
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 403
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0703cf

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/message/html/HtmlConverter;->wrapStatusMessage(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 406
    :cond_3
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageContainerView$5;

    invoke-direct {v0, p0, p2}, Lcom/fsck/k9/ui/messageview/MessageContainerView$5;-><init>(Lcom/fsck/k9/ui/messageview/MessageContainerView;Lcom/fsck/k9/ui/messageview/MessageContainerView$OnRenderingFinishedListener;)V

    .line 413
    .local v0, "onPageFinishedListener":Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;
    iget-object v3, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->attachmentResolver:Lcom/fsck/k9/mailstore/AttachmentResolver;

    invoke-direct {p0, v1, v3, v0}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->displayHtmlContentWithInlineAttachments(Ljava/lang/String;Lcom/fsck/k9/mailstore/AttachmentResolver;Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;)V

    .line 416
    iget-object v3, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->extraText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 417
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->unsignedTextContainer:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 418
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->unsignedTextDivider:Landroid/view/View;

    if-eqz p4, :cond_4

    const/16 v2, 0x8

    :cond_4
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 419
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->unsignedText:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->extraText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    :cond_5
    return-void

    .line 397
    .end local v0    # "onPageFinishedListener":Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;
    :cond_6
    iput-boolean v4, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->hasHiddenExternalImages:Z

    goto :goto_0
.end method

.method public enableAttachmentButtons()V
    .locals 3

    .prologue
    .line 362
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachmentViewMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/ui/messageview/AttachmentView;

    .line 363
    .local v0, "attachmentView":Lcom/fsck/k9/ui/messageview/AttachmentView;
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/AttachmentView;->enableButtons()V

    goto :goto_0

    .line 365
    .end local v0    # "attachmentView":Lcom/fsck/k9/ui/messageview/AttachmentView;
    :cond_0
    return-void
.end method

.method public enableAttachmentButtons(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V
    .locals 1
    .param p1, "attachment"    # Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .prologue
    .line 543
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getAttachmentView(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)Lcom/fsck/k9/ui/messageview/AttachmentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/AttachmentView;->enableButtons()V

    .line 544
    return-void
.end method

.method public hasHiddenExternalImages()Z
    .locals 1

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->hasHiddenExternalImages:Z

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 16
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 108
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    move-object/from16 v11, p2

    .line 110
    check-cast v11, Landroid/webkit/WebView;

    .line 111
    .local v11, "webview":Landroid/webkit/WebView;
    invoke-virtual {v11}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v7

    .line 113
    .local v7, "result":Landroid/webkit/WebView$HitTestResult;
    if-nez v7, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {v7}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v8

    .line 118
    .local v8, "type":I
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 120
    .local v2, "context":Landroid/content/Context;
    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 231
    :pswitch_1
    invoke-virtual {v7}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v6

    .line 232
    .local v6, "phoneNumber":Ljava/lang/String;
    new-instance v5, Lcom/fsck/k9/ui/messageview/MessageContainerView$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/fsck/k9/ui/messageview/MessageContainerView$3;-><init>(Lcom/fsck/k9/ui/messageview/MessageContainerView;Ljava/lang/String;)V

    .line 259
    .local v5, "listener":Landroid/view/MenuItem$OnMenuItemClickListener;
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 261
    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const v15, 0x7f0703cb

    .line 262
    invoke-virtual {v2, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 261
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14, v15}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v12

    .line 263
    invoke-interface {v12, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 265
    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x1

    const v15, 0x7f0703ce

    .line 266
    invoke-virtual {v2, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 265
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14, v15}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v12

    .line 267
    invoke-interface {v12, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 269
    const/4 v12, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x2

    const v15, 0x7f0703cd

    .line 270
    invoke-virtual {v2, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 269
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14, v15}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v12

    .line 271
    invoke-interface {v12, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    .line 122
    .end local v5    # "listener":Landroid/view/MenuItem$OnMenuItemClickListener;
    .end local v6    # "phoneNumber":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v7}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v10

    .line 123
    .local v10, "url":Ljava/lang/String;
    new-instance v5, Lcom/fsck/k9/ui/messageview/MessageContainerView$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v10}, Lcom/fsck/k9/ui/messageview/MessageContainerView$1;-><init>(Lcom/fsck/k9/ui/messageview/MessageContainerView;Ljava/lang/String;)V

    .line 150
    .restart local v5    # "listener":Landroid/view/MenuItem$OnMenuItemClickListener;
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 152
    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const v15, 0x7f0703ca

    .line 153
    invoke-virtual {v2, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 152
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14, v15}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v12

    .line 154
    invoke-interface {v12, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 156
    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x1

    const v15, 0x7f0703c9

    .line 157
    invoke-virtual {v2, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 156
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14, v15}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v12

    .line 158
    invoke-interface {v12, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 160
    const/4 v12, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x2

    const v15, 0x7f0703c8

    .line 161
    invoke-virtual {v2, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 160
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14, v15}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v12

    .line 162
    invoke-interface {v12, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 168
    .end local v5    # "listener":Landroid/view/MenuItem$OnMenuItemClickListener;
    .end local v10    # "url":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v7}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 169
    .local v9, "uri":Landroid/net/Uri;
    if-eqz v9, :cond_0

    .line 173
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getAttachmentViewInfoIfCidUri(Landroid/net/Uri;)Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    move-result-object v1

    .line 174
    .local v1, "attachmentViewInfo":Lcom/fsck/k9/mailstore/AttachmentViewInfo;
    if-eqz v1, :cond_2

    const/4 v4, 0x1

    .line 176
    .local v4, "inlineImage":Z
    :goto_1
    new-instance v5, Lcom/fsck/k9/ui/messageview/MessageContainerView$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4, v1, v9}, Lcom/fsck/k9/ui/messageview/MessageContainerView$2;-><init>(Lcom/fsck/k9/ui/messageview/MessageContainerView;ZLcom/fsck/k9/mailstore/AttachmentViewInfo;Landroid/net/Uri;)V

    .line 209
    .restart local v5    # "listener":Landroid/view/MenuItem$OnMenuItemClickListener;
    if-eqz v4, :cond_3

    const v12, 0x7f0703c5

    .line 210
    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 209
    :goto_2
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 212
    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const v15, 0x7f0703c6

    .line 213
    invoke-virtual {v2, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 212
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14, v15}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v12

    .line 214
    invoke-interface {v12, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 216
    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v4, :cond_4

    const v12, 0x7f0703c4

    .line 218
    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 216
    :goto_3
    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14, v15, v12}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v12

    .line 220
    invoke-interface {v12, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 222
    if-nez v4, :cond_0

    .line 223
    const/4 v12, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x2

    const v15, 0x7f0703c2

    .line 224
    invoke-virtual {v2, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 223
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14, v15}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v12

    .line 225
    invoke-interface {v12, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 174
    .end local v4    # "inlineImage":Z
    .end local v5    # "listener":Landroid/view/MenuItem$OnMenuItemClickListener;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 210
    .restart local v4    # "inlineImage":Z
    .restart local v5    # "listener":Landroid/view/MenuItem$OnMenuItemClickListener;
    :cond_3
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 218
    :cond_4
    const v12, 0x7f0703c3

    .line 219
    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 276
    .end local v1    # "attachmentViewInfo":Lcom/fsck/k9/mailstore/AttachmentViewInfo;
    .end local v4    # "inlineImage":Z
    .end local v5    # "listener":Landroid/view/MenuItem$OnMenuItemClickListener;
    .end local v9    # "uri":Landroid/net/Uri;
    :pswitch_4
    invoke-virtual {v7}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "email":Ljava/lang/String;
    new-instance v5, Lcom/fsck/k9/ui/messageview/MessageContainerView$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3}, Lcom/fsck/k9/ui/messageview/MessageContainerView$4;-><init>(Lcom/fsck/k9/ui/messageview/MessageContainerView;Ljava/lang/String;)V

    .line 304
    .restart local v5    # "listener":Landroid/view/MenuItem$OnMenuItemClickListener;
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 306
    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const v15, 0x7f0703c0

    .line 307
    invoke-virtual {v2, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 306
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14, v15}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v12

    .line 308
    invoke-interface {v12, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 310
    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x1

    const v15, 0x7f0703bf

    .line 311
    invoke-virtual {v2, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 310
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14, v15}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v12

    .line 312
    invoke-interface {v12, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 314
    const/4 v12, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x2

    const v15, 0x7f0703be

    .line 315
    invoke-virtual {v2, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 314
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14, v15}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v12

    .line 316
    invoke-interface {v12, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 85
    const v1, 0x7f0c007c

    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/view/MessageWebView;

    iput-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mMessageContentView:Lcom/fsck/k9/view/MessageWebView;

    .line 86
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mMessageContentView:Lcom/fsck/k9/view/MessageWebView;

    invoke-virtual {v1}, Lcom/fsck/k9/view/MessageWebView;->configure()V

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mMessageContentView:Lcom/fsck/k9/view/MessageWebView;

    invoke-virtual {v1, p0}, Lcom/fsck/k9/view/MessageWebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 90
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mMessageContentView:Lcom/fsck/k9/view/MessageWebView;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/view/MessageWebView;->setVisibility(I)V

    .line 92
    const v1, 0x7f0c00a5

    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mAttachmentsContainer:Landroid/view/View;

    .line 93
    const v1, 0x7f0c007b

    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mAttachments:Landroid/widget/LinearLayout;

    .line 95
    const v1, 0x7f0c00a2

    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->unsignedTextContainer:Landroid/view/View;

    .line 96
    const v1, 0x7f0c00a3

    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->unsignedTextDivider:Landroid/view/View;

    .line 97
    const v1, 0x7f0c00a4

    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->unsignedText:Landroid/widget/TextView;

    .line 99
    iput-boolean v2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->showingPictures:Z

    .line 101
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 102
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mInflater:Landroid/view/LayoutInflater;

    .line 103
    invoke-static {v0}, Lcom/fsck/k9/helper/ClipboardManager;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/helper/ClipboardManager;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mClipboardManager:Lcom/fsck/k9/helper/ClipboardManager;

    .line 104
    return-void
.end method

.method public onLayoutChanged()V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mMessageContentView:Lcom/fsck/k9/view/MessageWebView;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mMessageContentView:Lcom/fsck/k9/view/MessageWebView;

    invoke-virtual {v0}, Lcom/fsck/k9/view/MessageWebView;->invalidate()V

    .line 540
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 524
    instance-of v1, p1, Lcom/fsck/k9/ui/messageview/MessageContainerView$SavedState;

    if-nez v1, :cond_0

    .line 525
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 533
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 529
    check-cast v0, Lcom/fsck/k9/ui/messageview/MessageContainerView$SavedState;

    .line 530
    .local v0, "savedState":Lcom/fsck/k9/ui/messageview/MessageContainerView$SavedState;
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageContainerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 532
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mSavedState:Lcom/fsck/k9/ui/messageview/MessageContainerView$SavedState;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 511
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 513
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageContainerView$SavedState;

    invoke-direct {v0, v1}, Lcom/fsck/k9/ui/messageview/MessageContainerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 515
    .local v0, "savedState":Lcom/fsck/k9/ui/messageview/MessageContainerView$SavedState;
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mAttachmentsContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mAttachmentsContainer:Landroid/view/View;

    .line 516
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v0, Lcom/fsck/k9/ui/messageview/MessageContainerView$SavedState;->attachmentViewVisible:Z

    .line 517
    iget-boolean v2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->showingPictures:Z

    iput-boolean v2, v0, Lcom/fsck/k9/ui/messageview/MessageContainerView$SavedState;->showingPictures:Z

    .line 519
    return-object v0

    .line 516
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public refreshAttachmentThumbnail(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V
    .locals 1
    .param p1, "attachment"    # Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .prologue
    .line 551
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getAttachmentView(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)Lcom/fsck/k9/ui/messageview/AttachmentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/AttachmentView;->refreshThumbnail()V

    .line 552
    return-void
.end method

.method public renderAttachments(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 7
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;

    .prologue
    const/4 v6, 0x0

    .line 445
    iget-object v2, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->attachments:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 446
    iget-object v2, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->attachments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 447
    .local v0, "attachment":Lcom/fsck/k9/mailstore/AttachmentViewInfo;
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachments:Ljava/util/Map;

    iget-object v4, v0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->internalUri:Landroid/net/Uri;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    iget-boolean v3, v0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->inlineAttachment:Z

    if-nez v3, :cond_0

    .line 452
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030032

    iget-object v5, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mAttachments:Landroid/widget/LinearLayout;

    .line 453
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/ui/messageview/AttachmentView;

    .line 454
    .local v1, "view":Lcom/fsck/k9/ui/messageview/AttachmentView;
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachmentCallback:Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

    invoke-virtual {v1, v3}, Lcom/fsck/k9/ui/messageview/AttachmentView;->setCallback(Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;)V

    .line 455
    invoke-virtual {v1, v0}, Lcom/fsck/k9/ui/messageview/AttachmentView;->setAttachment(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    .line 457
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachmentViewMap:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 462
    .end local v0    # "attachment":Lcom/fsck/k9/mailstore/AttachmentViewInfo;
    .end local v1    # "view":Lcom/fsck/k9/ui/messageview/AttachmentView;
    :cond_1
    iget-object v2, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->extraAttachments:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 463
    iget-object v2, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->extraAttachments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 464
    .restart local v0    # "attachment":Lcom/fsck/k9/mailstore/AttachmentViewInfo;
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachments:Ljava/util/Map;

    iget-object v4, v0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->internalUri:Landroid/net/Uri;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-boolean v3, v0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->inlineAttachment:Z

    if-nez v3, :cond_2

    .line 469
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030033

    iget-object v5, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mAttachments:Landroid/widget/LinearLayout;

    .line 470
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/ui/messageview/LockedAttachmentView;

    .line 471
    .local v1, "view":Lcom/fsck/k9/ui/messageview/LockedAttachmentView;
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachmentCallback:Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

    invoke-virtual {v1, v3}, Lcom/fsck/k9/ui/messageview/LockedAttachmentView;->setCallback(Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;)V

    .line 472
    invoke-virtual {v1, v0}, Lcom/fsck/k9/ui/messageview/LockedAttachmentView;->setAttachment(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    .line 475
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 478
    .end local v0    # "attachment":Lcom/fsck/k9/mailstore/AttachmentViewInfo;
    .end local v1    # "view":Lcom/fsck/k9/ui/messageview/LockedAttachmentView;
    :cond_3
    return-void
.end method

.method public resetView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 493
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->setLoadPictures(Z)V

    .line 494
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 496
    iput-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->currentHtmlText:Ljava/lang/String;

    .line 497
    iput-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->currentAttachmentResolver:Lcom/fsck/k9/mailstore/AttachmentResolver;

    .line 506
    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->clearDisplayedContent()V

    .line 507
    return-void
.end method

.method public showPictures()V
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->setLoadPictures(Z)V

    .line 358
    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->refreshDisplayedContent()V

    .line 359
    return-void
.end method

.method public zoom(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 481
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mMessageContentView:Lcom/fsck/k9/view/MessageWebView;

    invoke-virtual {v0}, Lcom/fsck/k9/view/MessageWebView;->zoomIn()Z

    .line 486
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->mMessageContentView:Lcom/fsck/k9/view/MessageWebView;

    invoke-virtual {v0}, Lcom/fsck/k9/view/MessageWebView;->zoomOut()Z

    goto :goto_0
.end method
