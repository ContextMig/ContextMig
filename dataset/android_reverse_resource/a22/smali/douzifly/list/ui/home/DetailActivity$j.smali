.class final Ldouzifly/list/ui/home/DetailActivity$j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/DetailActivity;->t()V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/DetailActivity;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/DetailActivity;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/ui/home/DetailActivity$j;->a:Ldouzifly/list/ui/home/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v0, Ldouzifly/list/ui/home/DetailActivity;->a:Ldouzifly/list/ui/home/a;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/a;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity$j;->a:Ldouzifly/list/ui/home/DetailActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/DetailActivity;->a()Ldouzifly/list/b/b;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_0
    invoke-virtual {v0}, Ldouzifly/list/b/b;->getId()Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity$j;->a:Ldouzifly/list/ui/home/DetailActivity;

    sget-object v2, Ldouzifly/list/ui/home/DetailActivity;->a:Ldouzifly/list/ui/home/a;

    invoke-virtual {v2}, Ldouzifly/list/ui/home/a;->b()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Ldouzifly/list/ui/home/DetailActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity$j;->a:Ldouzifly/list/ui/home/DetailActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/DetailActivity;->l()V

    return-void
.end method
