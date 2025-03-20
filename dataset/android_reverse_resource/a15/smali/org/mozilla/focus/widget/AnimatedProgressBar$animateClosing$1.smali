.class final Lorg/mozilla/focus/widget/AnimatedProgressBar$animateClosing$1;
.super Ljava/lang/Object;
.source "AnimatedProgressBar.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/widget/AnimatedProgressBar;->animateClosing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/widget/AnimatedProgressBar;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/widget/AnimatedProgressBar;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar$animateClosing$1;->this$0:Lorg/mozilla/focus/widget/AnimatedProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar$animateClosing$1;->this$0:Lorg/mozilla/focus/widget/AnimatedProgressBar;

    invoke-static {v0}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->access$getClosingAnimator$p(Lorg/mozilla/focus/widget/AnimatedProgressBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
