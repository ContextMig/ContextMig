.class public Lcom/rubenroy/minimaltodo/q;
.super Landroid/support/v7/widget/do;


# instance fields
.field l:Landroid/view/View;

.field m:Landroid/widget/LinearLayout;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/ImageView;

.field p:Landroid/widget/TextView;

.field final synthetic q:Lcom/rubenroy/minimaltodo/o;


# direct methods
.method public constructor <init>(Lcom/rubenroy/minimaltodo/o;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/rubenroy/minimaltodo/q;->q:Lcom/rubenroy/minimaltodo/o;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/do;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/rubenroy/minimaltodo/q;->l:Landroid/view/View;

    new-instance v0, Lcom/rubenroy/minimaltodo/r;

    invoke-direct {v0, p0, p1}, Lcom/rubenroy/minimaltodo/r;-><init>(Lcom/rubenroy/minimaltodo/q;Lcom/rubenroy/minimaltodo/o;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e008a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/q;->n:Landroid/widget/TextView;

    const v0, 0x7f0e008b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/q;->p:Landroid/widget/TextView;

    const v0, 0x7f0e0089

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/q;->o:Landroid/widget/ImageView;

    const v0, 0x7f0e0088

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/q;->m:Landroid/widget/LinearLayout;

    return-void
.end method
