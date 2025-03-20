.class Lde/baumann/browser/View/SwipeToBoundListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeToBoundListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/View/SwipeToBoundListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/View/SwipeToBoundListener;


# direct methods
.method constructor <init>(Lde/baumann/browser/View/SwipeToBoundListener;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lde/baumann/browser/View/SwipeToBoundListener$1;->this$0:Lde/baumann/browser/View/SwipeToBoundListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 76
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToBoundListener$1;->this$0:Lde/baumann/browser/View/SwipeToBoundListener;

    invoke-static {p1}, Lde/baumann/browser/View/SwipeToBoundListener;->access$200(Lde/baumann/browser/View/SwipeToBoundListener;)Lde/baumann/browser/View/SwipeToBoundListener$BoundCallback;

    move-result-object p1

    iget-object v0, p0, Lde/baumann/browser/View/SwipeToBoundListener$1;->this$0:Lde/baumann/browser/View/SwipeToBoundListener;

    invoke-static {v0}, Lde/baumann/browser/View/SwipeToBoundListener;->access$000(Lde/baumann/browser/View/SwipeToBoundListener;)Z

    move-result v0

    iget-object v1, p0, Lde/baumann/browser/View/SwipeToBoundListener$1;->this$0:Lde/baumann/browser/View/SwipeToBoundListener;

    invoke-static {v1}, Lde/baumann/browser/View/SwipeToBoundListener;->access$100(Lde/baumann/browser/View/SwipeToBoundListener;)Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lde/baumann/browser/View/SwipeToBoundListener$BoundCallback;->onBound(ZZ)V

    return-void
.end method
