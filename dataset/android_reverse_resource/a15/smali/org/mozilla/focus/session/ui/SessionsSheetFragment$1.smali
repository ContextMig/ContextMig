.class Lorg/mozilla/focus/session/ui/SessionsSheetFragment$1;
.super Lorg/mozilla/focus/utils/OneShotOnPreDrawListener;
.source "SessionsSheetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/session/ui/SessionsSheetFragment;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/session/ui/SessionsSheetFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/session/ui/SessionsSheetFragment;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 44
    iput-object p1, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment$1;->this$0:Lorg/mozilla/focus/session/ui/SessionsSheetFragment;

    invoke-direct {p0, p2}, Lorg/mozilla/focus/utils/OneShotOnPreDrawListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected onPreDraw(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment$1;->this$0:Lorg/mozilla/focus/session/ui/SessionsSheetFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->access$000(Lorg/mozilla/focus/session/ui/SessionsSheetFragment;Z)Landroid/animation/Animator;

    .line 48
    return-void
.end method
