.class Lorg/mozilla/focus/session/ui/EraseViewHolder$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EraseViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/session/ui/EraseViewHolder;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/session/ui/EraseViewHolder;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/session/ui/EraseViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/session/ui/EraseViewHolder;

    .prologue
    .line 39
    iput-object p1, p0, Lorg/mozilla/focus/session/ui/EraseViewHolder$1;->this$0:Lorg/mozilla/focus/session/ui/EraseViewHolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 42
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/focus/session/SessionManager;->removeAllSessions()V

    .line 43
    return-void
.end method
