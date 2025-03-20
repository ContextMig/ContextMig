.class Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ResizableKeyboardViewDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->animateBottomPaddingTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    .prologue
    .line 131
    iput-object p1, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate$3;->this$0:Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 134
    iget-object v0, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate$3;->this$0:Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->access$002(Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;Z)Z

    .line 135
    return-void
.end method
