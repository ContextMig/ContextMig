.class Lorg/mozilla/focus/session/ui/SessionsSheetFragment$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SessionsSheetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->animateAndDismiss()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/session/ui/SessionsSheetFragment;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/session/ui/SessionsSheetFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/session/ui/SessionsSheetFragment;

    .prologue
    .line 103
    iput-object p1, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment$3;->this$0:Lorg/mozilla/focus/session/ui/SessionsSheetFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 106
    iget-object v1, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment$3;->this$0:Lorg/mozilla/focus/session/ui/SessionsSheetFragment;

    invoke-virtual {v1}, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/activity/MainActivity;

    .line 107
    .local v0, "activity":Lorg/mozilla/focus/activity/MainActivity;
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lorg/mozilla/focus/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment$3;->this$0:Lorg/mozilla/focus/session/ui/SessionsSheetFragment;

    .line 110
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 113
    :cond_0
    return-void
.end method
