.class final Ldouzifly/list/widget/ActionPanel$d;
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

    iput-object p1, p0, Ldouzifly/list/widget/ActionPanel$d;->a:Ldouzifly/list/widget/ActionPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Ldouzifly/list/widget/ActionPanel$d;->a:Ldouzifly/list/widget/ActionPanel;

    iget-object v1, p0, Ldouzifly/list/widget/ActionPanel$d;->a:Ldouzifly/list/widget/ActionPanel;

    invoke-virtual {v1}, Ldouzifly/list/widget/ActionPanel;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Ldouzifly/list/widget/ActionPanel$d;->a:Ldouzifly/list/widget/ActionPanel;

    invoke-virtual {v2}, Ldouzifly/list/widget/ActionPanel;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v4, 0x4

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Ldouzifly/list/widget/ActionPanel;->a(Ldouzifly/list/widget/ActionPanel;IILb/d/a/a;ILjava/lang/Object;)V

    return-void
.end method
