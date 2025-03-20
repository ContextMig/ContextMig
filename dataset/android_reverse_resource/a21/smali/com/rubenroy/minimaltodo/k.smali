.class public Lcom/rubenroy/minimaltodo/k;
.super Landroid/support/v7/widget/a/g;


# instance fields
.field private a:Lcom/rubenroy/minimaltodo/l;


# direct methods
.method public constructor <init>(Lcom/rubenroy/minimaltodo/l;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/a/g;-><init>()V

    iput-object p1, p0, Lcom/rubenroy/minimaltodo/k;->a:Lcom/rubenroy/minimaltodo/l;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;)I
    .locals 2

    const/4 v0, 0x3

    const/16 v1, 0x30

    invoke-static {v0, v1}, Lcom/rubenroy/minimaltodo/k;->b(II)I

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/widget/do;I)V
    .locals 2

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/k;->a:Lcom/rubenroy/minimaltodo/l;

    invoke-virtual {p1}, Landroid/support/v7/widget/do;->e()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/rubenroy/minimaltodo/l;->a_(I)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;Landroid/support/v7/widget/do;)Z
    .locals 3

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/k;->a:Lcom/rubenroy/minimaltodo/l;

    invoke-virtual {p2}, Landroid/support/v7/widget/do;->e()I

    move-result v1

    invoke-virtual {p3}, Landroid/support/v7/widget/do;->e()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/rubenroy/minimaltodo/l;->a_(II)V

    const/4 v0, 0x1

    return v0
.end method
