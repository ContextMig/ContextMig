.class Landroid/support/v7/widget/cl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/em;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ch;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ch;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/cl;->a:Landroid/support/v7/widget/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/do;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/cl;->a:Landroid/support/v7/widget/ch;

    invoke-static {v0}, Landroid/support/v7/widget/ch;->f(Landroid/support/v7/widget/ch;)Landroid/support/v7/widget/cy;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/cl;->a:Landroid/support/v7/widget/ch;

    iget-object v2, v2, Landroid/support/v7/widget/ch;->a:Landroid/support/v7/widget/de;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/cy;->a(Landroid/view/View;Landroid/support/v7/widget/de;)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/do;Landroid/support/v7/widget/cv;Landroid/support/v7/widget/cv;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/cl;->a:Landroid/support/v7/widget/ch;

    iget-object v0, v0, Landroid/support/v7/widget/ch;->a:Landroid/support/v7/widget/de;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/de;->d(Landroid/support/v7/widget/do;)V

    iget-object v0, p0, Landroid/support/v7/widget/cl;->a:Landroid/support/v7/widget/ch;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v7/widget/ch;->a(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;Landroid/support/v7/widget/cv;Landroid/support/v7/widget/cv;)V

    return-void
.end method

.method public b(Landroid/support/v7/widget/do;Landroid/support/v7/widget/cv;Landroid/support/v7/widget/cv;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/cl;->a:Landroid/support/v7/widget/ch;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v7/widget/ch;->b(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;Landroid/support/v7/widget/cv;Landroid/support/v7/widget/cv;)V

    return-void
.end method

.method public c(Landroid/support/v7/widget/do;Landroid/support/v7/widget/cv;Landroid/support/v7/widget/cv;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/do;->a(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/cl;->a:Landroid/support/v7/widget/ch;

    invoke-static {v0}, Landroid/support/v7/widget/ch;->d(Landroid/support/v7/widget/ch;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/cl;->a:Landroid/support/v7/widget/ch;

    iget-object v0, v0, Landroid/support/v7/widget/ch;->e:Landroid/support/v7/widget/cs;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/support/v7/widget/cs;->a(Landroid/support/v7/widget/do;Landroid/support/v7/widget/do;Landroid/support/v7/widget/cv;Landroid/support/v7/widget/cv;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cl;->a:Landroid/support/v7/widget/ch;

    invoke-static {v0}, Landroid/support/v7/widget/ch;->e(Landroid/support/v7/widget/ch;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/cl;->a:Landroid/support/v7/widget/ch;

    iget-object v0, v0, Landroid/support/v7/widget/ch;->e:Landroid/support/v7/widget/cs;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/cs;->c(Landroid/support/v7/widget/do;Landroid/support/v7/widget/cv;Landroid/support/v7/widget/cv;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cl;->a:Landroid/support/v7/widget/ch;

    invoke-static {v0}, Landroid/support/v7/widget/ch;->e(Landroid/support/v7/widget/ch;)V

    goto :goto_0
.end method
