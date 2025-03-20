.class final Ldouzifly/list/ui/home/DetailActivity$k$1;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/DetailActivity$k;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/DetailActivity$k;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/DetailActivity$k;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/ui/home/DetailActivity$k$1;->a:Ldouzifly/list/ui/home/DetailActivity$k;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity$k$1;->b()V

    sget-object v0, Lb/g;->a:Lb/g;

    return-object v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity$k$1;->a:Ldouzifly/list/ui/home/DetailActivity$k;

    iget-object v0, v0, Ldouzifly/list/ui/home/DetailActivity$k;->a:Ldouzifly/list/ui/home/DetailActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/DetailActivity;->s()V

    new-instance v0, Ldouzifly/list/ui/home/DetailActivity$k$1$1;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/DetailActivity$k$1$1;-><init>(Ldouzifly/list/ui/home/DetailActivity$k$1;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->b(Lb/d/a/a;)V

    return-void
.end method
