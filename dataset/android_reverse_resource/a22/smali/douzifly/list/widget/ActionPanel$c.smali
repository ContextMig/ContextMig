.class final Ldouzifly/list/widget/ActionPanel$c;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/widget/ActionPanel;->a(IILb/d/a/a;)V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/widget/ActionPanel;

.field final synthetic b:Lb/d/a/a;


# direct methods
.method constructor <init>(Ldouzifly/list/widget/ActionPanel;Lb/d/a/a;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/widget/ActionPanel$c;->a:Ldouzifly/list/widget/ActionPanel;

    iput-object p2, p0, Ldouzifly/list/widget/ActionPanel$c;->b:Lb/d/a/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/widget/ActionPanel$c;->b()V

    sget-object v0, Lb/g;->a:Lb/g;

    return-object v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Ldouzifly/list/widget/ActionPanel$c;->a:Ldouzifly/list/widget/ActionPanel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ldouzifly/list/widget/ActionPanel;->setVisibility(I)V

    iget-object v0, p0, Ldouzifly/list/widget/ActionPanel$c;->b:Lb/d/a/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb/d/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g;

    :cond_0
    iget-object v0, p0, Ldouzifly/list/widget/ActionPanel$c;->a:Ldouzifly/list/widget/ActionPanel;

    invoke-virtual {v0}, Ldouzifly/list/widget/ActionPanel;->getOnHide()Lb/d/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lb/d/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g;

    :cond_1
    return-void
.end method
