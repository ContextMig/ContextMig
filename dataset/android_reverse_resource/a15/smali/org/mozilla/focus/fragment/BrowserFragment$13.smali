.class Lorg/mozilla/focus/fragment/BrowserFragment$13;
.super Ljava/lang/Object;
.source "BrowserFragment.java"

# interfaces
.implements Lorg/mozilla/focus/web/IWebView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/fragment/BrowserFragment;->createCallback()Lorg/mozilla/focus/web/IWebView$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/fragment/BrowserFragment;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/fragment/BrowserFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 550
    iput-object p1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public countBlockedTracker()V
    .locals 0

    .prologue
    .line 570
    return-void
.end method

.method public onBlockingStateChanged(Z)V
    .locals 0
    .param p1, "isBlockingEnabled"    # Z

    .prologue
    .line 576
    return-void
.end method

.method public onDownloadStart(Lorg/mozilla/focus/web/Download;)V
    .locals 5
    .param p1, "download"    # Lorg/mozilla/focus/web/Download;

    .prologue
    .line 655
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-virtual {v1}, Lorg/mozilla/focus/fragment/BrowserFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 657
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v1, p1}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$1800(Lorg/mozilla/focus/fragment/BrowserFragment;Lorg/mozilla/focus/web/Download;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 658
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-virtual {v1, p1}, Lorg/mozilla/focus/fragment/BrowserFragment;->showDownloadPromptDialog(Lorg/mozilla/focus/web/Download;)V

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v1, p1}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$1900(Lorg/mozilla/focus/fragment/BrowserFragment;Lorg/mozilla/focus/web/Download;)V

    goto :goto_0

    .line 666
    :cond_2
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-virtual {v1}, Lorg/mozilla/focus/fragment/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 667
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 671
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v1, p1}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$2002(Lorg/mozilla/focus/fragment/BrowserFragment;Lorg/mozilla/focus/web/Download;)Lorg/mozilla/focus/web/Download;

    .line 673
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    invoke-virtual {v1, v2, v3}, Lorg/mozilla/focus/fragment/BrowserFragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onEnterFullScreen(Lorg/mozilla/focus/web/IWebView$FullscreenCallback;Landroid/view/View;)V
    .locals 4
    .param p1, "callback"    # Lorg/mozilla/focus/web/IWebView$FullscreenCallback;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, -0x1

    .line 609
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v1, p1}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$1202(Lorg/mozilla/focus/fragment/BrowserFragment;Lorg/mozilla/focus/web/IWebView$FullscreenCallback;)Lorg/mozilla/focus/web/IWebView$FullscreenCallback;

    .line 612
    if-eqz p2, :cond_0

    .line 614
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v1}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$1300(Lorg/mozilla/focus/fragment/BrowserFragment;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 617
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 619
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v1}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$1400(Lorg/mozilla/focus/fragment/BrowserFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v1}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$1400(Lorg/mozilla/focus/fragment/BrowserFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 623
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v1}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$1500(Lorg/mozilla/focus/fragment/BrowserFragment;)V

    .line 630
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    return-void

    .line 626
    :cond_0
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v1}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$1600(Lorg/mozilla/focus/fragment/BrowserFragment;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 628
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v1}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$1500(Lorg/mozilla/focus/fragment/BrowserFragment;)V

    goto :goto_0
.end method

.method public onExitFullScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 635
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$1400(Lorg/mozilla/focus/fragment/BrowserFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 636
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$1400(Lorg/mozilla/focus/fragment/BrowserFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 639
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$1300(Lorg/mozilla/focus/fragment/BrowserFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 642
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$1600(Lorg/mozilla/focus/fragment/BrowserFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 644
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$1700(Lorg/mozilla/focus/fragment/BrowserFragment;)V

    .line 647
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$1200(Lorg/mozilla/focus/fragment/BrowserFragment;)Lorg/mozilla/focus/web/IWebView$FullscreenCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$1200(Lorg/mozilla/focus/fragment/BrowserFragment;)Lorg/mozilla/focus/web/IWebView$FullscreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lorg/mozilla/focus/web/IWebView$FullscreenCallback;->fullScreenExited()V

    .line 649
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$1202(Lorg/mozilla/focus/fragment/BrowserFragment;Lorg/mozilla/focus/web/IWebView$FullscreenCallback;)Lorg/mozilla/focus/web/IWebView$FullscreenCallback;

    .line 651
    :cond_0
    return-void
.end method

.method public onHttpAuthRequest(Lorg/mozilla/focus/web/IWebView$HttpAuthCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Lorg/mozilla/focus/web/IWebView$HttpAuthCallback;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "realm"    # Ljava/lang/String;

    .prologue
    .line 580
    new-instance v1, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;

    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-virtual {v2}, Lorg/mozilla/focus/fragment/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p2, p3}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/mozilla/focus/fragment/BrowserFragment$13$2;

    invoke-direct {v2, p0, p1}, Lorg/mozilla/focus/fragment/BrowserFragment$13$2;-><init>(Lorg/mozilla/focus/fragment/BrowserFragment$13;Lorg/mozilla/focus/web/IWebView$HttpAuthCallback;)V

    .line 581
    invoke-virtual {v1, v2}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;->setOkListener(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$OkListener;)Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;

    move-result-object v1

    new-instance v2, Lorg/mozilla/focus/fragment/BrowserFragment$13$1;

    invoke-direct {v2, p0, p1}, Lorg/mozilla/focus/fragment/BrowserFragment$13$1;-><init>(Lorg/mozilla/focus/fragment/BrowserFragment$13;Lorg/mozilla/focus/web/IWebView$HttpAuthCallback;)V

    .line 587
    invoke-virtual {v1, v2}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;->setCancelListener(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$CancelListener;)Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;

    move-result-object v1

    .line 593
    invoke-virtual {v1}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;->build()Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;

    move-result-object v0

    .line 595
    .local v0, "builder":Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;
    invoke-virtual {v0}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->createDialog()V

    .line 596
    invoke-virtual {v0}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->show()V

    .line 597
    return-void
.end method

.method public onLongPress(Lorg/mozilla/focus/web/IWebView$HitTarget;)V
    .locals 1
    .param p1, "hitTarget"    # Lorg/mozilla/focus/web/IWebView$HitTarget;

    .prologue
    .line 604
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-virtual {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/mozilla/focus/menu/context/WebContextMenu;->show(Landroid/content/Context;Lorg/mozilla/focus/web/IWebView$Callback;Lorg/mozilla/focus/web/IWebView$HitTarget;)V

    .line 605
    return-void
.end method

.method public onPageFinished(Z)V
    .locals 0
    .param p1, "isSecure"    # Z

    .prologue
    .line 555
    return-void
.end method

.method public onPageStarted(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 552
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 567
    return-void
.end method

.method public onRequest(Z)V
    .locals 0
    .param p1, "isTriggeredByUserGesture"    # Z

    .prologue
    .line 564
    return-void
.end method

.method public onRequestDesktopStateChanged(Z)V
    .locals 0
    .param p1, "shouldRequestDesktop"    # Z

    .prologue
    .line 600
    return-void
.end method

.method public onSecurityChanged(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "isSecure"    # Z
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "organization"    # Ljava/lang/String;

    .prologue
    .line 558
    return-void
.end method

.method public onURLChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 561
    return-void
.end method

.method public resetBlockedTrackers()V
    .locals 0

    .prologue
    .line 573
    return-void
.end method
