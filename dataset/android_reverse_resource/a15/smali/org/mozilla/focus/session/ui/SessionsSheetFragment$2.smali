.class Lorg/mozilla/focus/session/ui/SessionsSheetFragment$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SessionsSheetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->playAnimation(Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/session/ui/SessionsSheetFragment;

.field final synthetic val$reverse:Z


# direct methods
.method constructor <init>(Lorg/mozilla/focus/session/ui/SessionsSheetFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/session/ui/SessionsSheetFragment;

    .prologue
    .line 76
    iput-object p1, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment$2;->this$0:Lorg/mozilla/focus/session/ui/SessionsSheetFragment;

    iput-boolean p2, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment$2;->val$reverse:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment$2;->this$0:Lorg/mozilla/focus/session/ui/SessionsSheetFragment;

    invoke-static {v1, v0}, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->access$202(Lorg/mozilla/focus/session/ui/SessionsSheetFragment;Z)Z

    .line 86
    iget-object v1, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment$2;->this$0:Lorg/mozilla/focus/session/ui/SessionsSheetFragment;

    invoke-static {v1}, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->access$100(Lorg/mozilla/focus/session/ui/SessionsSheetFragment;)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment$2;->val$reverse:Z

    if-eqz v2, :cond_0

    const/16 v0, 0x8

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 87
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment$2;->this$0:Lorg/mozilla/focus/session/ui/SessionsSheetFragment;

    invoke-static {v0}, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->access$100(Lorg/mozilla/focus/session/ui/SessionsSheetFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    return-void
.end method
