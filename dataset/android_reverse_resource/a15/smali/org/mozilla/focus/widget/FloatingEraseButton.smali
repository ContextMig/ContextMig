.class public Lorg/mozilla/focus/widget/FloatingEraseButton;
.super Landroid/support/design/widget/FloatingActionButton;
.source "FloatingEraseButton.java"


# instance fields
.field private keepHidden:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lorg/mozilla/focus/widget/FloatingEraseButton;->keepHidden:Z

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/widget/FloatingEraseButton;->setVisibility(I)V

    .line 50
    invoke-virtual {p0}, Lorg/mozilla/focus/widget/FloatingEraseButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/widget/FloatingEraseButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 53
    :cond_0
    invoke-super {p0}, Landroid/support/design/widget/FloatingActionButton;->onFinishInflate()V

    .line 54
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 58
    iget-boolean v0, p0, Lorg/mozilla/focus/widget/FloatingEraseButton;->keepHidden:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-super {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateSessionsCount(I)V
    .locals 5
    .param p1, "tabCount"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 32
    invoke-virtual {p0}, Lorg/mozilla/focus/widget/FloatingEraseButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 33
    .local v1, "params":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;

    .line 35
    .local v0, "behavior":Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;
    if-eq p1, v3, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lorg/mozilla/focus/widget/FloatingEraseButton;->keepHidden:Z

    .line 37
    if-eqz v0, :cond_0

    .line 38
    iget-boolean v2, p0, Lorg/mozilla/focus/widget/FloatingEraseButton;->keepHidden:Z

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {v0, v3}, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;->setEnabled(Z)V

    .line 41
    :cond_0
    iget-boolean v2, p0, Lorg/mozilla/focus/widget/FloatingEraseButton;->keepHidden:Z

    if-eqz v2, :cond_1

    .line 42
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/mozilla/focus/widget/FloatingEraseButton;->setVisibility(I)V

    .line 44
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 35
    goto :goto_0

    :cond_3
    move v3, v4

    .line 38
    goto :goto_1
.end method
