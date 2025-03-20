.class Landroid/support/v7/widget/aj;
.super Landroid/support/v7/widget/bu;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/al;

.field final synthetic b:Landroid/support/v7/widget/ai;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ai;Landroid/view/View;Landroid/support/v7/widget/al;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/aj;->b:Landroid/support/v7/widget/ai;

    iput-object p3, p0, Landroid/support/v7/widget/aj;->a:Landroid/support/v7/widget/al;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/bu;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/widget/bp;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/aj;->a:Landroid/support/v7/widget/al;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/aj;->b:Landroid/support/v7/widget/ai;

    invoke-static {v0}, Landroid/support/v7/widget/ai;->a(Landroid/support/v7/widget/ai;)Landroid/support/v7/widget/al;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/al;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aj;->b:Landroid/support/v7/widget/ai;

    invoke-static {v0}, Landroid/support/v7/widget/ai;->a(Landroid/support/v7/widget/ai;)Landroid/support/v7/widget/al;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/al;->c()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
