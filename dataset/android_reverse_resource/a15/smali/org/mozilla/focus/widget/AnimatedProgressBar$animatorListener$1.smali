.class final Lorg/mozilla/focus/widget/AnimatedProgressBar$animatorListener$1;
.super Ljava/lang/Object;
.source "AnimatedProgressBar.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/widget/AnimatedProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/widget/AnimatedProgressBar;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/widget/AnimatedProgressBar;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar$animatorListener$1;->this$0:Lorg/mozilla/focus/widget/AnimatedProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "it"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 33
    iget-object v1, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar$animatorListener$1;->this$0:Lorg/mozilla/focus/widget/AnimatedProgressBar;

    iget-object v0, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar$animatorListener$1;->this$0:Lorg/mozilla/focus/widget/AnimatedProgressBar;

    invoke-static {v0}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->access$getPrimaryAnimator$p(Lorg/mozilla/focus/widget/AnimatedProgressBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->access$setProgressImmediately(Lorg/mozilla/focus/widget/AnimatedProgressBar;I)V

    .line 34
    return-void
.end method
