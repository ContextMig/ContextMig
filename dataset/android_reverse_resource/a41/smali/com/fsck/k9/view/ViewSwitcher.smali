.class public Lcom/fsck/k9/view/ViewSwitcher;
.super Landroid/widget/ViewAnimator;
.source "ViewSwitcher.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/view/ViewSwitcher$OnSwitchCompleteListener;
    }
.end annotation


# instance fields
.field private mFirstInAnimation:Landroid/view/animation/Animation;

.field private mFirstOutAnimation:Landroid/view/animation/Animation;

.field private mListener:Lcom/fsck/k9/view/ViewSwitcher$OnSwitchCompleteListener;

.field private mSecondInAnimation:Landroid/view/animation/Animation;

.field private mSecondOutAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method private handleSwitchCompleteCallback()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/fsck/k9/K9;->showAnimations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/ViewSwitcher;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 66
    :cond_0
    return-void
.end method

.method private setupAnimations(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "in"    # Landroid/view/animation/Animation;
    .param p2, "out"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-static {}, Lcom/fsck/k9/K9;->showAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lcom/fsck/k9/view/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 54
    invoke-virtual {p0, p2}, Lcom/fsck/k9/view/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 55
    invoke-virtual {p2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0, v1}, Lcom/fsck/k9/view/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 58
    invoke-virtual {p0, v1}, Lcom/fsck/k9/view/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public getFirstInAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fsck/k9/view/ViewSwitcher;->mFirstInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getSecondInAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fsck/k9/view/ViewSwitcher;->mSecondInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getSecondOutAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fsck/k9/view/ViewSwitcher;->mSecondOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getmFirstOutAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fsck/k9/view/ViewSwitcher;->mFirstOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/fsck/k9/view/ViewSwitcher;->mListener:Lcom/fsck/k9/view/ViewSwitcher$OnSwitchCompleteListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/fsck/k9/view/ViewSwitcher;->mListener:Lcom/fsck/k9/view/ViewSwitcher$OnSwitchCompleteListener;

    invoke-virtual {p0}, Lcom/fsck/k9/view/ViewSwitcher;->getDisplayedChild()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/fsck/k9/view/ViewSwitcher$OnSwitchCompleteListener;->onSwitchComplete(I)V

    .line 109
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 114
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 119
    return-void
.end method

.method public setFirstInAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "inAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/fsck/k9/view/ViewSwitcher;->mFirstInAnimation:Landroid/view/animation/Animation;

    .line 74
    return-void
.end method

.method public setFirstOutAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "outAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/fsck/k9/view/ViewSwitcher;->mFirstOutAnimation:Landroid/view/animation/Animation;

    .line 82
    return-void
.end method

.method public setOnSwitchCompleteListener(Lcom/fsck/k9/view/ViewSwitcher$OnSwitchCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fsck/k9/view/ViewSwitcher$OnSwitchCompleteListener;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/fsck/k9/view/ViewSwitcher;->mListener:Lcom/fsck/k9/view/ViewSwitcher$OnSwitchCompleteListener;

    .line 102
    return-void
.end method

.method public setSecondInAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "inAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/fsck/k9/view/ViewSwitcher;->mSecondInAnimation:Landroid/view/animation/Animation;

    .line 90
    return-void
.end method

.method public setSecondOutAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "outAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/fsck/k9/view/ViewSwitcher;->mSecondOutAnimation:Landroid/view/animation/Animation;

    .line 98
    return-void
.end method

.method public showFirstView()V
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/fsck/k9/view/ViewSwitcher;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/view/ViewSwitcher;->mFirstInAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/fsck/k9/view/ViewSwitcher;->mFirstOutAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/view/ViewSwitcher;->setupAnimations(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/ViewSwitcher;->setDisplayedChild(I)V

    .line 38
    invoke-direct {p0}, Lcom/fsck/k9/view/ViewSwitcher;->handleSwitchCompleteCallback()V

    goto :goto_0
.end method

.method public showSecondView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 42
    invoke-virtual {p0}, Lcom/fsck/k9/view/ViewSwitcher;->getDisplayedChild()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 49
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/view/ViewSwitcher;->mSecondInAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/fsck/k9/view/ViewSwitcher;->mSecondOutAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/view/ViewSwitcher;->setupAnimations(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 47
    invoke-virtual {p0, v2}, Lcom/fsck/k9/view/ViewSwitcher;->setDisplayedChild(I)V

    .line 48
    invoke-direct {p0}, Lcom/fsck/k9/view/ViewSwitcher;->handleSwitchCompleteCallback()V

    goto :goto_0
.end method
