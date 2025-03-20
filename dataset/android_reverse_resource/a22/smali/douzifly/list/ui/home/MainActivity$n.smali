.class final Ldouzifly/list/ui/home/MainActivity$n;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/MainActivity;->g()V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/MainActivity;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/MainActivity;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/ui/home/MainActivity$n;->a:Ldouzifly/list/ui/home/MainActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity$n;->b()V

    sget-object v0, Lb/g;->a:Lb/g;

    return-object v0
.end method

.method public final b()V
    .locals 4

    const-string v0, "refreshList"

    sget-object v1, Ldouzifly/list/ui/home/MainActivity;->a:Ldouzifly/list/ui/home/g;

    invoke-virtual {v1}, Ldouzifly/list/ui/home/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity$n;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/MainActivity;->i()V

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity$n;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-static {v0}, Ldouzifly/list/ui/home/MainActivity;->a(Ldouzifly/list/ui/home/MainActivity;)V

    sget-object v0, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v0}, Ldouzifly/list/d/a;->m()J

    move-result-wide v0

    sget-object v2, Ldouzifly/list/b/c;->a:Ldouzifly/list/b/d;

    invoke-virtual {v2}, Ldouzifly/list/b/d;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity$n;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/MainActivity;->e()Ldouzifly/list/widget/TitleLayout;

    move-result-object v0

    sget-object v1, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    invoke-virtual {v1}, Ldouzifly/list/b/e;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ldouzifly/list/widget/TitleLayout;->setCount(I)V

    :goto_0
    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity$n;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/MainActivity;->a()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type douzifly.list.ui.home.MainActivity.ThingsAdapter"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity$n;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/MainActivity;->e()Ldouzifly/list/widget/TitleLayout;

    move-result-object v1

    sget-object v0, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    sget-object v2, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v2}, Ldouzifly/list/d/a;->m()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldouzifly/list/b/e;->b(J)Ldouzifly/list/b/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ldouzifly/list/b/c;->e()I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Ldouzifly/list/widget/TitleLayout;->setCount(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    check-cast v0, Ldouzifly/list/ui/home/h;

    sget-object v1, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    sget-object v2, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v2}, Ldouzifly/list/d/a;->m()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ldouzifly/list/b/e;->a(J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldouzifly/list/ui/home/h;->a(Ljava/util/List;)V

    return-void
.end method
