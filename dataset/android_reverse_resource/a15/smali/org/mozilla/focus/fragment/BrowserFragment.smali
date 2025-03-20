.class public Lorg/mozilla/focus/fragment/BrowserFragment;
.super Lorg/mozilla/focus/fragment/WebFragment;
.source "BrowserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lorg/mozilla/focus/fragment/DownloadDialogFragment$DownloadDialogListener;


# instance fields
.field private autocompletePopupWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup;",
            ">;"
        }
    .end annotation
.end field

.field private backButton:Landroid/view/View;

.field private backgroundTransitionGroup:Lorg/mozilla/focus/animation/TransitionDrawableGroup;

.field private blockView:Landroid/widget/FrameLayout;

.field private browserContainer:Landroid/view/View;

.field private closeFindInPage:Landroid/widget/ImageButton;

.field private downloadBroadcastReceiver:Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;

.field private final findInPageCoordinator:Lorg/mozilla/focus/findinpage/FindInPageCoordinator;

.field private findInPageNext:Landroid/widget/ImageButton;

.field private findInPagePrevious:Landroid/widget/ImageButton;

.field private findInPageQuery:Landroid/widget/TextView;

.field private findInPageResultTextView:Landroid/widget/TextView;

.field private findInPageView:Landroid/view/View;

.field private findInPageViewHeight:I

.field private forwardButton:Landroid/view/View;

.field private fullscreenCallback:Lorg/mozilla/focus/web/IWebView$FullscreenCallback;

.field private manager:Landroid/app/DownloadManager;

.field private menuView:Landroid/widget/ImageButton;

.field private menuWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/mozilla/focus/menu/browser/BrowserMenu;",
            ">;"
        }
    .end annotation
.end field

.field private pendingDownload:Lorg/mozilla/focus/web/Download;

.field private popupTint:Landroid/widget/FrameLayout;

.field private progressView:Lorg/mozilla/focus/widget/AnimatedProgressBar;

.field private refreshButton:Landroid/view/View;

.field private securityView:Landroid/widget/ImageView;

.field private session:Lorg/mozilla/focus/session/Session;

.field private final sessionManager:Lorg/mozilla/focus/session/SessionManager;

.field private statusBar:Landroid/view/View;

.field private stopButton:Landroid/view/View;

.field private swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private urlBar:Landroid/view/View;

.field private urlView:Landroid/widget/TextView;

.field private videoContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/WebFragment;-><init>()V

    .line 136
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->menuWeakReference:Ljava/lang/ref/WeakReference;

    .line 137
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->autocompletePopupWeakReference:Ljava/lang/ref/WeakReference;

    .line 170
    new-instance v0, Lorg/mozilla/focus/findinpage/FindInPageCoordinator;

    invoke-direct {v0}, Lorg/mozilla/focus/findinpage/FindInPageCoordinator;-><init>()V

    iput-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageCoordinator:Lorg/mozilla/focus/findinpage/FindInPageCoordinator;

    .line 173
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->sessionManager:Lorg/mozilla/focus/session/SessionManager;

    .line 174
    return-void
.end method

