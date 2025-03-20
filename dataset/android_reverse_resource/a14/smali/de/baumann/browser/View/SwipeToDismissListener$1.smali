.class Lde/baumann/browser/View/SwipeToDismissListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeToDismissListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/View/SwipeToDismissListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/View/SwipeToDismissListener;


# direct methods
.method constructor <init>(Lde/baumann/browser/View/SwipeToDismissListener;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lde/baumann/browser/View/SwipeToDismissListener$1;->this$0:Lde/baumann/browser/View/SwipeToDismissListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 84
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToDismissListener$1;->this$0:Lde/baumann/browser/View/SwipeToDismissListener;

    invoke-static {p1}, Lde/baumann/browser/View/SwipeToDismissListener;->access$000(Lde/baumann/browser/View/SwipeToDismissListener;)V

    return-void
.end method
