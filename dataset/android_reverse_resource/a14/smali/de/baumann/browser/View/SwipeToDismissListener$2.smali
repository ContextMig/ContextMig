.class Lde/baumann/browser/View/SwipeToDismissListener$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeToDismissListener.java"


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

.field final synthetic val$originalWidth:I


# direct methods
.method constructor <init>(Lde/baumann/browser/View/SwipeToDismissListener;Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0

    .line 158
    iput-object p1, p0, Lde/baumann/browser/View/SwipeToDismissListener$2;->this$0:Lde/baumann/browser/View/SwipeToDismissListener;

    iput-object p2, p0, Lde/baumann/browser/View/SwipeToDismissListener$2;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    iput p3, p0, Lde/baumann/browser/View/SwipeToDismissListener$2;->val$originalWidth:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 161
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToDismissListener$2;->this$0:Lde/baumann/browser/View/SwipeToDismissListener;

    invoke-static {p1}, Lde/baumann/browser/View/SwipeToDismissListener;->access$100(Lde/baumann/browser/View/SwipeToDismissListener;)Lde/baumann/browser/View/SwipeToDismissListener$DismissCallback;

    move-result-object p1

    invoke-interface {p1}, Lde/baumann/browser/View/SwipeToDismissListener$DismissCallback;->onDismiss()V

    .line 162
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToDismissListener$2;->this$0:Lde/baumann/browser/View/SwipeToDismissListener;

    invoke-static {p1}, Lde/baumann/browser/View/SwipeToDismissListener;->access$200(Lde/baumann/browser/View/SwipeToDismissListener;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 163
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToDismissListener$2;->this$0:Lde/baumann/browser/View/SwipeToDismissListener;

    invoke-static {p1}, Lde/baumann/browser/View/SwipeToDismissListener;->access$200(Lde/baumann/browser/View/SwipeToDismissListener;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 164
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToDismissListener$2;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, p0, Lde/baumann/browser/View/SwipeToDismissListener$2;->val$originalWidth:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 165
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToDismissListener$2;->this$0:Lde/baumann/browser/View/SwipeToDismissListener;

    invoke-static {p1}, Lde/baumann/browser/View/SwipeToDismissListener;->access$200(Lde/baumann/browser/View/SwipeToDismissListener;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lde/baumann/browser/View/SwipeToDismissListener$2;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
