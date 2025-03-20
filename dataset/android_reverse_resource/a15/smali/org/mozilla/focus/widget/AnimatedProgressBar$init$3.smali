.class public final Lorg/mozilla/focus/widget/AnimatedProgressBar$init$3;
.super Ljava/lang/Object;
.source "AnimatedProgressBar.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/widget/AnimatedProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/widget/AnimatedProgressBar;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/widget/AnimatedProgressBar;)V
    .locals 0
    .param p1, "$outer"    # Lorg/mozilla/focus/widget/AnimatedProgressBar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 158
    iput-object p1, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar$init$3;->this$0:Lorg/mozilla/focus/widget/AnimatedProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar$init$3;->this$0:Lorg/mozilla/focus/widget/AnimatedProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->access$setClipRegion$p(Lorg/mozilla/focus/widget/AnimatedProgressBar;F)V

    .line 169
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar$init$3;->this$0:Lorg/mozilla/focus/widget/AnimatedProgressBar;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->access$setVisibilityImmediately(Lorg/mozilla/focus/widget/AnimatedProgressBar;I)V

    .line 165
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar$init$3;->this$0:Lorg/mozilla/focus/widget/AnimatedProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->access$setClipRegion$p(Lorg/mozilla/focus/widget/AnimatedProgressBar;F)V

    .line 161
    return-void
.end method
