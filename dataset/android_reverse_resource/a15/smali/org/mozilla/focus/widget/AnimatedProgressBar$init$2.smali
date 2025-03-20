.class final Lorg/mozilla/focus/widget/AnimatedProgressBar$init$2;
.super Ljava/lang/Object;
.source "AnimatedProgressBar.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/widget/AnimatedProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    iput-object p1, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar$init$2;->this$0:Lorg/mozilla/focus/widget/AnimatedProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 152
    const-string v1, "valueAnimator"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 153
    .local v0, "region":F
    iget-object v1, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar$init$2;->this$0:Lorg/mozilla/focus/widget/AnimatedProgressBar;

    invoke-static {v1}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->access$getClipRegion$p(Lorg/mozilla/focus/widget/AnimatedProgressBar;)F

    move-result v1

    cmpg-float v1, v1, v0

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar$init$2;->this$0:Lorg/mozilla/focus/widget/AnimatedProgressBar;

    invoke-static {v1, v0}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->access$setClipRegion$p(Lorg/mozilla/focus/widget/AnimatedProgressBar;F)V

    .line 155
    iget-object v1, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar$init$2;->this$0:Lorg/mozilla/focus/widget/AnimatedProgressBar;

    invoke-virtual {v1}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->invalidate()V

    .line 157
    :cond_1
    return-void
.end method
