.class final Ldouzifly/list/widget/ActionPanel$f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/widget/ActionPanel;->onFinishInflate()V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/widget/ActionPanel;


# direct methods
.method constructor <init>(Ldouzifly/list/widget/ActionPanel;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/widget/ActionPanel$f;->a:Ldouzifly/list/widget/ActionPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Ldouzifly/list/widget/ActionPanel$f;->a:Ldouzifly/list/widget/ActionPanel;

    invoke-virtual {v1}, Ldouzifly/list/widget/ActionPanel;->getActionDone()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->getLocationInWindow([I)V

    iget-object v1, p0, Ldouzifly/list/widget/ActionPanel$f;->a:Ldouzifly/list/widget/ActionPanel;

    const/4 v2, 0x0

    aget v2, v0, v2

    iget-object v3, p0, Ldouzifly/list/widget/ActionPanel$f;->a:Ldouzifly/list/widget/ActionPanel;

    invoke-virtual {v3}, Ldouzifly/list/widget/ActionPanel;->getActionDone()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/clans/fab/FloatingActionButton;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/4 v3, 0x1

    aget v0, v0, v3

    iget-object v3, p0, Ldouzifly/list/widget/ActionPanel$f;->a:Ldouzifly/list/widget/ActionPanel;

    invoke-virtual {v3}, Ldouzifly/list/widget/ActionPanel;->getActionDone()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/clans/fab/FloatingActionButton;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    new-instance v0, Ldouzifly/list/widget/ActionPanel$f$1;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/ActionPanel$f$1;-><init>(Ldouzifly/list/widget/ActionPanel$f;)V

    check-cast v0, Lb/d/a/a;

    invoke-virtual {v1, v2, v3, v0}, Ldouzifly/list/widget/ActionPanel;->a(IILb/d/a/a;)V

    return-void
.end method
