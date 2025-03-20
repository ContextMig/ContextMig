.class final Ldouzifly/list/ui/home/DetailActivity$o;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/DetailActivity;->r()V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/DetailActivity;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/DetailActivity;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/ui/home/DetailActivity$o;->a:Ldouzifly/list/ui/home/DetailActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity$o;->b()V

    sget-object v0, Lb/g;->a:Lb/g;

    return-object v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity$o;->a:Ldouzifly/list/ui/home/DetailActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/DetailActivity;->i()Ldouzifly/list/widget/ColorPicker;

    move-result-object v0

    iget-object v1, p0, Ldouzifly/list/ui/home/DetailActivity$o;->a:Ldouzifly/list/ui/home/DetailActivity;

    invoke-virtual {v1}, Ldouzifly/list/ui/home/DetailActivity;->a()Ldouzifly/list/b/b;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_0
    invoke-virtual {v1}, Ldouzifly/list/b/b;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ldouzifly/list/widget/ColorPicker;->setSelected(I)V

    return-void
.end method
