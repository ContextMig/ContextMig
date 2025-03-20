.class Landroid/support/v7/internal/a/l;
.super Landroid/support/v4/i/ea;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/a/j;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/a/j;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/a/l;->a:Landroid/support/v7/internal/a/j;

    invoke-direct {p0}, Landroid/support/v4/i/ea;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/internal/a/l;->a:Landroid/support/v7/internal/a/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/internal/a/j;->a(Landroid/support/v7/internal/a/j;Landroid/support/v7/internal/view/i;)Landroid/support/v7/internal/view/i;

    iget-object v0, p0, Landroid/support/v7/internal/a/l;->a:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->c(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->requestLayout()V

    return-void
.end method
