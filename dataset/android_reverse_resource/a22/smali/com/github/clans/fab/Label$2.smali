.class Lcom/github/clans/fab/Label$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/clans/fab/Label;
.end annotation


# instance fields
.field final synthetic a:Lcom/github/clans/fab/Label;


# direct methods
.method constructor <init>(Lcom/github/clans/fab/Label;)V
    .locals 0

    iput-object p1, p0, Lcom/github/clans/fab/Label$2;->a:Lcom/github/clans/fab/Label;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/Label$2;->a:Lcom/github/clans/fab/Label;

    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->d()V

    iget-object v0, p0, Lcom/github/clans/fab/Label$2;->a:Lcom/github/clans/fab/Label;

    invoke-static {v0}, Lcom/github/clans/fab/Label;->a(Lcom/github/clans/fab/Label;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/clans/fab/Label$2;->a:Lcom/github/clans/fab/Label;

    invoke-static {v0}, Lcom/github/clans/fab/Label;->a(Lcom/github/clans/fab/Label;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->f()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/Label$2;->a:Lcom/github/clans/fab/Label;

    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->e()V

    iget-object v0, p0, Lcom/github/clans/fab/Label$2;->a:Lcom/github/clans/fab/Label;

    invoke-static {v0}, Lcom/github/clans/fab/Label;->a(Lcom/github/clans/fab/Label;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/clans/fab/Label$2;->a:Lcom/github/clans/fab/Label;

    invoke-static {v0}, Lcom/github/clans/fab/Label;->a(Lcom/github/clans/fab/Label;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->g()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
