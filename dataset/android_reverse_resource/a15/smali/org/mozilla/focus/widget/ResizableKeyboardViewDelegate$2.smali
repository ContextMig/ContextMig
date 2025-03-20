.class Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate$2;
.super Ljava/lang/Object;
.source "ResizableKeyboardViewDelegate.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->animateBottomPaddingTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    .prologue
    .line 124
    iput-object p1, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate$2;->this$0:Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate$2;->this$0:Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    invoke-static {v0}, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->access$200(Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 128
    return-void
.end method
