.class Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatorAnimationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory;->fadeOutView(Landroid/view/View;JLcom/github/amlcurran/showcaseview/AnimationFactory$AnimationEndListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory;

.field final synthetic val$listener:Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationEndListener;


# direct methods
.method constructor <init>(Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory;Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationEndListener;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory$2;->this$0:Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory;

    iput-object p2, p0, Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory$2;->val$listener:Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationEndListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory$2;->val$listener:Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationEndListener;

    invoke-interface {v0}, Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationEndListener;->onAnimationEnd()V

    .line 64
    return-void
.end method
