.class public Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;
.super Landroid/support/v7/widget/ch;


# instance fields
.field private i:Landroid/view/View;

.field private j:Landroid/support/v7/widget/cq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ch;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/rubenroy/minimaltodo/t;

    invoke-direct {v0, p0}, Lcom/rubenroy/minimaltodo/t;-><init>(Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;)V

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;->j:Landroid/support/v7/widget/cq;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/ch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/rubenroy/minimaltodo/t;

    invoke-direct {v0, p0}, Lcom/rubenroy/minimaltodo/t;-><init>(Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;)V

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;->j:Landroid/support/v7/widget/cq;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/ch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/rubenroy/minimaltodo/t;

    invoke-direct {v0, p0}, Lcom/rubenroy/minimaltodo/t;-><init>(Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;)V

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;->j:Landroid/support/v7/widget/cq;

    return-void
.end method


# virtual methods
.method public s()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;->getAdapter()Landroid/support/v7/widget/co;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;->i:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/co;->a()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;->setVisibility(I)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v7/widget/co;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/ch;->setAdapter(Landroid/support/v7/widget/co;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;->j:Landroid/support/v7/widget/cq;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/co;->a(Landroid/support/v7/widget/cq;)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;->j:Landroid/support/v7/widget/cq;

    invoke-virtual {v0}, Landroid/support/v7/widget/cq;->a()V

    :cond_0
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;->i:Landroid/view/View;

    return-void
.end method
