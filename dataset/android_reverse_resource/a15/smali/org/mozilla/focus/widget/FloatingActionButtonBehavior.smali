.class public Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "FloatingActionButtonBehavior.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<",
        "Landroid/support/design/widget/FloatingActionButton;",
        ">;",
        "Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;"
    }
.end annotation


# instance fields
.field private button:Landroid/support/design/widget/FloatingActionButton;

.field private enabled:Z

.field private layout:Landroid/support/design/widget/AppBarLayout;

.field private visible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;->enabled:Z

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;->visible:Z

    .line 35
    return-void
.end method

.method static synthetic access$002(Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;->visible:Z

    return p1
.end method

.method private animate(Landroid/view/View;Z)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "hide"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p2, :cond_0

    move v0, v1

    .line 88
    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 89
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    .line 90
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior$1;

    invoke-direct {v1, p0, p2, p1}, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior$1;-><init>(Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;ZLandroid/view/View;)V

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 114
    return-void

    :cond_0
    move v0, v2

    .line 87
    goto :goto_0

    :cond_1
    move v1, v2

    .line 88
    goto :goto_1
.end method

.method private hideButton()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;->button:Landroid/support/design/widget/FloatingActionButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;->animate(Landroid/view/View;Z)V

    .line 84
    return-void
.end method

.method private showButton()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;->button:Landroid/support/design/widget/FloatingActionButton;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;->animate(Landroid/view/View;Z)V

    .line 80
    return-void
.end method


# virtual methods
.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/support/design/widget/FloatingActionButton;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;->button:Landroid/support/design/widget/FloatingActionButton;

    if-eq v0, p2, :cond_0

    .line 44
    iput-object p2, p0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;->button:Landroid/support/design/widget/FloatingActionButton;

    .line 47
    :cond_0
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;->layout:Landroid/support/design/widget/AppBarLayout;

    if-eq v0, p3, :cond_1

    .line 48
    check-cast p3, Landroid/support/design/widget/AppBarLayout;

    .end local p3    # "dependency":Landroid/view/View;
    iput-object p3, p0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;->layout:Landroid/support/design/widget/AppBarLayout;

    .line 49
    iget-object v0, p0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;->layout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 51
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    .restart local p3    # "dependency":Landroid/view/View;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 21
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onDependentViewRemoved(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/support/design/widget/FloatingActionButton;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewRemoved(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 61
    iget-object v0, p0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;->layout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/AppBarLayout;->removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;->layout:Landroid/support/design/widget/AppBarLayout;

    .line 63
    return-void
.end method

.method public bridge synthetic onDependentViewRemoved(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 21
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;->onDependentViewRemoved(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)V

    return-void
.end method

.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 2
    .param p1, "appBarLayout"    # Landroid/support/design/widget/AppBarLayout;
    .param p2, "verticalOffset"    # I

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;->enabled:Z

    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    if-nez p2, :cond_2

    iget-boolean v0, p0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;->visible:Z

    if-nez v0, :cond_2

    .line 72
    invoke-direct {p0}, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;->showButton()V

    goto :goto_0

    .line 73
    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;->visible:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0}, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;->hideButton()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;->enabled:Z

    .line 39
    return-void
.end method
