.class public Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecyclerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field description:Landroid/widget/TextView;

.field dragHandler:Landroid/widget/ImageView;

.field quantity:Landroid/widget/TextView;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 163
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 164
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;->view:Landroid/view/View;

    const v0, 0x7f0800bd

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;->description:Landroid/widget/TextView;

    const v0, 0x7f0800bf

    .line 166
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;->quantity:Landroid/widget/TextView;

    const v0, 0x7f08004e

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;->dragHandler:Landroid/widget/ImageView;

    return-void
.end method
