.class Lorg/mozilla/focus/widget/FloatingActionButtonBehavior$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;->animate(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$hide:Z


# direct methods
.method constructor <init>(Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;ZLandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;

    .prologue
    .line 91
    iput-object p1, p0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior$1;->this$0:Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;

    iput-boolean p2, p0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior$1;->val$hide:Z

    iput-object p3, p0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior$1;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 103
    iget-object v1, p0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior$1;->this$0:Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;

    iget-boolean v0, p0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior$1;->val$hide:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;->access$002(Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;Z)Z

    .line 108
    iget-boolean v0, p0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior$1;->val$hide:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior$1;->val$child:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :cond_0
    return-void

    .line 103
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior$1;->val$hide:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior$1;->val$child:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :cond_0
    return-void
.end method