.method static synthetic access$000(Lorg/mozilla/focus/fragment/BrowserFragment;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->menuWeakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lorg/mozilla/focus/fragment/BrowserFragment;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lorg/mozilla/focus/fragment/BrowserFragment;
    .param p1, "x1"    # Ljava/lang/Integer;
    .param p2, "x2"    # Ljava/lang/Integer;

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lorg/mozilla/focus/fragment/BrowserFragment;->updateFindInPageResult(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/mozilla/focus/fragment/BrowserFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->securityView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/mozilla/focus/fragment/BrowserFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 106
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->shareCurrentUrl()V

    return-void
.end method

.method static synthetic access$1200(Lorg/mozilla/focus/fragment/BrowserFragment;)Lorg/mozilla/focus/web/IWebView$FullscreenCallback;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->fullscreenCallback:Lorg/mozilla/focus/web/IWebView$FullscreenCallback;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/mozilla/focus/fragment/BrowserFragment;Lorg/mozilla/focus/web/IWebView$FullscreenCallback;)Lorg/mozilla/focus/web/IWebView$FullscreenCallback;
    .locals 0
    .param p0, "x0"    # Lorg/mozilla/focus/fragment/BrowserFragment;
    .param p1, "x1"    # Lorg/mozilla/focus/web/IWebView$FullscreenCallback;

    .prologue
    .line 106
    iput-object p1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->fullscreenCallback:Lorg/mozilla/focus/web/IWebView$FullscreenCallback;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/mozilla/focus/fragment/BrowserFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->browserContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/mozilla/focus/fragment/BrowserFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->videoContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/mozilla/focus/fragment/BrowserFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 106
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->switchToImmersiveMode()V

    return-void
.end method

.method static synthetic access$1600(Lorg/mozilla/focus/fragment/BrowserFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->statusBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/mozilla/focus/fragment/BrowserFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 106
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->exitImmersiveModeIfNeeded()V

    return-void
.end method

.method static synthetic access$1800(Lorg/mozilla/focus/fragment/BrowserFragment;Lorg/mozilla/focus/web/Download;)Z
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/fragment/BrowserFragment;
    .param p1, "x1"    # Lorg/mozilla/focus/web/Download;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lorg/mozilla/focus/fragment/BrowserFragment;->isDownloadFromLongPressImage(Lorg/mozilla/focus/web/Download;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lorg/mozilla/focus/fragment/BrowserFragment;Lorg/mozilla/focus/web/Download;)V
    .locals 0
    .param p0, "x0"    # Lorg/mozilla/focus/fragment/BrowserFragment;
    .param p1, "x1"    # Lorg/mozilla/focus/web/Download;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lorg/mozilla/focus/fragment/BrowserFragment;->queueDownload(Lorg/mozilla/focus/web/Download;)V

    return-void
.end method

.method static synthetic access$200(Lorg/mozilla/focus/fragment/BrowserFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->urlView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2002(Lorg/mozilla/focus/fragment/BrowserFragment;Lorg/mozilla/focus/web/Download;)Lorg/mozilla/focus/web/Download;
    .locals 0
    .param p0, "x0"    # Lorg/mozilla/focus/fragment/BrowserFragment;
    .param p1, "x1"    # Lorg/mozilla/focus/web/Download;

    .prologue
    .line 106
    iput-object p1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->pendingDownload:Lorg/mozilla/focus/web/Download;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/mozilla/focus/fragment/BrowserFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->popupTint:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/mozilla/focus/fragment/BrowserFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 106
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->dismissAutocompletePopup()V

    return-void
.end method

.method static synthetic access$300(Lorg/mozilla/focus/fragment/BrowserFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageQuery:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/mozilla/focus/fragment/BrowserFragment;)Lorg/mozilla/focus/animation/TransitionDrawableGroup;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->backgroundTransitionGroup:Lorg/mozilla/focus/animation/TransitionDrawableGroup;

    return-object v0
.end method

.method static synthetic access$500(Lorg/mozilla/focus/fragment/BrowserFragment;)Lorg/mozilla/focus/widget/AnimatedProgressBar;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->progressView:Lorg/mozilla/focus/widget/AnimatedProgressBar;

    return-object v0
.end method

.method static synthetic access$600(Lorg/mozilla/focus/fragment/BrowserFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic access$700(Lorg/mozilla/focus/fragment/BrowserFragment;)Lorg/mozilla/focus/session/Session;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    return-object v0
.end method

.method static synthetic access$800(Lorg/mozilla/focus/fragment/BrowserFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/mozilla/focus/fragment/BrowserFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lorg/mozilla/focus/fragment/BrowserFragment;->updateToolbarButtonStates(Z)V

    return-void
.end method

.method static synthetic access$900(Lorg/mozilla/focus/fragment/BrowserFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 106
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->hideFindInPage()V

    return-void
.end method

.method public static createForSession(Lorg/mozilla/focus/session/Session;)Lorg/mozilla/focus/fragment/BrowserFragment;
    .locals 4
    .param p0, "session"    # Lorg/mozilla/focus/session/Session;

    .prologue
    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v2, "sessionUUID"

    invoke-virtual {p0}, Lorg/mozilla/focus/session/Session;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v1, Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-direct {v1}, Lorg/mozilla/focus/fragment/BrowserFragment;-><init>()V

    .line 120
    .local v1, "fragment":Lorg/mozilla/focus/fragment/BrowserFragment;
    invoke-virtual {v1, v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->setArguments(Landroid/os/Bundle;)V

    .line 122
    return-object v1
.end method

.method private dismissAutocompletePopup()V
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->autocompletePopupWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup;

    invoke-virtual {v0}, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup;->dismiss()V

    .line 1301
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->autocompletePopupWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1302
    return-void
.end method

.method private exitImmersiveModeIfNeeded()V
    .locals 4

    .prologue
    .line 713
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 714
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 723
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 724
    .local v1, "window":Landroid/view/Window;
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 725
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x500

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method private hideFindInPage()V
    .locals 4

    .prologue
    .line 1356
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getWebView()Lorg/mozilla/focus/web/IWebView;

    move-result-object v1

    .line 1357
    .local v1, "webView":Lorg/mozilla/focus/web/IWebView;
    if-nez v1, :cond_0

    .line 1371
    :goto_0
    return-void

    .line 1361
    :cond_0
    invoke-interface {v1}, Lorg/mozilla/focus/web/IWebView;->clearMatches()V

    .line 1362
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageCoordinator:Lorg/mozilla/focus/findinpage/FindInPageCoordinator;

    invoke-virtual {v2}, Lorg/mozilla/focus/findinpage/FindInPageCoordinator;->reset()V

    .line 1363
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1364
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageQuery:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1365
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageQuery:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->clearFocus()V

    .line 1367
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1368
    .local v0, "params":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    const/4 v2, 0x0

    iput v2, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    .line 1369
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1370
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageQuery:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/mozilla/focus/utils/ViewUtils;->hideKeyboard(Landroid/view/View;)V

    goto :goto_0
.end method

.method private initialiseCustomTabUi(Landroid/view/View;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 446
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v13}, Lorg/mozilla/focus/session/Session;->getCustomTabConfig()Lorg/mozilla/focus/customtabs/CustomTabConfig;

    move-result-object v4

    .line 454
    .local v4, "customTabConfig":Lorg/mozilla/focus/customtabs/CustomTabConfig;
    const v13, 0x7f090071

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/mozilla/focus/widget/FloatingEraseButton;

    .line 455
    .local v5, "erase":Lorg/mozilla/focus/widget/FloatingEraseButton;
    invoke-virtual {v5}, Lorg/mozilla/focus/widget/FloatingEraseButton;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 456
    .local v6, "eraseContainer":Landroid/view/ViewGroup;
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 458
    const v13, 0x7f09010f

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lorg/mozilla/focus/widget/FloatingSessionsButton;

    .line 459
    .local v10, "sessions":Lorg/mozilla/focus/widget/FloatingSessionsButton;
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 463
    iget-object v13, v4, Lorg/mozilla/focus/customtabs/CustomTabConfig;->toolbarColor:Ljava/lang/Integer;

    if-eqz v13, :cond_1

    .line 464
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mozilla/focus/fragment/BrowserFragment;->urlBar:Landroid/view/View;

    iget-object v14, v4, Lorg/mozilla/focus/customtabs/CustomTabConfig;->toolbarColor:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 466
    iget-object v13, v4, Lorg/mozilla/focus/customtabs/CustomTabConfig;->toolbarColor:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Lmozilla/components/support/utils/ColorUtils;->getReadableTextColor(I)I

    move-result v12

    .line 467
    .local v12, "textColor":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mozilla/focus/fragment/BrowserFragment;->urlView:Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 472
    :goto_0
    const v13, 0x7f090051

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 474
    .local v2, "closeButton":Landroid/widget/ImageView;
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 475
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    iget-object v13, v4, Lorg/mozilla/focus/customtabs/CustomTabConfig;->closeButtonIcon:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_2

    .line 478
    iget-object v13, v4, Lorg/mozilla/focus/customtabs/CustomTabConfig;->closeButtonIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 486
    :goto_1
    iget-boolean v13, v4, Lorg/mozilla/focus/customtabs/CustomTabConfig;->disableUrlbarHiding:Z

    if-eqz v13, :cond_0

    .line 487
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mozilla/focus/fragment/BrowserFragment;->urlBar:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 488
    .local v8, "params":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    .line 491
    .end local v8    # "params":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    :cond_0
    iget-object v13, v4, Lorg/mozilla/focus/customtabs/CustomTabConfig;->actionButtonConfig:Lorg/mozilla/focus/customtabs/CustomTabConfig$ActionButtonConfig;

    if-eqz v13, :cond_3

    .line 492
    const v13, 0x7f090050

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 493
    .local v1, "actionButton":Landroid/widget/ImageButton;
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 495
    iget-object v13, v4, Lorg/mozilla/focus/customtabs/CustomTabConfig;->actionButtonConfig:Lorg/mozilla/focus/customtabs/CustomTabConfig$ActionButtonConfig;

    iget-object v13, v13, Lorg/mozilla/focus/customtabs/CustomTabConfig$ActionButtonConfig;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v13}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 496
    iget-object v13, v4, Lorg/mozilla/focus/customtabs/CustomTabConfig;->actionButtonConfig:Lorg/mozilla/focus/customtabs/CustomTabConfig$ActionButtonConfig;

    iget-object v13, v13, Lorg/mozilla/focus/customtabs/CustomTabConfig$ActionButtonConfig;->description:Ljava/lang/String;

    invoke-virtual {v1, v13}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v13, v4, Lorg/mozilla/focus/customtabs/CustomTabConfig;->actionButtonConfig:Lorg/mozilla/focus/customtabs/CustomTabConfig$ActionButtonConfig;

    iget-object v9, v13, Lorg/mozilla/focus/customtabs/CustomTabConfig$ActionButtonConfig;->pendingIntent:Landroid/app/PendingIntent;

    .line 500
    .local v9, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v13, Lorg/mozilla/focus/fragment/BrowserFragment$11;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v9}, Lorg/mozilla/focus/fragment/BrowserFragment$11;-><init>(Lorg/mozilla/focus/fragment/BrowserFragment;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    .end local v1    # "actionButton":Landroid/widget/ImageButton;
    .end local v9    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mozilla/focus/fragment/BrowserFragment;->securityView:Landroid/widget/ImageView;

    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 533
    sget-object v13, Lmozilla/components/support/utils/DrawableUtils;->INSTANCE:Lmozilla/components/support/utils/DrawableUtils;

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f080090

    invoke-virtual {v13, v14, v15, v12}, Lmozilla/components/support/utils/DrawableUtils;->loadAndTintDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 534
    .local v7, "menuIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mozilla/focus/fragment/BrowserFragment;->menuView:Landroid/widget/ImageButton;

    invoke-virtual {v13, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 535
    return-void

    .line 469
    .end local v2    # "closeButton":Landroid/widget/ImageView;
    .end local v7    # "menuIcon":Landroid/graphics/drawable/Drawable;
    .end local v12    # "textColor":I
    :cond_1
    const/4 v12, -0x1

    .restart local v12    # "textColor":I
    goto :goto_0

    .line 481
    .restart local v2    # "closeButton":Landroid/widget/ImageView;
    :cond_2
    sget-object v13, Lmozilla/components/support/utils/DrawableUtils;->INSTANCE:Lmozilla/components/support/utils/DrawableUtils;

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f080087

    invoke-virtual {v13, v14, v15, v12}, Lmozilla/components/support/utils/DrawableUtils;->loadAndTintDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 483
    .local v3, "closeIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 518
    .end local v3    # "closeIcon":Landroid/graphics/drawable/Drawable;
    :cond_3
    const v13, 0x7f090050

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    .line 519
    .local v11, "shareButton":Landroid/widget/ImageButton;
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 520
    sget-object v13, Lmozilla/components/support/utils/DrawableUtils;->INSTANCE:Lmozilla/components/support/utils/DrawableUtils;

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f080096

    invoke-virtual {v13, v14, v15, v12}, Lmozilla/components/support/utils/DrawableUtils;->loadAndTintDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 521
    const v13, 0x7f0f0096

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/mozilla/focus/fragment/BrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 522
    new-instance v13, Lorg/mozilla/focus/fragment/BrowserFragment$12;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/mozilla/focus/fragment/BrowserFragment$12;-><init>(Lorg/mozilla/focus/fragment/BrowserFragment;)V

    invoke-virtual {v11, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method private initialiseNormalBrowserUi(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 428
    const v2, 0x7f090071

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/widget/FloatingEraseButton;

    .line 429
    .local v0, "eraseButton":Lorg/mozilla/focus/widget/FloatingEraseButton;
    invoke-virtual {v0, p0}, Lorg/mozilla/focus/widget/FloatingEraseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->urlView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    const v2, 0x7f09010f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/mozilla/focus/widget/FloatingSessionsButton;

    .line 434
    .local v1, "tabsButton":Lorg/mozilla/focus/widget/FloatingSessionsButton;
    invoke-virtual {v1, p0}, Lorg/mozilla/focus/widget/FloatingSessionsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->sessionManager:Lorg/mozilla/focus/session/SessionManager;

    invoke-virtual {v2}, Lorg/mozilla/focus/session/SessionManager;->getSessions()Lorg/mozilla/focus/architecture/NonNullLiveData;

    move-result-object v2

    new-instance v3, Lorg/mozilla/focus/fragment/BrowserFragment$10;

    invoke-direct {v3, p0, v1, v0}, Lorg/mozilla/focus/fragment/BrowserFragment$10;-><init>(Lorg/mozilla/focus/fragment/BrowserFragment;Lorg/mozilla/focus/widget/FloatingSessionsButton;Lorg/mozilla/focus/widget/FloatingEraseButton;)V

    invoke-virtual {v2, p0, v3}, Lorg/mozilla/focus/architecture/NonNullLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 443
    return-void
.end method

.method private isDownloadFromLongPressImage(Lorg/mozilla/focus/web/Download;)Z
    .locals 2
    .param p1, "download"    # Lorg/mozilla/focus/web/Download;

    .prologue
    .line 684
    invoke-virtual {p1}, Lorg/mozilla/focus/web/Download;->getDestinationDirectory()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private queueDownload(Lorg/mozilla/focus/web/Download;)V
    .locals 10
    .param p1, "download"    # Lorg/mozilla/focus/web/Download;

    .prologue
    .line 848
    if-nez p1, :cond_1

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 853
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 857
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v7

    invoke-virtual {p1}, Lorg/mozilla/focus/web/Download;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 859
    .local v1, "cookie":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/mozilla/focus/web/Download;->getContentDisposition()Ljava/lang/String;

    move-result-object v7

    .line 860
    invoke-virtual {p1}, Lorg/mozilla/focus/web/Download;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 861
    invoke-virtual {p1}, Lorg/mozilla/focus/web/Download;->getMimeType()Ljava/lang/String;

    move-result-object v9

    .line 858
    invoke-static {v7, v8, v9}, Lmozilla/components/support/utils/DownloadUtils;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 863
    .local v5, "fileName":Ljava/lang/String;
    new-instance v7, Landroid/app/DownloadManager$Request;

    invoke-virtual {p1}, Lorg/mozilla/focus/web/Download;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const-string v8, "User-Agent"

    .line 864
    invoke-virtual {p1}, Lorg/mozilla/focus/web/Download;->getUserAgent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v7

    const-string v8, "Cookie"

    .line 865
    invoke-virtual {v7, v8, v1}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v7

    const-string v8, "Referer"

    .line 866
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v7

    const/4 v8, 0x1

    .line 867
    invoke-virtual {v7, v8}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    move-result-object v7

    .line 868
    invoke-virtual {p1}, Lorg/mozilla/focus/web/Download;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v6

    .line 872
    .local v6, "request":Landroid/app/DownloadManager$Request;
    :try_start_0
    invoke-virtual {p1}, Lorg/mozilla/focus/web/Download;->getDestinationDirectory()Ljava/lang/String;

    move-result-object v7

    .line 871
    invoke-virtual {v6, v7, v5}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 878
    invoke-virtual {v6}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 881
    :try_start_1
    iget-object v7, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->manager:Landroid/app/DownloadManager;

    invoke-virtual {v7, v6}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    .line 882
    .local v2, "downloadReference":J
    iget-object v7, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->downloadBroadcastReceiver:Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;

    invoke-virtual {v7, v2, v3}, Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;->addQueuedDownload(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 883
    .end local v2    # "downloadReference":J
    :catch_0
    move-exception v4

    .line 884
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string v7, "browser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Download failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 873
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v4

    .line 874
    .local v4, "e":Ljava/lang/IllegalStateException;
    const-string v7, "browser"

    const-string v8, "Cannot create download directory"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private shareCurrentUrl()V
    .locals 6

    .prologue
    .line 933
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 935
    .local v3, "url":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 936
    .local v2, "shareIntent":Landroid/content/Intent;
    const-string v5, "text/plain"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 937
    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 940
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getWebView()Lorg/mozilla/focus/web/IWebView;

    move-result-object v4

    .line 941
    .local v4, "webView":Lorg/mozilla/focus/web/IWebView;
    if-eqz v4, :cond_0

    .line 942
    invoke-interface {v4}, Lorg/mozilla/focus/web/IWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 943
    .local v1, "contentUrl":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 944
    invoke-interface {v4}, Lorg/mozilla/focus/web/IWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 945
    .local v0, "contentTitle":Ljava/lang/String;
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 949
    .end local v0    # "contentTitle":Ljava/lang/String;
    .end local v1    # "contentUrl":Ljava/lang/String;
    :cond_0
    const v5, 0x7f0f0112

    invoke-virtual {p0, v5}, Lorg/mozilla/focus/fragment/BrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/mozilla/focus/fragment/BrowserFragment;->startActivity(Landroid/content/Intent;)V

    .line 951
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->shareEvent()V

    .line 952
    return-void
.end method

.method private showFindInPage()V
    .locals 3

    .prologue
    .line 1347
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1348
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageQuery:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 1350
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1351
    .local v0, "params":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageViewHeight:I

    iput v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    .line 1352
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1353
    return-void
.end method

.method private showSecurityPopUp()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1272
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v2}, Lorg/mozilla/focus/session/Session;->getLoading()Lorg/mozilla/focus/architecture/NonNullLiveData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/focus/architecture/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1292
    :cond_0
    :goto_0
    return-void

    .line 1275
    :cond_1
    sget-object v2, Lorg/mozilla/focus/popup/PopupUtils;->INSTANCE:Lorg/mozilla/focus/popup/PopupUtils;

    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v2, v3, v4}, Lorg/mozilla/focus/popup/PopupUtils;->createSecurityPopup(Landroid/content/Context;Lorg/mozilla/focus/session/Session;)Landroid/widget/PopupWindow;

    move-result-object v1

    .line 1276
    .local v1, "securityPopup":Landroid/widget/PopupWindow;
    if-eqz v1, :cond_0

    .line 1277
    new-instance v2, Lorg/mozilla/focus/fragment/BrowserFragment$15;

    invoke-direct {v2, p0}, Lorg/mozilla/focus/fragment/BrowserFragment$15;-><init>(Lorg/mozilla/focus/fragment/BrowserFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1283
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1284
    const v2, 0x1030002

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1285
    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1286
    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1287
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 1288
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 1289
    .local v0, "offsetY":I
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->urlBar:Landroid/view/View;

    const/16 v3, 0x31

    invoke-virtual {v1, v2, v3, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1290
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->popupTint:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private switchToImmersiveMode()V
    .locals 4

    .prologue
    .line 693
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 694
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 707
    :goto_0
    return-void

    .line 698
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 699
    .local v1, "window":Landroid/view/Window;
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 700
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x1706

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method private updateFindInPageResult(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 10
    .param p1, "activeMatchOrdinal"    # Ljava/lang/Integer;
    .param p2, "numberOfMatches"    # Ljava/lang/Integer;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const v7, 0x3ecccccd    # 0.4f

    const v6, 0x7f0600ad

    .line 1374
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1375
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 1400
    :goto_0
    return-void

    .line 1379
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    .line 1382
    iget-object v3, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageNext:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1383
    iget-object v3, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageNext:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1384
    iget-object v3, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPagePrevious:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1385
    iget-object v3, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPagePrevious:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1386
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1387
    const v3, 0x7f0f0079

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v8

    aput-object p2, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1388
    .local v2, "visibleString":Ljava/lang/String;
    const v3, 0x7f0f0079

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v8

    aput-object p2, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1390
    .local v0, "accessibleString":Ljava/lang/String;
    iget-object v3, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageResultTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1391
    iget-object v3, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageResultTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1393
    .end local v0    # "accessibleString":Ljava/lang/String;
    .end local v2    # "visibleString":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageNext:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060088

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1394
    iget-object v3, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageNext:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1395
    iget-object v3, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPagePrevious:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1396
    iget-object v3, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPagePrevious:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1397
    iget-object v3, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageResultTextView:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1398
    iget-object v3, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageResultTextView:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updateToolbarButtonStates(Z)V
    .locals 9
    .param p1, "isLoading"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    .line 1178
    iget-object v3, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->forwardButton:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->backButton:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->refreshButton:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->stopButton:Landroid/view/View;

    if-nez v3, :cond_1

    .line 1197
    :cond_0
    :goto_0
    return-void

    .line 1182
    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getWebView()Lorg/mozilla/focus/web/IWebView;

    move-result-object v2

    .line 1183
    .local v2, "webView":Lorg/mozilla/focus/web/IWebView;
    if-eqz v2, :cond_0

    .line 1187
    invoke-interface {v2}, Lorg/mozilla/focus/web/IWebView;->canGoForward()Z

    move-result v1

    .line 1188
    .local v1, "canGoForward":Z
    invoke-interface {v2}, Lorg/mozilla/focus/web/IWebView;->canGoBack()Z

    move-result v0

    .line 1190
    .local v0, "canGoBack":Z
    iget-object v3, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->forwardButton:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1191
    iget-object v8, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->forwardButton:Landroid/view/View;

    if-eqz v1, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v8, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1192
    iget-object v3, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->backButton:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1193
    iget-object v3, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->backButton:Landroid/view/View;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1195
    iget-object v4, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->refreshButton:Landroid/view/View;

    if-eqz p1, :cond_4

    move v3, v6

    :goto_3
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1196
    iget-object v3, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->stopButton:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_4
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v3, v5

    .line 1191
    goto :goto_1

    :cond_3
    move v4, v5

    .line 1193
    goto :goto_2

    :cond_4
    move v3, v7

    .line 1195
    goto :goto_3

    :cond_5
    move v7, v6

    .line 1196
    goto :goto_4
.end method


# virtual methods
.method public canGoBack()Z
    .locals 2

    .prologue
    .line 1214
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getWebView()Lorg/mozilla/focus/web/IWebView;

    move-result-object v0

    .line 1215
    .local v0, "webView":Lorg/mozilla/focus/web/IWebView;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/mozilla/focus/web/IWebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canGoForward()Z
    .locals 2

    .prologue
    .line 1209
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getWebView()Lorg/mozilla/focus/web/IWebView;

    move-result-object v0

    .line 1210
    .local v0, "webView":Lorg/mozilla/focus/web/IWebView;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/mozilla/focus/web/IWebView;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createCallback()Lorg/mozilla/focus/web/IWebView$Callback;
    .locals 3

    .prologue
    .line 550
    new-instance v0, Lorg/mozilla/focus/session/SessionCallbackProxy;

    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    new-instance v2, Lorg/mozilla/focus/fragment/BrowserFragment$13;

    invoke-direct {v2, p0}, Lorg/mozilla/focus/fragment/BrowserFragment$13;-><init>(Lorg/mozilla/focus/fragment/BrowserFragment;)V

    invoke-direct {v0, v1, v2}, Lorg/mozilla/focus/session/SessionCallbackProxy;-><init>(Lorg/mozilla/focus/session/Session;Lorg/mozilla/focus/web/IWebView$Callback;)V

    return-object v0
.end method

.method public erase()V
    .locals 2

    .prologue
    .line 924
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getWebView()Lorg/mozilla/focus/web/IWebView;

    move-result-object v0

    .line 925
    .local v0, "webView":Lorg/mozilla/focus/web/IWebView;
    if-eqz v0, :cond_0

    .line 926
    invoke-interface {v0}, Lorg/mozilla/focus/web/IWebView;->cleanup()V

    .line 929
    :cond_0
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/focus/session/SessionManager;->removeCurrentSession()V

    .line 930
    return-void
.end method

.method public getInitialUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v0}, Lorg/mozilla/focus/session/Session;->getUrl()Lorg/mozilla/focus/architecture/NonNullLiveData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/focus/architecture/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Lorg/mozilla/focus/session/Session;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->urlView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 1219
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getWebView()Lorg/mozilla/focus/web/IWebView;

    move-result-object v0

    .line 1220
    .local v0, "webView":Lorg/mozilla/focus/web/IWebView;
    if-eqz v0, :cond_0

    .line 1221
    invoke-interface {v0}, Lorg/mozilla/focus/web/IWebView;->goBack()V

    .line 1223
    :cond_0
    return-void
.end method

.method public inflateLayout(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 237
    if-eqz p3, :cond_0

    const-string v2, "download"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    const-string v2, "download"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/mozilla/focus/web/Download;

    iput-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->pendingDownload:Lorg/mozilla/focus/web/Download;

    .line 243
    :cond_0
    const v2, 0x7f0b003a

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 245
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f090131

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->videoContainer:Landroid/view/ViewGroup;

    .line 246
    const v2, 0x7f090037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->browserContainer:Landroid/view/View;

    .line 248
    const v2, 0x7f09012e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->urlBar:Landroid/view/View;

    .line 249
    const v2, 0x7f090107

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->statusBar:Landroid/view/View;

    .line 251
    const v2, 0x7f0900c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->popupTint:Landroid/widget/FrameLayout;

    .line 253
    const v2, 0x7f09005e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->urlView:Landroid/widget/TextView;

    .line 254
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->urlView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 256
    const v2, 0x7f0900c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/mozilla/focus/widget/AnimatedProgressBar;

    iput-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->progressView:Lorg/mozilla/focus/widget/AnimatedProgressBar;

    .line 258
    const v2, 0x7f09010c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 259
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x7f060031

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 260
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v2, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 262
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v3, Lorg/mozilla/focus/fragment/BrowserFragment$3;

    invoke-direct {v3, p0}, Lorg/mozilla/focus/fragment/BrowserFragment$3;-><init>(Lorg/mozilla/focus/fragment/BrowserFragment;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 271
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v2}, Lorg/mozilla/focus/session/Session;->getUrl()Lorg/mozilla/focus/architecture/NonNullLiveData;

    move-result-object v2

    new-instance v3, Lorg/mozilla/focus/fragment/BrowserFragment$4;

    invoke-direct {v3, p0}, Lorg/mozilla/focus/fragment/BrowserFragment$4;-><init>(Lorg/mozilla/focus/fragment/BrowserFragment;)V

    invoke-virtual {v2, p0, v3}, Lorg/mozilla/focus/architecture/NonNullLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 278
    const v2, 0x7f090078

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageView:Landroid/view/View;

    .line 280
    const v2, 0x7f0900cb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageQuery:Landroid/widget/TextView;

    .line 281
    const v2, 0x7f0900d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageResultTextView:Landroid/widget/TextView;

    .line 283
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageQuery:Landroid/widget/TextView;

    new-instance v3, Lorg/mozilla/focus/fragment/BrowserFragment$5;

    invoke-direct {v3, p0}, Lorg/mozilla/focus/fragment/BrowserFragment$5;-><init>(Lorg/mozilla/focus/fragment/BrowserFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 302
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageQuery:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageQuery:Landroid/widget/TextView;

    new-instance v3, Lorg/mozilla/focus/fragment/BrowserFragment$6;

    invoke-direct {v3, p0}, Lorg/mozilla/focus/fragment/BrowserFragment$6;-><init>(Lorg/mozilla/focus/fragment/BrowserFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 314
    const v2, 0x7f0900c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPagePrevious:Landroid/widget/ImageButton;

    .line 315
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPagePrevious:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    const v2, 0x7f0900b5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageNext:Landroid/widget/ImageButton;

    .line 318
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageNext:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    const v2, 0x7f090046

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->closeFindInPage:Landroid/widget/ImageButton;

    .line 321
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->closeFindInPage:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v2}, Lorg/mozilla/focus/session/Session;->isBlockingEnabled()Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/mozilla/focus/fragment/BrowserFragment;->setBlockingEnabled(Z)V

    .line 324
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v2}, Lorg/mozilla/focus/session/Session;->shouldRequestDesktopSite()Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/mozilla/focus/fragment/BrowserFragment;->setShouldRequestDesktop(Z)V

    .line 326
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v2}, Lorg/mozilla/focus/session/Session;->getLoading()Lorg/mozilla/focus/architecture/NonNullLiveData;

    move-result-object v2

    new-instance v3, Lorg/mozilla/focus/observer/AverageLoadTimeObserver;

    iget-object v4, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    invoke-direct {v3, v4}, Lorg/mozilla/focus/observer/AverageLoadTimeObserver;-><init>(Lorg/mozilla/focus/session/Session;)V

    invoke-virtual {v2, p0, v3}, Lorg/mozilla/focus/architecture/NonNullLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 328
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v2}, Lorg/mozilla/focus/session/Session;->getLoading()Lorg/mozilla/focus/architecture/NonNullLiveData;

    move-result-object v2

    new-instance v3, Lorg/mozilla/focus/fragment/BrowserFragment$7;

    invoke-direct {v3, p0}, Lorg/mozilla/focus/fragment/BrowserFragment$7;-><init>(Lorg/mozilla/focus/fragment/BrowserFragment;)V

    invoke-virtual {v2, p0, v3}, Lorg/mozilla/focus/architecture/NonNullLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 359
    const v2, 0x7f0900cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->refreshButton:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 360
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->refreshButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    :cond_1
    const v2, 0x7f090109

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->stopButton:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 364
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->stopButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    :cond_2
    const v2, 0x7f09007c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->forwardButton:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 368
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->forwardButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    :cond_3
    const v2, 0x7f090027

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->backButton:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 372
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->backButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    :cond_4
    const v2, 0x7f09002d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 376
    .local v0, "blockIcon":Landroid/widget/ImageView;
    const v2, 0x7f08009b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 378
    const v2, 0x7f09002c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->blockView:Landroid/widget/FrameLayout;

    .line 380
    const v2, 0x7f0900ed

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->securityView:Landroid/widget/ImageView;

    .line 381
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v2}, Lorg/mozilla/focus/session/Session;->getSecure()Lorg/mozilla/focus/architecture/NonNullLiveData;

    move-result-object v2

    new-instance v3, Lorg/mozilla/focus/fragment/BrowserFragment$8;

    invoke-direct {v3, p0}, Lorg/mozilla/focus/fragment/BrowserFragment$8;-><init>(Lorg/mozilla/focus/fragment/BrowserFragment;)V

    invoke-virtual {v2, p0, v3}, Lorg/mozilla/focus/architecture/NonNullLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 401
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->securityView:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v2}, Lorg/mozilla/focus/session/Session;->getProgress()Lorg/mozilla/focus/architecture/NonNullLiveData;

    move-result-object v2

    new-instance v3, Lorg/mozilla/focus/fragment/BrowserFragment$9;

    invoke-direct {v3, p0}, Lorg/mozilla/focus/fragment/BrowserFragment$9;-><init>(Lorg/mozilla/focus/fragment/BrowserFragment;)V

    invoke-virtual {v2, p0, v3}, Lorg/mozilla/focus/architecture/NonNullLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 410
    const v2, 0x7f0900a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->menuView:Landroid/widget/ImageButton;

    .line 411
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->menuView:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v2}, Lorg/mozilla/focus/session/Session;->isCustomTab()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 414
    invoke-direct {p0, v1}, Lorg/mozilla/focus/fragment/BrowserFragment;->initialiseCustomTabUi(Landroid/view/View;)V

    .line 421
    :goto_0
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageView:Landroid/view/View;

    invoke-virtual {v2, v5, v5}, Landroid/view/View;->measure(II)V

    .line 422
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageViewHeight:I

    .line 424
    return-object v1

    .line 416
    :cond_5
    invoke-direct {p0, v1}, Lorg/mozilla/focus/fragment/BrowserFragment;->initialiseNormalBrowserUi(Landroid/view/View;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1226
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getWebView()Lorg/mozilla/focus/web/IWebView;

    move-result-object v0

    .line 1227
    .local v0, "webView":Lorg/mozilla/focus/web/IWebView;
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1228
    invoke-interface {v0, p1}, Lorg/mozilla/focus/web/IWebView;->loadUrl(Ljava/lang/String;)V

    .line 1230
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    .line 889
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 890
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->hideFindInPage()V

    .line 920
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 891
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 893
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->goBack()V

    goto :goto_0

    .line 895
    :cond_1
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v0}, Lorg/mozilla/focus/session/Session;->getSource()Lorg/mozilla/focus/session/Source;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/session/Source;->VIEW:Lorg/mozilla/focus/session/Source;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v0}, Lorg/mozilla/focus/session/Session;->getSource()Lorg/mozilla/focus/session/Source;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/session/Source;->CUSTOM_TAB:Lorg/mozilla/focus/session/Source;

    if-ne v0, v1, :cond_4

    .line 896
    :cond_2
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->eraseBackToAppEvent()V

    .line 900
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->erase()V

    .line 904
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/focus/session/SessionManager;->hasSession()Z

    move-result v0

    if-nez v0, :cond_3

    .line 905
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finishAndRemoveTask()V

    .line 911
    :goto_1
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0076

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 907
    :cond_3
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_1

    .line 914
    :cond_4
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->eraseBackToHomeEvent()V

    .line 916
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->erase()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 956
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    .line 1173
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Unhandled menu item in BrowserFragment"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 958
    :sswitch_0
    new-instance v7, Lorg/mozilla/focus/menu/browser/BrowserMenu;

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v14}, Lorg/mozilla/focus/session/Session;->getCustomTabConfig()Lorg/mozilla/focus/customtabs/CustomTabConfig;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v7, v13, v0, v14}, Lorg/mozilla/focus/menu/browser/BrowserMenu;-><init>(Landroid/content/Context;Lorg/mozilla/focus/fragment/BrowserFragment;Lorg/mozilla/focus/customtabs/CustomTabConfig;)V

    .line 959
    .local v7, "menu":Lorg/mozilla/focus/menu/browser/BrowserMenu;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mozilla/focus/fragment/BrowserFragment;->menuView:Landroid/widget/ImageButton;

    invoke-virtual {v7, v13}, Lorg/mozilla/focus/menu/browser/BrowserMenu;->show(Landroid/view/View;)V

    .line 961
    new-instance v13, Ljava/lang/ref/WeakReference;

    invoke-direct {v13, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/mozilla/focus/fragment/BrowserFragment;->menuWeakReference:Ljava/lang/ref/WeakReference;

    .line 1175
    .end local v7    # "menu":Lorg/mozilla/focus/menu/browser/BrowserMenu;
    :cond_0
    :goto_0
    return-void

    .line 965
    :sswitch_1
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v14}, Lorg/mozilla/focus/session/Session;->getUUID()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/mozilla/focus/session/SessionManager;->hasSessionWithUUID(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 966
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mozilla/focus/fragment/BrowserFragment;->urlView:Landroid/widget/TextView;

    .line 967
    invoke-static {v13, v14}, Lorg/mozilla/focus/fragment/UrlInputFragment;->createWithSession(Lorg/mozilla/focus/session/Session;Landroid/view/View;)Lorg/mozilla/focus/fragment/UrlInputFragment;

    move-result-object v11

    .line 969
    .local v11, "urlFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v13

    .line 970
    invoke-virtual {v13}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v13

    const v14, 0x7f090049

    const-string v15, "url_input"

    .line 971
    invoke-virtual {v13, v14, v11, v15}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v13

    .line 972
    invoke-virtual {v13}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 977
    .end local v11    # "urlFragment":Landroid/support/v4/app/Fragment;
    :sswitch_2
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->eraseEvent()V

    .line 979
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->erase()V

    goto :goto_0

    .line 984
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v13

    .line 985
    invoke-virtual {v13}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v13

    const v14, 0x7f090049

    new-instance v15, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;

    invoke-direct {v15}, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;-><init>()V

    const-string v16, "tab_sheet"

    .line 986
    invoke-virtual/range {v13 .. v16}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v13

    .line 987
    invoke-virtual {v13}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 989
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->openTabsTrayEvent()V

    goto :goto_0

    .line 993
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->goBack()V

    goto :goto_0

    .line 998
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getWebView()Lorg/mozilla/focus/web/IWebView;

    move-result-object v12

    .line 999
    .local v12, "webView":Lorg/mozilla/focus/web/IWebView;
    if-eqz v12, :cond_0

    .line 1000
    invoke-interface {v12}, Lorg/mozilla/focus/web/IWebView;->goForward()V

    goto :goto_0

    .line 1006
    .end local v12    # "webView":Lorg/mozilla/focus/web/IWebView;
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->reload()V

    .line 1008
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->menuReloadEvent()V

    goto :goto_0

    .line 1013
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getWebView()Lorg/mozilla/focus/web/IWebView;

    move-result-object v12

    .line 1014
    .restart local v12    # "webView":Lorg/mozilla/focus/web/IWebView;
    if-eqz v12, :cond_0

    .line 1015
    invoke-interface {v12}, Lorg/mozilla/focus/web/IWebView;->stopLoading()V

    goto :goto_0

    .line 1021
    .end local v12    # "webView":Lorg/mozilla/focus/web/IWebView;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mozilla/focus/fragment/BrowserFragment;->sessionManager:Lorg/mozilla/focus/session/SessionManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v13, v14}, Lorg/mozilla/focus/session/SessionManager;->moveCustomTabToRegularSessions(Lorg/mozilla/focus/session/Session;)V

    .line 1023
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getWebView()Lorg/mozilla/focus/web/IWebView;

    move-result-object v12

    .line 1024
    .restart local v12    # "webView":Lorg/mozilla/focus/web/IWebView;
    if-eqz v12, :cond_1

    .line 1025
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    invoke-interface {v12, v13}, Lorg/mozilla/focus/web/IWebView;->saveWebViewState(Lorg/mozilla/focus/session/Session;)V

    .line 1028
    :cond_1
    new-instance v6, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    const-class v14, Lorg/mozilla/focus/activity/MainActivity;

    invoke-direct {v6, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1029
    .local v6, "intent":Landroid/content/Intent;
    const-string v13, "android.intent.action.MAIN"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1030
    const/high16 v13, 0x10000000

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1031
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/mozilla/focus/fragment/BrowserFragment;->startActivity(Landroid/content/Intent;)V

    .line 1033
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->openFullBrowser()V

    .line 1035
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1036
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 1037
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1044
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v12    # "webView":Lorg/mozilla/focus/web/IWebView;
    :sswitch_9
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->shareCurrentUrl()V

    goto/16 :goto_0

    .line 1049
    :sswitch_a
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    check-cast v13, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;

    invoke-virtual {v13}, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;->openPreferences()V

    goto/16 :goto_0

    .line 1053
    :sswitch_b
    new-instance v3, Lorg/mozilla/focus/utils/Browsers;

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getUrl()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v13, v14}, Lorg/mozilla/focus/utils/Browsers;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1055
    .local v3, "browsers":Lorg/mozilla/focus/utils/Browsers;
    invoke-virtual {v3}, Lorg/mozilla/focus/utils/Browsers;->getDefaultBrowser()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 1057
    .local v4, "defaultBrowser":Landroid/content/pm/ActivityInfo;
    if-nez v4, :cond_2

    .line 1060
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "<Open with $Default> was shown when no default browser is set"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1063
    :cond_2
    new-instance v6, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getUrl()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v6, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1064
    .restart local v6    # "intent":Landroid/content/Intent;
    iget-object v13, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1065
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/mozilla/focus/fragment/BrowserFragment;->startActivity(Landroid/content/Intent;)V

    .line 1067
    invoke-virtual {v3}, Lorg/mozilla/focus/utils/Browsers;->isFirefoxDefaultBrowser()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1068
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->openFirefoxEvent()V

    goto/16 :goto_0

    .line 1070
    :cond_3
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->openDefaultAppEvent()V

    goto/16 :goto_0

    .line 1076
    .end local v3    # "browsers":Lorg/mozilla/focus/utils/Browsers;
    .end local v4    # "defaultBrowser":Landroid/content/pm/ActivityInfo;
    .end local v6    # "intent":Landroid/content/Intent;
    :sswitch_c
    new-instance v3, Lorg/mozilla/focus/utils/Browsers;

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getUrl()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v13, v14}, Lorg/mozilla/focus/utils/Browsers;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1078
    .restart local v3    # "browsers":Lorg/mozilla/focus/utils/Browsers;
    invoke-virtual {v3}, Lorg/mozilla/focus/utils/Browsers;->getInstalledBrowsers()[Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 1079
    .local v2, "apps":[Landroid/content/pm/ActivityInfo;
    invoke-virtual {v3}, Lorg/mozilla/focus/utils/Browsers;->hasFirefoxBrandedBrowserInstalled()Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v8, 0x0

    .line 1085
    .local v8, "store":Landroid/content/pm/ActivityInfo;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getUrl()Ljava/lang/String;

    move-result-object v13

    .line 1083
    invoke-static {v2, v13, v8}, Lorg/mozilla/focus/open/OpenWithFragment;->newInstance([Landroid/content/pm/ActivityInfo;Ljava/lang/String;Landroid/content/pm/ActivityInfo;)Lorg/mozilla/focus/open/OpenWithFragment;

    move-result-object v5

    .line 1087
    .local v5, "fragment":Lorg/mozilla/focus/open/OpenWithFragment;
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v13

    const-string v14, "open_with"

    invoke-virtual {v5, v13, v14}, Lorg/mozilla/focus/open/OpenWithFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1089
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->openSelectionEvent()V

    goto/16 :goto_0

    .line 1081
    .end local v5    # "fragment":Lorg/mozilla/focus/open/OpenWithFragment;
    .end local v8    # "store":Landroid/content/pm/ActivityInfo;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lorg/mozilla/focus/activity/InstallFirefoxActivity;->resolveAppStore(Landroid/content/Context;)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    goto :goto_1

    .line 1094
    .end local v2    # "apps":[Landroid/content/pm/ActivityInfo;
    .end local v3    # "browsers":Lorg/mozilla/focus/utils/Browsers;
    :sswitch_d
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->erase()V

    .line 1095
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 1097
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->closeCustomTabEvent()V

    goto/16 :goto_0

    .line 1102
    :sswitch_e
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v13

    sget-object v14, Lorg/mozilla/focus/session/Source;->MENU:Lorg/mozilla/focus/session/Source;

    const-string v15, "https://support.mozilla.org/kb/what-firefox-focus-android"

    invoke-virtual {v13, v14, v15}, Lorg/mozilla/focus/session/SessionManager;->createSession(Lorg/mozilla/focus/session/Source;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1106
    :sswitch_f
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v13

    sget-object v14, Lorg/mozilla/focus/session/Source;->MENU:Lorg/mozilla/focus/session/Source;

    .line 1107
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getContext()Landroid/content/Context;

    move-result-object v15

    sget-object v16, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;->TRACKERS:Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    invoke-static/range {v15 .. v16}, Lorg/mozilla/focus/utils/SupportUtils;->getSumoURLForTopic(Landroid/content/Context;Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;)Ljava/lang/String;

    move-result-object v15

    .line 1106
    invoke-virtual {v13, v14, v15}, Lorg/mozilla/focus/session/SessionManager;->createSession(Lorg/mozilla/focus/session/Source;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1111
    :sswitch_10
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getWebView()Lorg/mozilla/focus/web/IWebView;

    move-result-object v12

    .line 1112
    .restart local v12    # "webView":Lorg/mozilla/focus/web/IWebView;
    if-eqz v12, :cond_0

    .line 1116
    invoke-interface {v12}, Lorg/mozilla/focus/web/IWebView;->getUrl()Ljava/lang/String;

    move-result-object v10

    .line 1117
    .local v10, "url":Ljava/lang/String;
    invoke-interface {v12}, Lorg/mozilla/focus/web/IWebView;->getTitle()Ljava/lang/String;

    move-result-object v9

    .line 1118
    .local v9, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v9}, Lorg/mozilla/focus/fragment/BrowserFragment;->showAddToHomescreenDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1123
    .end local v9    # "title":Ljava/lang/String;
    .end local v10    # "url":Ljava/lang/String;
    .end local v12    # "webView":Lorg/mozilla/focus/web/IWebView;
    :sswitch_11
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->showSecurityPopUp()V

    goto/16 :goto_0

    .line 1127
    :sswitch_12
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v13

    sget-object v14, Lorg/mozilla/focus/session/Source;->MENU:Lorg/mozilla/focus/session/Source;

    const-string v15, "https://webcompat.com/issues/new?url="

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getUrl()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/mozilla/focus/session/SessionManager;->createSession(Lorg/mozilla/focus/session/Source;Ljava/lang/String;)V

    .line 1128
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->reportSiteIssueEvent()V

    goto/16 :goto_0

    .line 1132
    :sswitch_13
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->showFindInPage()V

    .line 1133
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->findInPageMenuEvent()V

    goto/16 :goto_0

    .line 1137
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageQuery:Landroid/widget/TextView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto/16 :goto_0

    .line 1141
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageQuery:Landroid/widget/TextView;

    invoke-static {v13}, Lorg/mozilla/focus/utils/ViewUtils;->hideKeyboard(Landroid/view/View;)V

    .line 1142
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageQuery:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 1144
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getWebView()Lorg/mozilla/focus/web/IWebView;

    move-result-object v12

    .line 1145
    .restart local v12    # "webView":Lorg/mozilla/focus/web/IWebView;
    if-eqz v12, :cond_0

    .line 1149
    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lorg/mozilla/focus/web/IWebView;->findNext(Z)V

    goto/16 :goto_0

    .line 1154
    .end local v12    # "webView":Lorg/mozilla/focus/web/IWebView;
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageQuery:Landroid/widget/TextView;

    invoke-static {v13}, Lorg/mozilla/focus/utils/ViewUtils;->hideKeyboard(Landroid/view/View;)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageQuery:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 1157
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getWebView()Lorg/mozilla/focus/web/IWebView;

    move-result-object v12

    .line 1158
    .restart local v12    # "webView":Lorg/mozilla/focus/web/IWebView;
    if-eqz v12, :cond_0

    .line 1162
    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lorg/mozilla/focus/web/IWebView;->findNext(Z)V

    goto/16 :goto_0

    .line 1167
    .end local v12    # "webView":Lorg/mozilla/focus/web/IWebView;
    :sswitch_17
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->hideFindInPage()V

    goto/16 :goto_0

    .line 956
    :sswitch_data_0
    .sparse-switch
        0x7f09001b -> :sswitch_10
        0x7f090027 -> :sswitch_4
        0x7f090046 -> :sswitch_17
        0x7f090051 -> :sswitch_d
        0x7f09005e -> :sswitch_1
        0x7f090071 -> :sswitch_2
        0x7f090078 -> :sswitch_13
        0x7f09007c -> :sswitch_5
        0x7f090080 -> :sswitch_e
        0x7f090081 -> :sswitch_f
        0x7f0900a2 -> :sswitch_0
        0x7f0900b5 -> :sswitch_15
        0x7f0900bb -> :sswitch_b
        0x7f0900bc -> :sswitch_8
        0x7f0900bd -> :sswitch_c
        0x7f0900c7 -> :sswitch_16
        0x7f0900cb -> :sswitch_14
        0x7f0900cf -> :sswitch_6
        0x7f0900d1 -> :sswitch_12
        0x7f0900ed -> :sswitch_11
        0x7f0900f0 -> :sswitch_a
        0x7f0900f1 -> :sswitch_9
        0x7f090109 -> :sswitch_7
        0x7f09010f -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 178
    invoke-super {p0, p1}, Lorg/mozilla/focus/fragment/WebFragment;->onCreate(Landroid/os/Bundle;)V

    .line 180
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sessionUUID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "sessionUUID":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 182
    new-instance v1, Ljava/lang/IllegalAccessError;

    const-string v2, "No session exists"

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_0
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->sessionManager:Lorg/mozilla/focus/session/SessionManager;

    invoke-virtual {v1, v0}, Lorg/mozilla/focus/session/SessionManager;->hasSessionWithUUID(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->sessionManager:Lorg/mozilla/focus/session/SessionManager;

    .line 186
    invoke-virtual {v1, v0}, Lorg/mozilla/focus/session/SessionManager;->getSessionByUUID(Ljava/lang/String;)Lorg/mozilla/focus/session/Session;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    .line 189
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v1}, Lorg/mozilla/focus/session/Session;->getBlockedTrackers()Lorg/mozilla/focus/architecture/NonNullLiveData;

    move-result-object v1

    new-instance v2, Lorg/mozilla/focus/fragment/BrowserFragment$1;

    invoke-direct {v2, p0}, Lorg/mozilla/focus/fragment/BrowserFragment$1;-><init>(Lorg/mozilla/focus/fragment/BrowserFragment;)V

    invoke-virtual {v1, p0, v2}, Lorg/mozilla/focus/architecture/NonNullLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 205
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageCoordinator:Lorg/mozilla/focus/findinpage/FindInPageCoordinator;

    invoke-virtual {v1}, Lorg/mozilla/focus/findinpage/FindInPageCoordinator;->getMatches()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v2, Lorg/mozilla/focus/fragment/BrowserFragment$2;

    invoke-direct {v2, p0}, Lorg/mozilla/focus/fragment/BrowserFragment$2;-><init>(Lorg/mozilla/focus/fragment/BrowserFragment;)V

    invoke-virtual {v1, p0, v2}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 211
    return-void

    .line 186
    :cond_1
    new-instance v1, Lorg/mozilla/focus/session/NullSession;

    invoke-direct {v1}, Lorg/mozilla/focus/session/NullSession;-><init>()V

    goto :goto_0
.end method

.method public onCreateViewCalled()V
    .locals 4

    .prologue
    .line 811
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "download"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    iput-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->manager:Landroid/app/DownloadManager;

    .line 812
    new-instance v1, Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;

    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->browserContainer:Landroid/view/View;

    iget-object v3, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->manager:Landroid/app/DownloadManager;

    invoke-direct {v1, v2, v3}, Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;-><init>(Landroid/view/View;Landroid/app/DownloadManager;)V

    iput-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->downloadBroadcastReceiver:Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;

    .line 814
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getWebView()Lorg/mozilla/focus/web/IWebView;

    move-result-object v0

    .line 815
    .local v0, "webView":Lorg/mozilla/focus/web/IWebView;
    if-eqz v0, :cond_0

    .line 816
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->findInPageCoordinator:Lorg/mozilla/focus/findinpage/FindInPageCoordinator;

    invoke-interface {v0, v1}, Lorg/mozilla/focus/web/IWebView;->setFindListener(Lorg/mozilla/focus/web/IFindListener;)V

    .line 818
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 732
    invoke-super {p0}, Lorg/mozilla/focus/fragment/WebFragment;->onDestroy()V

    .line 736
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->exitImmersiveModeIfNeeded()V

    .line 737
    return-void
.end method

.method public onFinishDownloadDialog(Lorg/mozilla/focus/web/Download;Z)V
    .locals 0
    .param p1, "download"    # Lorg/mozilla/focus/web/Download;
    .param p2, "shouldDownload"    # Z

    .prologue
    .line 804
    if-eqz p2, :cond_0

    .line 805
    invoke-direct {p0, p1}, Lorg/mozilla/focus/fragment/BrowserFragment;->queueDownload(Lorg/mozilla/focus/web/Download;)V

    .line 807
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 1306
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f09005e

    if-ne v4, v5, :cond_0

    .line 1307
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 1308
    .local v2, "context":Landroid/content/Context;
    if-nez v2, :cond_1

    .line 1343
    .end local v2    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return v6

    .line 1312
    .restart local v2    # "context":Landroid/content/Context;
    :cond_1
    iget-object v4, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v4}, Lorg/mozilla/focus/session/Session;->isCustomTab()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1313
    const-string v4, "clipboard"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 1314
    .local v1, "clipBoard":Landroid/content/ClipboardManager;
    if-eqz v1, :cond_2

    .line 1315
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1316
    .local v3, "uri":Landroid/net/Uri;
    const-string v4, "Uri"

    invoke-static {v4, v3}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1317
    const v4, 0x7f0f0052

    invoke-virtual {p0, v4}, Lorg/mozilla/focus/fragment/BrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1321
    .end local v1    # "clipBoard":Landroid/content/ClipboardManager;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    new-instance v0, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup;

    iget-object v4, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->urlView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1324
    .local v0, "autocompletePopup":Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup;
    new-instance v4, Lorg/mozilla/focus/fragment/BrowserFragment$16;

    invoke-direct {v4, p0}, Lorg/mozilla/focus/fragment/BrowserFragment$16;-><init>(Lorg/mozilla/focus/fragment/BrowserFragment;)V

    invoke-virtual {v0, v4}, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup;->setOnUrlAdded(Lkotlin/jvm/functions/Function0;)V

    .line 1339
    iget-object v4, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->urlView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup;->show(Landroid/view/View;)V

    .line 1340
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->autocompletePopupWeakReference:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 224
    invoke-super {p0}, Lorg/mozilla/focus/fragment/WebFragment;->onPause()V

    .line 225
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->downloadBroadcastReceiver:Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 227
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->menuWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/menu/browser/BrowserMenu;

    .line 228
    .local v0, "menu":Lorg/mozilla/focus/menu/browser/BrowserMenu;
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Lorg/mozilla/focus/menu/browser/BrowserMenu;->dismiss()V

    .line 231
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->menuWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 233
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 741
    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    array-length v0, p3

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget v0, p3, v0

    if-eqz v0, :cond_0

    .line 747
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->pendingDownload:Lorg/mozilla/focus/web/Download;

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 822
    invoke-super {p0}, Lorg/mozilla/focus/fragment/WebFragment;->onResume()V

    .line 824
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 825
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->downloadBroadcastReceiver:Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 827
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->pendingDownload:Lorg/mozilla/focus/web/Download;

    if-eqz v1, :cond_0

    .line 828
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 832
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->pendingDownload:Lorg/mozilla/focus/web/Download;

    invoke-virtual {p0, v1}, Lorg/mozilla/focus/fragment/BrowserFragment;->showDownloadPromptDialog(Lorg/mozilla/focus/web/Download;)V

    .line 833
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->pendingDownload:Lorg/mozilla/focus/web/Download;

    .line 836
    :cond_0
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->statusBar:Landroid/view/View;

    new-instance v2, Lorg/mozilla/focus/fragment/BrowserFragment$14;

    invoke-direct {v2, p0}, Lorg/mozilla/focus/fragment/BrowserFragment$14;-><init>(Lorg/mozilla/focus/fragment/BrowserFragment;)V

    invoke-static {v1, v2}, Lorg/mozilla/focus/utils/StatusBarUtils;->getStatusBarHeight(Landroid/view/View;Lorg/mozilla/focus/utils/StatusBarUtils$StatusBarHeightListener;)V

    .line 842
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 539
    invoke-super {p0, p1}, Lorg/mozilla/focus/fragment/WebFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 541
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->pendingDownload:Lorg/mozilla/focus/web/Download;

    if-eqz v0, :cond_0

    .line 544
    const-string v0, "download"

    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->pendingDownload:Lorg/mozilla/focus/web/Download;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 546
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 1233
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getWebView()Lorg/mozilla/focus/web/IWebView;

    move-result-object v0

    .line 1234
    .local v0, "webView":Lorg/mozilla/focus/web/IWebView;
    if-eqz v0, :cond_0

    .line 1235
    invoke-interface {v0}, Lorg/mozilla/focus/web/IWebView;->reload()V

    .line 1237
    :cond_0
    return-void
.end method

.method public setBlockingEnabled(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    const v3, 0x7f08005a

    const v2, 0x7f080059

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1240
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getWebView()Lorg/mozilla/focus/web/IWebView;

    move-result-object v0

    .line 1241
    .local v0, "webView":Lorg/mozilla/focus/web/IWebView;
    if-eqz v0, :cond_0

    .line 1242
    invoke-interface {v0, p1}, Lorg/mozilla/focus/web/IWebView;->setBlockingEnabled(Z)V

    .line 1245
    :cond_0
    iget-object v4, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->statusBar:Landroid/view/View;

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1247
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v1}, Lorg/mozilla/focus/session/Session;->isCustomTab()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1250
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->urlBar:Landroid/view/View;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1252
    new-instance v2, Lorg/mozilla/focus/animation/TransitionDrawableGroup;

    const/4 v1, 0x2

    new-array v3, v1, [Landroid/graphics/drawable/TransitionDrawable;

    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->urlBar:Landroid/view/View;

    .line 1253
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    aput-object v1, v3, v5

    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->statusBar:Landroid/view/View;

    .line 1254
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    aput-object v1, v3, v6

    invoke-direct {v2, v3}, Lorg/mozilla/focus/animation/TransitionDrawableGroup;-><init>([Landroid/graphics/drawable/TransitionDrawable;)V

    iput-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->backgroundTransitionGroup:Lorg/mozilla/focus/animation/TransitionDrawableGroup;

    .line 1261
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 1245
    goto :goto_0

    :cond_2
    move v2, v3

    .line 1250
    goto :goto_1

    .line 1257
    :cond_3
    new-instance v2, Lorg/mozilla/focus/animation/TransitionDrawableGroup;

    new-array v3, v6, [Landroid/graphics/drawable/TransitionDrawable;

    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->statusBar:Landroid/view/View;

    .line 1258
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    aput-object v1, v3, v5

    invoke-direct {v2, v3}, Lorg/mozilla/focus/animation/TransitionDrawableGroup;-><init>([Landroid/graphics/drawable/TransitionDrawable;)V

    iput-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->backgroundTransitionGroup:Lorg/mozilla/focus/animation/TransitionDrawableGroup;

    goto :goto_2
.end method

.method public setShouldRequestDesktop(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1264
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getWebView()Lorg/mozilla/focus/web/IWebView;

    move-result-object v0

    .line 1265
    .local v0, "webView":Lorg/mozilla/focus/web/IWebView;
    if-eqz v0, :cond_0

    .line 1266
    invoke-interface {v0, p1}, Lorg/mozilla/focus/web/IWebView;->setRequestDesktop(Z)V

    .line 1268
    :cond_0
    return-void
.end method

.method showAddToHomescreenDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 781
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 783
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    const-string v2, "add-to-homescreen-prompt-dialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 800
    :goto_0
    return-void

    .line 789
    :cond_0
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v2}, Lorg/mozilla/focus/session/Session;->isBlockingEnabled()Z

    move-result v2

    iget-object v3, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v3}, Lorg/mozilla/focus/session/Session;->shouldRequestDesktopSite()Z

    move-result v3

    invoke-static {p1, p2, v2, v3}, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;ZZ)Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;

    move-result-object v0

    .line 790
    .local v0, "addToHomescreenDialogFragment":Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;
    const/16 v2, 0x12c

    invoke-virtual {v0, p0, v2}, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 793
    :try_start_0
    const-string v2, "add-to-homescreen-prompt-dialog"

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 794
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method showDownloadPromptDialog(Lorg/mozilla/focus/web/Download;)V
    .locals 3
    .param p1, "download"    # Lorg/mozilla/focus/web/Download;

    .prologue
    .line 756
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 758
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    const-string v2, "should-download-prompt-dialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 778
    :goto_0
    return-void

    .line 764
    :cond_0
    invoke-static {p1}, Lorg/mozilla/focus/fragment/DownloadDialogFragment;->newInstance(Lorg/mozilla/focus/web/Download;)Lorg/mozilla/focus/fragment/DownloadDialogFragment;

    move-result-object v0

    .line 765
    .local v0, "downloadDialogFragment":Landroid/support/v4/app/DialogFragment;
    const/16 v2, 0x12c

    invoke-virtual {v0, p0, v2}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 768
    :try_start_0
    const-string v2, "should-download-prompt-dialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 769
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public updateBlockingBadging(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1296
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment;->blockView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1297
    return-void

    .line 1296
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
