.class Landroid/support/v7/widget/cn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/q;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ch;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ch;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v7/widget/do;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/ch;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/ch;->a(IZ)Landroid/support/v7/widget/do;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/ch;

    iget-object v2, v2, Landroid/support/v7/widget/ch;->c:Landroid/support/v7/widget/as;

    iget-object v3, v1, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/as;->c(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public a(II)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/ch;

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/ch;->a(IIZ)V

    iget-object v0, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/ch;

    iput-boolean v1, v0, Landroid/support/v7/widget/ch;->g:Z

    iget-object v0, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/ch;

    iget-object v0, v0, Landroid/support/v7/widget/ch;->f:Landroid/support/v7/widget/dl;

    invoke-static {v0, p2}, Landroid/support/v7/widget/dl;->a(Landroid/support/v7/widget/dl;I)I

    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/ch;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/ch;->a(IILjava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/ch;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/ch;->h:Z

    return-void
.end method

.method public a(Landroid/support/v7/widget/r;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/cn;->c(Landroid/support/v7/widget/r;)V

    return-void
.end method

.method public b(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/ch;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/ch;->a(IIZ)V

    iget-object v0, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/ch;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/ch;->g:Z

    return-void
.end method

.method public b(Landroid/support/v7/widget/r;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/cn;->c(Landroid/support/v7/widget/r;)V

    return-void
.end method

.method public c(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/ch;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ch;->e(II)V

    iget-object v0, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/ch;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/ch;->g:Z

    return-void
.end method

.method c(Landroid/support/v7/widget/r;)V
    .locals 5

    iget v0, p1, Landroid/support/v7/widget/r;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/ch;

    invoke-static {v0}, Landroid/support/v7/widget/ch;->f(Landroid/support/v7/widget/ch;)Landroid/support/v7/widget/cy;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/ch;

    iget v2, p1, Landroid/support/v7/widget/r;->b:I

    iget v3, p1, Landroid/support/v7/widget/r;->d:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/cy;->a(Landroid/support/v7/widget/ch;II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/ch;

    invoke-static {v0}, Landroid/support/v7/widget/ch;->f(Landroid/support/v7/widget/ch;)Landroid/support/v7/widget/cy;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/ch;

    iget v2, p1, Landroid/support/v7/widget/r;->b:I

    iget v3, p1, Landroid/support/v7/widget/r;->d:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/cy;->b(Landroid/support/v7/widget/ch;II)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/ch;

    invoke-static {v0}, Landroid/support/v7/widget/ch;->f(Landroid/support/v7/widget/ch;)Landroid/support/v7/widget/cy;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/ch;

    iget v2, p1, Landroid/support/v7/widget/r;->b:I

    iget v3, p1, Landroid/support/v7/widget/r;->d:I

    iget-object v4, p1, Landroid/support/v7/widget/r;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/cy;->a(Landroid/support/v7/widget/ch;IILjava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/ch;

    invoke-static {v0}, Landroid/support/v7/widget/ch;->f(Landroid/support/v7/widget/ch;)Landroid/support/v7/widget/cy;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/ch;

    iget v2, p1, Landroid/support/v7/widget/r;->b:I

    iget v3, p1, Landroid/support/v7/widget/r;->d:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/cy;->a(Landroid/support/v7/widget/ch;III)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public d(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/ch;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ch;->d(II)V

    iget-object v0, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/ch;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/ch;->g:Z

    return-void
.end method
