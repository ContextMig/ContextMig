.class Landroid/support/v7/widget/a/j;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/a/a;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/a/a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/a/j;->a:Landroid/support/v7/widget/a/a;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/a/b;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/a/j;-><init>(Landroid/support/v7/widget/a/a;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/a/j;->a:Landroid/support/v7/widget/a/a;

    invoke-static {v0, p1}, Landroid/support/v7/widget/a/a;->b(Landroid/support/v7/widget/a/a;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/a/j;->a:Landroid/support/v7/widget/a/a;

    invoke-static {v1}, Landroid/support/v7/widget/a/a;->c(Landroid/support/v7/widget/a/a;)Landroid/support/v7/widget/ch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ch;->a(Landroid/view/View;)Landroid/support/v7/widget/do;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/a/j;->a:Landroid/support/v7/widget/a/a;

    iget-object v1, v1, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/g;

    iget-object v2, p0, Landroid/support/v7/widget/a/j;->a:Landroid/support/v7/widget/a/a;

    invoke-static {v2}, Landroid/support/v7/widget/a/a;->c(Landroid/support/v7/widget/a/a;)Landroid/support/v7/widget/ch;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/a/g;Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/support/v4/i/ay;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/a/j;->a:Landroid/support/v7/widget/a/a;

    iget v2, v2, Landroid/support/v7/widget/a/a;->i:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/a/j;->a:Landroid/support/v7/widget/a/a;

    iget v1, v1, Landroid/support/v7/widget/a/a;->i:I

    invoke-static {p1, v1}, Landroid/support/v4/i/ay;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/support/v4/i/ay;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    invoke-static {p1, v1}, Landroid/support/v4/i/ay;->d(Landroid/view/MotionEvent;I)F

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/a/j;->a:Landroid/support/v7/widget/a/a;

    iput v2, v3, Landroid/support/v7/widget/a/a;->c:F

    iget-object v2, p0, Landroid/support/v7/widget/a/j;->a:Landroid/support/v7/widget/a/a;

    iput v1, v2, Landroid/support/v7/widget/a/a;->d:F

    iget-object v1, p0, Landroid/support/v7/widget/a/j;->a:Landroid/support/v7/widget/a/a;

    iget-object v2, p0, Landroid/support/v7/widget/a/j;->a:Landroid/support/v7/widget/a/a;

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/widget/a/a;->f:F

    iput v3, v1, Landroid/support/v7/widget/a/a;->e:F

    iget-object v1, p0, Landroid/support/v7/widget/a/j;->a:Landroid/support/v7/widget/a/a;

    iget-object v1, v1, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/g;

    invoke-virtual {v1}, Landroid/support/v7/widget/a/g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/a/j;->a:Landroid/support/v7/widget/a/a;

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/do;I)V

    goto :goto_0
.end method
