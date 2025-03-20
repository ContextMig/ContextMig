.class public final Lorg/mozilla/focus/fragment/UrlInputFragment$playVisibilityAnimation$1;
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
    .line 400
    iput-object p1, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$playVisibilityAnimation$1;->this$0:Lorg/mozilla/focus/fragment/UrlInputFragment;

    iput-boolean p2, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$playVisibilityAnimation$1;->$reverse:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    iget-boolean v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$playVisibilityAnimation$1;->$reverse:Z

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$playVisibilityAnimation$1;->this$0:Lorg/mozilla/focus/fragment/UrlInputFragment;

    invoke-static {v0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->access$isOverlay$p(Lorg/mozilla/focus/fragment/UrlInputFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$playVisibilityAnimation$1;->this$0:Lorg/mozilla/focus/fragment/UrlInputFragment;

    invoke-static {v0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->access$dismiss(Lorg/mozilla/focus/fragment/UrlInputFragment;)V

    .line 414
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$playVisibilityAnimation$1;->this$0:Lorg/mozilla/focus/fragment/UrlInputFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/mozilla/focus/fragment/UrlInputFragment;->access$setAnimating$p(Lorg/mozilla/focus/fragment/UrlInputFragment;Z)V

    .line 417
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$playVisibilityAnimation$1;->this$0:Lorg/mozilla/focus/fragment/UrlInputFragment;

    sget v1, Lorg/mozilla/focus/R$id;->clearView:I

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    iget-boolean v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$playVisibilityAnimation$1;->$reverse:Z

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$playVisibilityAnimation$1;->this$0:Lorg/mozilla/focus/fragment/UrlInputFragment;

    sget v1, Lorg/mozilla/focus/R$id;->clearView:I

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const-string v1, "clearView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 405
    :cond_0
    return-void
.end method
