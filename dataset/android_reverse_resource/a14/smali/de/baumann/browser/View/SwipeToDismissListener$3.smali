.class Lde/baumann/browser/View/SwipeToDismissListener$3;
.super Ljava/lang/Object;
.source "SwipeToDismissListener.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/View/SwipeToDismissListener;->performDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/View/SwipeToDismissListener;

.field final synthetic val$layoutParams:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lde/baumann/browser/View/SwipeToDismissListener;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lde/baumann/browser/View/SwipeToDismissListener$3;->this$0:Lde/baumann/browser/View/SwipeToDismissListener;

    iput-object p2, p0, Lde/baumann/browser/View/SwipeToDismissListener$3;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lde/baumann/browser/View/SwipeToDismissListener$3;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 172
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToDismissListener$3;->this$0:Lde/baumann/browser/View/SwipeToDismissListener;

    invoke-static {p1}, Lde/baumann/browser/View/SwipeToDismissListener;->access$200(Lde/baumann/browser/View/SwipeToDismissListener;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lde/baumann/browser/View/SwipeToDismissListener$3;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
