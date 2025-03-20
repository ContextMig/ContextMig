.class final Ldouzifly/list/ui/home/MainActivity$e;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/MainActivity;-><init>()V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/MainActivity;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/MainActivity;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/ui/home/MainActivity$e;->a:Ldouzifly/list/ui/home/MainActivity;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Ldouzifly/list/ui/home/MainActivity$e;->a(Landroid/view/View;)V

    sget-object v0, Lb/g;->a:Lb/g;

    return-object v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 13

    const/16 v5, 0xc8

    const/4 v4, 0x1

    const/4 v10, 0x0

    const-string v0, "it"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity$e;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/MainActivity;->c()Ldouzifly/list/widget/InputPanel;

    move-result-object v0

    invoke-virtual {v0}, Ldouzifly/list/widget/InputPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity$e;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/MainActivity;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->getLeft()I

    move-result v0

    iget-object v1, p0, Ldouzifly/list/ui/home/MainActivity$e;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v1}, Ldouzifly/list/ui/home/MainActivity;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/clans/fab/FloatingActionButton;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x2

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity$e;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/MainActivity;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->getTop()I

    move-result v0

    iget-object v2, p0, Ldouzifly/list/ui/home/MainActivity$e;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v2}, Ldouzifly/list/ui/home/MainActivity;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/clans/fab/FloatingActionButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity$e;->a:Ldouzifly/list/ui/home/MainActivity;

    iget-object v3, p0, Ldouzifly/list/ui/home/MainActivity$e;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v3}, Ldouzifly/list/ui/home/MainActivity;->c()Ldouzifly/list/widget/InputPanel;

    move-result-object v3

    invoke-virtual {v3}, Ldouzifly/list/widget/InputPanel;->getRevealView()Landroid/view/View;

    move-result-object v3

    new-instance v6, Ldouzifly/list/ui/home/MainActivity$e$1;

    invoke-direct {v6, p0}, Ldouzifly/list/ui/home/MainActivity$e$1;-><init>(Ldouzifly/list/ui/home/MainActivity$e;)V

    check-cast v6, Lb/d/a/a;

    invoke-virtual/range {v0 .. v6}, Ldouzifly/list/ui/home/MainActivity;->a(IILandroid/view/View;ZILb/d/a/a;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity$e;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/MainActivity;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->getLeft()I

    move-result v0

    iget-object v1, p0, Ldouzifly/list/ui/home/MainActivity$e;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v1}, Ldouzifly/list/ui/home/MainActivity;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/clans/fab/FloatingActionButton;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity$e;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/MainActivity;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->getTop()I

    move-result v0

    iget-object v1, p0, Ldouzifly/list/ui/home/MainActivity$e;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v1}, Ldouzifly/list/ui/home/MainActivity;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/clans/fab/FloatingActionButton;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v8, v0, v1

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity$e;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/MainActivity;->c()Ldouzifly/list/widget/InputPanel;

    move-result-object v0

    invoke-virtual {v0, v10}, Ldouzifly/list/widget/InputPanel;->setVisibility(I)V

    iget-object v6, p0, Ldouzifly/list/ui/home/MainActivity$e;->a:Ldouzifly/list/ui/home/MainActivity;

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity$e;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/MainActivity;->c()Ldouzifly/list/widget/InputPanel;

    move-result-object v0

    invoke-virtual {v0}, Ldouzifly/list/widget/InputPanel;->getRevealView()Landroid/view/View;

    move-result-object v9

    new-instance v12, Ldouzifly/list/ui/home/MainActivity$e$2;

    invoke-direct {v12, p0}, Ldouzifly/list/ui/home/MainActivity$e$2;-><init>(Ldouzifly/list/ui/home/MainActivity$e;)V

    check-cast v12, Lb/d/a/a;

    move v11, v5

    invoke-virtual/range {v6 .. v12}, Ldouzifly/list/ui/home/MainActivity;->a(IILandroid/view/View;ZILb/d/a/a;)V

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity$e;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v0, v4}, Ldouzifly/list/ui/home/MainActivity;->a(Z)V

    sget-object v0, Ldouzifly/list/e/a;->a:Ldouzifly/list/e/a;

    sget-object v1, Ldouzifly/list/e/a;->a:Ldouzifly/list/e/a;

    invoke-virtual {v1}, Ldouzifly/list/e/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ldouzifly/list/e/a;->a(I)V

    goto :goto_0
.end method
