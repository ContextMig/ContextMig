.class public final Lorg/mozilla/focus/fragment/UrlInputFragment$onViewCreated$3;
.super Ljava/lang/Object;
.source "UrlInputFragment.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/fragment/UrlInputFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/fragment/UrlInputFragment;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/fragment/UrlInputFragment;)V
    .locals 0
    .param p1, "$outer"    # Lorg/mozilla/focus/fragment/UrlInputFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 177
    iput-object p1, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$onViewCreated$3;->this$0:Lorg/mozilla/focus/fragment/UrlInputFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$onViewCreated$3;->this$0:Lorg/mozilla/focus/fragment/UrlInputFragment;

    sget v1, Lorg/mozilla/focus/R$id;->urlInputContainerView:I

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$onViewCreated$3;->this$0:Lorg/mozilla/focus/fragment/UrlInputFragment;

    sget v1, Lorg/mozilla/focus/R$id;->urlInputContainerView:I

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "urlInputContainerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    move-object v0, p0

    check-cast v0, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$onViewCreated$3;->this$0:Lorg/mozilla/focus/fragment/UrlInputFragment;

    invoke-static {v0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->access$animateFirstDraw(Lorg/mozilla/focus/fragment/UrlInputFragment;)V

    .line 186
    const/4 v0, 0x1

    return v0
.end method
