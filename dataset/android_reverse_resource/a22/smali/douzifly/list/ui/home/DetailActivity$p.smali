.class final Ldouzifly/list/ui/home/DetailActivity$p;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/DetailActivity;-><init>()V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/DetailActivity;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/DetailActivity;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/ui/home/DetailActivity$p;->a:Ldouzifly/list/ui/home/DetailActivity;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Ldouzifly/list/ui/home/DetailActivity$p;->a(Landroid/view/View;)V

    sget-object v0, Lb/g;->a:Lb/g;

    return-object v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity$p;->a:Ldouzifly/list/ui/home/DetailActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/DetailActivity;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, v0}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity$p;->a:Ldouzifly/list/ui/home/DetailActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldouzifly/list/ui/home/DetailActivity;->a(Z)V

    :cond_0
    return-void
.end method
