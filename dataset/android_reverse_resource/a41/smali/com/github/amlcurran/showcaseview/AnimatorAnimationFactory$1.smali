.class Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatorAnimationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory;->fadeInView(Landroid/view/View;JLcom/github/amlcurran/showcaseview/AnimationFactory$AnimationStartListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory;

.field final synthetic val$listener:Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationStartListener;


# direct methods
.method constructor <init>(Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory;Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationStartListener;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory$1;->this$0:Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory;

    iput-object p2, p0, Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory$1;->val$listener:Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationStartListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory$1;->val$listener:Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationStartListener;

    invoke-interface {v0}, Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationStartListener;->onAnimationStart()V

    .line 50
    return-void
.end method
