.class Landroid/support/v7/widget/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/db;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/a/a;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/a/a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/do;I)V

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/ch;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-static {v2}, Landroid/support/v7/widget/a/a;->d(Landroid/support/v7/widget/a/a;)Landroid/support/v4/i/q;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/support/v4/i/q;->a(Landroid/view/MotionEvent;)Z

    invoke-static {p2}, Landroid/support/v4/i/ay;->a(Landroid/view/MotionEvent;)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-static {p2, v1}, Landroid/support/v4/i/ay;->b(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/a/a;->i:I

    iget-object v2, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/a/a;->c:F

    iget-object v2, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/a/a;->d:F

    iget-object v2, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-static {v2}, Landroid/support/v7/widget/a/a;->e(Landroid/support/v7/widget/a/a;)V

    iget-object v2, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    iget-object v2, v2, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-static {v2, p2}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/a/a;Landroid/view/MotionEvent;)Landroid/support/v7/widget/a/k;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    iget v4, v3, Landroid/support/v7/widget/a/a;->c:F

    iget v5, v2, Landroid/support/v7/widget/a/k;->k:F

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/a/a;->c:F

    iget-object v3, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    iget v4, v3, Landroid/support/v7/widget/a/a;->d:F

    iget v5, v2, Landroid/support/v7/widget/a/k;->l:F

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/a/a;->d:F

    iget-object v3, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    iget-object v4, v2, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/do;

    invoke-static {v3, v4, v0}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/do;Z)I

    iget-object v3, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    iget-object v3, v3, Landroid/support/v7/widget/a/a;->a:Ljava/util/List;

    iget-object v4, v2, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/do;

    iget-object v4, v4, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    iget-object v3, v3, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/g;

    iget-object v4, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-static {v4}, Landroid/support/v7/widget/a/a;->c(Landroid/support/v7/widget/a/a;)Landroid/support/v7/widget/ch;

    move-result-object v4

    iget-object v5, v2, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/do;

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/a/g;->c(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;)V

    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    iget-object v4, v2, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/do;

    iget v2, v2, Landroid/support/v7/widget/a/k;->i:I

    invoke-static {v3, v4, v2}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/do;I)V

    iget-object v2, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    iget-object v3, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    iget v3, v3, Landroid/support/v7/widget/a/a;->l:I

    invoke-static {v2, p2, v3, v1}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/a/a;Landroid/view/MotionEvent;II)V

    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-static {v2}, Landroid/support/v7/widget/a/a;->f(Landroid/support/v7/widget/a/a;)Landroid/view/VelocityTracker;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-static {v2}, Landroid/support/v7/widget/a/a;->f(Landroid/support/v7/widget/a/a;)Landroid/view/VelocityTracker;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    iget-object v2, v2, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    if-eqz v2, :cond_6

    :goto_1
    return v0

    :cond_3
    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    if-ne v2, v0, :cond_5

    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    iput v4, v2, Landroid/support/v7/widget/a/a;->i:I

    iget-object v2, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/do;I)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    iget v3, v3, Landroid/support/v7/widget/a/a;->i:I

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    iget v3, v3, Landroid/support/v7/widget/a/a;->i:I

    invoke-static {p2, v3}, Landroid/support/v4/i/ay;->a(Landroid/view/MotionEvent;I)I

    move-result v3

    if-ltz v3, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-static {v4, v2, p2, v3}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/a/a;ILandroid/view/MotionEvent;I)Z

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public b(Landroid/support/v7/widget/ch;Landroid/view/MotionEvent;)V
    .locals 6

    const/16 v5, 0x3e8

    const/4 v0, 0x0

    const/4 v4, -0x1

    iget-object v1, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-static {v1}, Landroid/support/v7/widget/a/a;->d(Landroid/support/v7/widget/a/a;)Landroid/support/v4/i/q;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v4/i/q;->a(Landroid/view/MotionEvent;)Z

    iget-object v1, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-static {v1}, Landroid/support/v7/widget/a/a;->f(Landroid/support/v7/widget/a/a;)Landroid/view/VelocityTracker;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-static {v1}, Landroid/support/v7/widget/a/a;->f(Landroid/support/v7/widget/a/a;)Landroid/view/VelocityTracker;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    iget v1, v1, Landroid/support/v7/widget/a/a;->i:I

    if-ne v1, v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p2}, Landroid/support/v4/i/ay;->a(Landroid/view/MotionEvent;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    iget v2, v2, Landroid/support/v7/widget/a/a;->i:I

    invoke-static {p2, v2}, Landroid/support/v4/i/ay;->a(Landroid/view/MotionEvent;I)I

    move-result v2

    if-ltz v2, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-static {v3, v1, p2, v2}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/a/a;ILandroid/view/MotionEvent;I)Z

    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    iget-object v3, v3, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    if-eqz v3, :cond_1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-static {v1}, Landroid/support/v7/widget/a/a;->f(Landroid/support/v7/widget/a/a;)Landroid/view/VelocityTracker;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-static {v1}, Landroid/support/v7/widget/a/a;->f(Landroid/support/v7/widget/a/a;)Landroid/view/VelocityTracker;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-static {v2}, Landroid/support/v7/widget/a/a;->c(Landroid/support/v7/widget/a/a;)Landroid/support/v7/widget/ch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/ch;->getMaxFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/do;I)V

    iget-object v0, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    iput v4, v0, Landroid/support/v7/widget/a/a;->i:I

    goto :goto_0

    :pswitch_2
    if-ltz v2, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    iget-object v1, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    iget v1, v1, Landroid/support/v7/widget/a/a;->l:I

    invoke-static {v0, p2, v1, v2}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/a/a;Landroid/view/MotionEvent;II)V

    iget-object v0, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-static {v0, v3}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/do;)V

    iget-object v0, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-static {v0}, Landroid/support/v7/widget/a/a;->c(Landroid/support/v7/widget/a/a;)Landroid/support/v7/widget/ch;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-static {v1}, Landroid/support/v7/widget/a/a;->b(Landroid/support/v7/widget/a/a;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ch;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-static {v0}, Landroid/support/v7/widget/a/a;->b(Landroid/support/v7/widget/a/a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-static {v0}, Landroid/support/v7/widget/a/a;->c(Landroid/support/v7/widget/a/a;)Landroid/support/v7/widget/ch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ch;->invalidate()V

    goto :goto_0

    :pswitch_3
    invoke-static {p2}, Landroid/support/v4/i/ay;->b(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-static {p2, v1}, Landroid/support/v4/i/ay;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    iget v3, v3, Landroid/support/v7/widget/a/a;->i:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-static {v2}, Landroid/support/v7/widget/a/a;->f(Landroid/support/v7/widget/a/a;)Landroid/view/VelocityTracker;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-static {v2}, Landroid/support/v7/widget/a/a;->f(Landroid/support/v7/widget/a/a;)Landroid/view/VelocityTracker;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-static {v3}, Landroid/support/v7/widget/a/a;->c(Landroid/support/v7/widget/a/a;)Landroid/support/v7/widget/ch;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/ch;->getMaxFlingVelocity()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v5, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    :cond_5
    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    iget-object v2, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    invoke-static {p2, v0}, Landroid/support/v4/i/ay;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, v2, Landroid/support/v7/widget/a/a;->i:I

    iget-object v0, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    iget-object v2, p0, Landroid/support/v7/widget/a/c;->a:Landroid/support/v7/widget/a/a;

    iget v2, v2, Landroid/support/v7/widget/a/a;->l:I

    invoke-static {v0, p2, v2, v1}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/a/a;Landroid/view/MotionEvent;II)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
