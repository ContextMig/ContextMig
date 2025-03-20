.class Lorg/mozilla/focus/fragment/BrowserFragment$7;
.super Lorg/mozilla/focus/architecture/NonNullObserver;
.source "BrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/fragment/BrowserFragment;->inflateLayout(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mozilla/focus/architecture/NonNullObserver",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/fragment/BrowserFragment;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/fragment/BrowserFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 328
    iput-object p1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$7;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-direct {p0}, Lorg/mozilla/focus/architecture/NonNullObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "loading"    # Ljava/lang/Boolean;

    .prologue
    const/4 v1, 0x0

    .line 331
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 332
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment$7;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v2}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$400(Lorg/mozilla/focus/fragment/BrowserFragment;)Lorg/mozilla/focus/animation/TransitionDrawableGroup;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/focus/animation/TransitionDrawableGroup;->resetTransition()V

    .line 334
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment$7;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v2}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$500(Lorg/mozilla/focus/fragment/BrowserFragment;)Lorg/mozilla/focus/widget/AnimatedProgressBar;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->setProgress(I)V

    .line 335
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment$7;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v2}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$500(Lorg/mozilla/focus/fragment/BrowserFragment;)Lorg/mozilla/focus/widget/AnimatedProgressBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->setVisibility(I)V

    .line 346
    :goto_0
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment$7;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/mozilla/focus/fragment/BrowserFragment$7;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v3}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$700(Lorg/mozilla/focus/fragment/BrowserFragment;)Lorg/mozilla/focus/session/Session;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mozilla/focus/session/Session;->isBlockingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Lorg/mozilla/focus/fragment/BrowserFragment;->updateBlockingBadging(Z)V

    .line 348
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$7;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$800(Lorg/mozilla/focus/fragment/BrowserFragment;Z)V

    .line 350
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$7;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v1}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$000(Lorg/mozilla/focus/fragment/BrowserFragment;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/menu/browser/BrowserMenu;

    .line 351
    .local v0, "menu":Lorg/mozilla/focus/menu/browser/BrowserMenu;
    if-eqz v0, :cond_2

    .line 352
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/menu/browser/BrowserMenu;->updateLoading(Z)V

    .line 355
    :cond_2
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$7;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v1}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$900(Lorg/mozilla/focus/fragment/BrowserFragment;)V

    .line 356
    return-void

    .line 337
    .end local v0    # "menu":Lorg/mozilla/focus/menu/browser/BrowserMenu;
    :cond_3
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment$7;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v2}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$500(Lorg/mozilla/focus/fragment/BrowserFragment;)Lorg/mozilla/focus/widget/AnimatedProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 340
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment$7;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v2}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$400(Lorg/mozilla/focus/fragment/BrowserFragment;)Lorg/mozilla/focus/animation/TransitionDrawableGroup;

    move-result-object v2

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Lorg/mozilla/focus/animation/TransitionDrawableGroup;->startTransition(I)V

    .line 341
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment$7;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v2}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$500(Lorg/mozilla/focus/fragment/BrowserFragment;)Lorg/mozilla/focus/widget/AnimatedProgressBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->setVisibility(I)V

    .line 343
    :cond_4
    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment$7;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v2}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$600(Lorg/mozilla/focus/fragment/BrowserFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onValueChanged(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 328
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/mozilla/focus/fragment/BrowserFragment$7;->onValueChanged(Ljava/lang/Boolean;)V

    return-void
.end method
