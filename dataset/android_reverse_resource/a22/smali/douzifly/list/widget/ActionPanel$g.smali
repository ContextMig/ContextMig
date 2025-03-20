.class final Ldouzifly/list/widget/ActionPanel$g;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/widget/ActionPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/widget/ActionPanel;


# direct methods
.method constructor <init>(Ldouzifly/list/widget/ActionPanel;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/widget/ActionPanel$g;->a:Ldouzifly/list/widget/ActionPanel;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/widget/ActionPanel$g;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Ldouzifly/list/widget/ActionPanel$g;->a:Ldouzifly/list/widget/ActionPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldouzifly/list/widget/ActionPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
