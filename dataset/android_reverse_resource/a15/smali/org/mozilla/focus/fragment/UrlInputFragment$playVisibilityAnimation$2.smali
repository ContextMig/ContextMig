.class public final Lorg/mozilla/focus/fragment/UrlInputFragment$playVisibilityAnimation$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UrlInputFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/fragment/UrlInputFragment;->playVisibilityAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $reverse:Z

.field final synthetic this$0:Lorg/mozilla/focus/fragment/UrlInputFragment;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/fragment/UrlInputFragment;Z)V
    .locals 0
    .param p1, "$outer"    # Lorg/mozilla/focus/fragment/UrlInputFragment;
    .param p2, "$captured_local_variable$1"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 452
    iput-object p1, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$playVisibilityAnimation$2;->this$0:Lorg/mozilla/focus/fragment/UrlInputFragment;

    iput-boolean p2, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$playVisibilityAnimation$2;->$reverse:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v2, 0x8

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    iget-boolean v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$playVisibilityAnimation$2;->$reverse:Z

    if-eqz v0, :cond_2

    .line 459
    iget-object v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$playVisibilityAnimation$2;->this$0:Lorg/mozilla/focus/fragment/UrlInputFragment;

    sget v1, Lorg/mozilla/focus/R$id;->toolbarBackgroundView:I

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 461
    :cond_0
    iget-object v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$playVisibilityAnimation$2;->this$0:Lorg/mozilla/focus/fragment/UrlInputFragment;

    invoke-static {v0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->access$isOverlay$p(Lorg/mozilla/focus/fragment/UrlInputFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 462
    iget-object v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$playVisibilityAnimation$2;->this$0:Lorg/mozilla/focus/fragment/UrlInputFragment;

    sget v1, Lorg/mozilla/focus/R$id;->dismissView:I

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 463
    :cond_1
    iget-object v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$playVisibilityAnimation$2;->this$0:Lorg/mozilla/focus/fragment/UrlInputFragment;

    sget v1, Lorg/mozilla/focus/R$id;->menuView:I

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/widget/IndicatorMenuButton;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/widget/IndicatorMenuButton;->setVisibility(I)V

    .line 466
    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$playVisibilityAnimation$2;->this$0:Lorg/mozilla/focus/fragment/UrlInputFragment;

    sget v1, Lorg/mozilla/focus/R$id;->toolbarBackgroundView:I

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 455
    :cond_0
    return-void
.end method
