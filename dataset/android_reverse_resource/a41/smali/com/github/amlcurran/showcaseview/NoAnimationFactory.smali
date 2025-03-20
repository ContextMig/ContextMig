.class Lcom/github/amlcurran/showcaseview/NoAnimationFactory;
.super Ljava/lang/Object;
.source "NoAnimationFactory.java"

# interfaces
.implements Lcom/github/amlcurran/showcaseview/AnimationFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animateTargetToPoint(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "showcaseView"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    .line 20
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setShowcasePosition(II)V

    .line 21
    return-void
.end method

.method public fadeInView(Landroid/view/View;JLcom/github/amlcurran/showcaseview/AnimationFactory$AnimationStartListener;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "duration"    # J
    .param p4, "listener"    # Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationStartListener;

    .prologue
    .line 10
    invoke-interface {p4}, Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationStartListener;->onAnimationStart()V

    .line 11
    return-void
.end method

.method public fadeOutView(Landroid/view/View;JLcom/github/amlcurran/showcaseview/AnimationFactory$AnimationEndListener;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "duration"    # J
    .param p4, "listener"    # Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationEndListener;

    .prologue
    .line 15
    invoke-interface {p4}, Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationEndListener;->onAnimationEnd()V

    .line 16
    return-void
.end method
