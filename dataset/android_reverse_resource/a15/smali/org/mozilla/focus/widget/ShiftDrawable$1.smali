.class Lorg/mozilla/focus/widget/ShiftDrawable$1;
.super Ljava/lang/Object;
.source "ShiftDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/widget/ShiftDrawable;-><init>(Landroid/graphics/drawable/Drawable;ILandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/widget/ShiftDrawable;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/widget/ShiftDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/widget/ShiftDrawable;

    .prologue
    .line 38
    iput-object p1, p0, Lorg/mozilla/focus/widget/ShiftDrawable$1;->this$0:Lorg/mozilla/focus/widget/ShiftDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/mozilla/focus/widget/ShiftDrawable$1;->this$0:Lorg/mozilla/focus/widget/ShiftDrawable;

    invoke-virtual {v0}, Lorg/mozilla/focus/widget/ShiftDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lorg/mozilla/focus/widget/ShiftDrawable$1;->this$0:Lorg/mozilla/focus/widget/ShiftDrawable;

    invoke-virtual {v0}, Lorg/mozilla/focus/widget/ShiftDrawable;->invalidateSelf()V

    .line 44
    :cond_0
    return-void
.end method
