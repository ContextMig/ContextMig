.class Landroid/support/v7/widget/ek;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroid/support/v4/h/a;

.field final b:Landroid/support/v4/h/f;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/h/a;

    invoke-direct {v0}, Landroid/support/v4/h/a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ek;->a:Landroid/support/v4/h/a;

    new-instance v0, Landroid/support/v4/h/f;

    invoke-direct {v0}, Landroid/support/v4/h/f;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ek;->b:Landroid/support/v4/h/f;

    return-void
.end method


# virtual methods
.method a(Landroid/support/v7/widget/do;)Landroid/support/v7/widget/cv;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/ek;->a:Landroid/support/v4/h/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/h/a;->a(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ek;->a:Landroid/support/v4/h/a;

    invoke-virtual {v0, v2}, Landroid/support/v4/h/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/el;

    if-eqz v0, :cond_2

    iget v3, v0, Landroid/support/v7/widget/el;->a:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    iget v1, v0, Landroid/support/v7/widget/el;->a:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v0, Landroid/support/v7/widget/el;->a:I

    iget-object v1, v0, Landroid/support/v7/widget/el;->b:Landroid/support/v7/widget/cv;

    iget v3, v0, Landroid/support/v7/widget/el;->a:I

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/ek;->a:Landroid/support/v4/h/a;

    invoke-virtual {v3, v2}, Landroid/support/v4/h/a;->d(I)Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v7/widget/el;->a(Landroid/support/v7/widget/el;)V

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method a(J)Landroid/support/v7/widget/do;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ek;->b:Landroid/support/v4/h/f;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/h/f;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/do;

    return-object v0
.end method

.method a()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ek;->a:Landroid/support/v4/h/a;

    invoke-virtual {v0}, Landroid/support/v4/h/a;->clear()V

    iget-object v0, p0, Landroid/support/v7/widget/ek;->b:Landroid/support/v4/h/f;

    invoke-virtual {v0}, Landroid/support/v4/h/f;->c()V

    return-void
.end method

.method a(JLandroid/support/v7/widget/do;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ek;->b:Landroid/support/v4/h/f;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/h/f;->b(JLjava/lang/Object;)V

    return-void
.end method

.method a(Landroid/support/v7/widget/do;Landroid/support/v7/widget/cv;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ek;->a:Landroid/support/v4/h/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/h/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/el;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v7/widget/el;->a()Landroid/support/v7/widget/el;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ek;->a:Landroid/support/v4/h/a;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/h/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Landroid/support/v7/widget/el;->b:Landroid/support/v7/widget/cv;

    iget v1, v0, Landroid/support/v7/widget/el;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/support/v7/widget/el;->a:I

    return-void
.end method

.method a(Landroid/support/v7/widget/em;)V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/ek;->a:Landroid/support/v4/h/a;

    invoke-virtual {v0}, Landroid/support/v4/h/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/ek;->a:Landroid/support/v4/h/a;

    invoke-virtual {v0, v2}, Landroid/support/v4/h/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/do;

    iget-object v1, p0, Landroid/support/v7/widget/ek;->a:Landroid/support/v4/h/a;

    invoke-virtual {v1, v2}, Landroid/support/v4/h/a;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/el;

    iget v3, v1, Landroid/support/v7/widget/el;->a:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p1, v0}, Landroid/support/v7/widget/em;->a(Landroid/support/v7/widget/do;)V

    :cond_0
    :goto_1
    invoke-static {v1}, Landroid/support/v7/widget/el;->a(Landroid/support/v7/widget/el;)V

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget v3, v1, Landroid/support/v7/widget/el;->a:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    iget-object v3, v1, Landroid/support/v7/widget/el;->b:Landroid/support/v7/widget/cv;

    iget-object v4, v1, Landroid/support/v7/widget/el;->c:Landroid/support/v7/widget/cv;

    invoke-interface {p1, v0, v3, v4}, Landroid/support/v7/widget/em;->a(Landroid/support/v7/widget/do;Landroid/support/v7/widget/cv;Landroid/support/v7/widget/cv;)V

    goto :goto_1

    :cond_2
    iget v3, v1, Landroid/support/v7/widget/el;->a:I

    and-int/lit8 v3, v3, 0xe

    const/16 v4, 0xe

    if-ne v3, v4, :cond_3

    iget-object v3, v1, Landroid/support/v7/widget/el;->b:Landroid/support/v7/widget/cv;

    iget-object v4, v1, Landroid/support/v7/widget/el;->c:Landroid/support/v7/widget/cv;

    invoke-interface {p1, v0, v3, v4}, Landroid/support/v7/widget/em;->b(Landroid/support/v7/widget/do;Landroid/support/v7/widget/cv;Landroid/support/v7/widget/cv;)V

    goto :goto_1

    :cond_3
    iget v3, v1, Landroid/support/v7/widget/el;->a:I

    and-int/lit8 v3, v3, 0xc

    const/16 v4, 0xc

    if-ne v3, v4, :cond_4

    iget-object v3, v1, Landroid/support/v7/widget/el;->b:Landroid/support/v7/widget/cv;

    iget-object v4, v1, Landroid/support/v7/widget/el;->c:Landroid/support/v7/widget/cv;

    invoke-interface {p1, v0, v3, v4}, Landroid/support/v7/widget/em;->c(Landroid/support/v7/widget/do;Landroid/support/v7/widget/cv;Landroid/support/v7/widget/cv;)V

    goto :goto_1

    :cond_4
    iget v3, v1, Landroid/support/v7/widget/el;->a:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    iget-object v3, v1, Landroid/support/v7/widget/el;->b:Landroid/support/v7/widget/cv;

    const/4 v4, 0x0

    invoke-interface {p1, v0, v3, v4}, Landroid/support/v7/widget/em;->a(Landroid/support/v7/widget/do;Landroid/support/v7/widget/cv;Landroid/support/v7/widget/cv;)V

    goto :goto_1

    :cond_5
    iget v3, v1, Landroid/support/v7/widget/el;->a:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    iget-object v3, v1, Landroid/support/v7/widget/el;->b:Landroid/support/v7/widget/cv;

    iget-object v4, v1, Landroid/support/v7/widget/el;->c:Landroid/support/v7/widget/cv;

    invoke-interface {p1, v0, v3, v4}, Landroid/support/v7/widget/em;->b(Landroid/support/v7/widget/do;Landroid/support/v7/widget/cv;Landroid/support/v7/widget/cv;)V

    goto :goto_1

    :cond_6
    iget v0, v1, Landroid/support/v7/widget/el;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_7
    return-void
.end method

.method b()V
    .locals 0

    invoke-static {}, Landroid/support/v7/widget/el;->b()V

    return-void
.end method

.method b(Landroid/support/v7/widget/do;Landroid/support/v7/widget/cv;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ek;->a:Landroid/support/v4/h/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/h/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/el;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v7/widget/el;->a()Landroid/support/v7/widget/el;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ek;->a:Landroid/support/v4/h/a;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/h/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v1, v0, Landroid/support/v7/widget/el;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/el;->a:I

    iput-object p2, v0, Landroid/support/v7/widget/el;->b:Landroid/support/v7/widget/cv;

    return-void
.end method

.method b(Landroid/support/v7/widget/do;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ek;->a:Landroid/support/v4/h/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/h/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/el;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/support/v7/widget/el;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Landroid/support/v7/widget/do;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ek;->a:Landroid/support/v4/h/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/h/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/el;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v7/widget/el;->a()Landroid/support/v7/widget/el;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ek;->a:Landroid/support/v4/h/a;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/h/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v1, v0, Landroid/support/v7/widget/el;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/support/v7/widget/el;->a:I

    return-void
.end method

.method c(Landroid/support/v7/widget/do;Landroid/support/v7/widget/cv;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ek;->a:Landroid/support/v4/h/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/h/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/el;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v7/widget/el;->a()Landroid/support/v7/widget/el;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ek;->a:Landroid/support/v4/h/a;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/h/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Landroid/support/v7/widget/el;->c:Landroid/support/v7/widget/cv;

    iget v1, v0, Landroid/support/v7/widget/el;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/support/v7/widget/el;->a:I

    return-void
.end method

.method d(Landroid/support/v7/widget/do;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ek;->a:Landroid/support/v4/h/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/h/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/el;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, v0, Landroid/support/v7/widget/el;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/support/v7/widget/el;->a:I

    goto :goto_0
.end method

.method e(Landroid/support/v7/widget/do;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ek;->b:Landroid/support/v4/h/f;

    invoke-virtual {v0}, Landroid/support/v4/h/f;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ek;->b:Landroid/support/v4/h/f;

    invoke-virtual {v1, v0}, Landroid/support/v4/h/f;->c(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/ek;->b:Landroid/support/v4/h/f;

    invoke-virtual {v1, v0}, Landroid/support/v4/h/f;->a(I)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ek;->a:Landroid/support/v4/h/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/h/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/el;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/support/v7/widget/el;->a(Landroid/support/v7/widget/el;)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
