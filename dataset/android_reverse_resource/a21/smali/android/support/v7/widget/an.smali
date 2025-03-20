.class Landroid/support/v7/widget/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/al;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/al;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/an;->a:Landroid/support/v7/widget/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/an;->a:Landroid/support/v7/widget/al;

    iget-object v1, p0, Landroid/support/v7/widget/an;->a:Landroid/support/v7/widget/al;

    iget-object v1, v1, Landroid/support/v7/widget/al;->a:Landroid/support/v7/widget/ai;

    invoke-static {v0, v1}, Landroid/support/v7/widget/al;->a(Landroid/support/v7/widget/al;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/an;->a:Landroid/support/v7/widget/al;

    invoke-virtual {v0}, Landroid/support/v7/widget/al;->i()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/an;->a:Landroid/support/v7/widget/al;

    invoke-virtual {v0}, Landroid/support/v7/widget/al;->b()V

    iget-object v0, p0, Landroid/support/v7/widget/an;->a:Landroid/support/v7/widget/al;

    invoke-static {v0}, Landroid/support/v7/widget/al;->b(Landroid/support/v7/widget/al;)V

    goto :goto_0
.end method
