.class final Ldouzifly/list/widget/ActionPanel$f$1;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/widget/ActionPanel$f;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/widget/ActionPanel$f;


# direct methods
.method constructor <init>(Ldouzifly/list/widget/ActionPanel$f;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/widget/ActionPanel$f$1;->a:Ldouzifly/list/widget/ActionPanel$f;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/widget/ActionPanel$f$1;->b()V

    sget-object v0, Lb/g;->a:Lb/g;

    return-object v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Ldouzifly/list/widget/ActionPanel$f$1;->a:Ldouzifly/list/widget/ActionPanel$f;

    iget-object v0, v0, Ldouzifly/list/widget/ActionPanel$f;->a:Ldouzifly/list/widget/ActionPanel;

    invoke-virtual {v0}, Ldouzifly/list/widget/ActionPanel;->getOnDoneListener()Lb/d/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Ldouzifly/list/widget/ActionPanel$f$1;->a:Ldouzifly/list/widget/ActionPanel$f;

    iget-object v1, v1, Ldouzifly/list/widget/ActionPanel$f;->a:Ldouzifly/list/widget/ActionPanel;

    invoke-virtual {v1}, Ldouzifly/list/widget/ActionPanel;->getThing()Ldouzifly/list/b/b;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_0
    invoke-interface {v0, v1}, Lb/d/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g;

    :cond_1
    return-void
.end method
