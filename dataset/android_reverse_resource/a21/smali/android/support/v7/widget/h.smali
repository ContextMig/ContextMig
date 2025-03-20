.class Landroid/support/v7/widget/h;
.super Landroid/support/v7/internal/view/menu/v;


# instance fields
.field final synthetic c:Landroid/support/v7/widget/a;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/a;Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;Landroid/view/View;Z)V
    .locals 6

    iput-object p1, p0, Landroid/support/v7/widget/h;->c:Landroid/support/v7/widget/a;

    sget v5, Landroid/support/v7/b/b;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/internal/view/menu/v;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;Landroid/view/View;ZI)V

    const v0, 0x800005

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/h;->a(I)V

    iget-object v0, p1, Landroid/support/v7/widget/a;->g:Landroid/support/v7/widget/i;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/h;->a(Landroid/support/v7/internal/view/menu/y;)V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/internal/view/menu/v;->onDismiss()V

    iget-object v0, p0, Landroid/support/v7/widget/h;->c:Landroid/support/v7/widget/a;

    invoke-static {v0}, Landroid/support/v7/widget/a;->c(Landroid/support/v7/widget/a;)Landroid/support/v7/internal/view/menu/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/h;->c:Landroid/support/v7/widget/a;

    invoke-static {v0}, Landroid/support/v7/widget/a;->d(Landroid/support/v7/widget/a;)Landroid/support/v7/internal/view/menu/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->close()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/h;->c:Landroid/support/v7/widget/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/a;Landroid/support/v7/widget/h;)Landroid/support/v7/widget/h;

    return-void
.end method
