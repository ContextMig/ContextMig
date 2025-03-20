.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;
.super Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/ui/AbstractViewHolder;
.source "DeleteProductsItemViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/ui/AbstractViewHolder",
        "<",
        "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;",
        "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsCache;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private deleteProductItemCache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x664e95669ec5a7cbL    # -6.40443959093529E-185

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder"

    const/16 v3, 0x20

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/view/View;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsCache;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-direct {p0, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/ui/AbstractViewHolder;-><init>(Landroid/view/View;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/business/PFACache;)V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 26
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;

    invoke-direct {v1, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;->deleteProductItemCache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;

    .line 27
    aput-boolean v2, v0, v2

    return-void
.end method

.method static synthetic access$000(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;->updateVisibilityFormat(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V

    const/16 v1, 0x1f

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private updateVisibilityFormat(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;->$jacocoInit()[Z

    move-result-object v1

    .line 50
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;->deleteProductItemCache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;

    invoke-virtual {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;->getProductCard()Landroid/support/v7/widget/CardView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/CardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v0, 0x8

    aput-boolean v7, v1, v0

    .line 51
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;->deleteProductItemCache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;

    invoke-virtual {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;->getProductNameTextView()Landroid/widget/TextView;

    move-result-object v3

    const/16 v0, 0x9

    aput-boolean v7, v1, v0

    .line 52
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;->deleteProductItemCache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;

    invoke-virtual {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;->getProductQuantityTextView()Landroid/widget/TextView;

    move-result-object v4

    const/16 v0, 0xa

    aput-boolean v7, v1, v0

    .line 53
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;->deleteProductItemCache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;

    invoke-virtual {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatCheckBox;

    const/16 v5, 0xb

    aput-boolean v7, v1, v5

    .line 54
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->isSelectedForDeletion()Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xc

    aput-boolean v7, v1, v5

    .line 56
    const v5, 0x7f0f0056

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v6, 0xd

    aput-boolean v7, v1, v6

    .line 57
    const v6, 0x7f0f0040

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/16 v6, 0xe

    aput-boolean v7, v1, v6

    .line 59
    iget-object v6, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;->deleteProductItemCache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;

    invoke-virtual {v6}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;->getProductCard()Landroid/support/v7/widget/CardView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    const/16 v5, 0xf

    aput-boolean v7, v1, v5

    .line 60
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0x10

    aput-boolean v7, v1, v5

    .line 61
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0x11

    aput-boolean v7, v1, v5

    .line 62
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/AppCompatCheckBox;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    const/16 v0, 0x12

    aput-boolean v7, v1, v0

    .line 63
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    const/16 v0, 0x13

    aput-boolean v7, v1, v0

    .line 64
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 65
    const/16 v0, 0x14

    aput-boolean v7, v1, v0

    .line 78
    :goto_0
    const/16 v0, 0x1d

    aput-boolean v7, v1, v0

    return-void

    .line 68
    :cond_0
    const v5, 0x7f0f0057

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v6, 0x15

    aput-boolean v7, v1, v6

    .line 69
    const v6, 0x7f0f000b

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/16 v6, 0x16

    aput-boolean v7, v1, v6

    .line 71
    iget-object v6, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;->deleteProductItemCache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;

    invoke-virtual {v6}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;->getProductCard()Landroid/support/v7/widget/CardView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    const/16 v5, 0x17

    aput-boolean v7, v1, v5

    .line 72
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0x18

    aput-boolean v7, v1, v5

    .line 73
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0x19

    aput-boolean v7, v1, v5

    .line 74
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/AppCompatCheckBox;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    const/16 v0, 0x1a

    aput-boolean v7, v1, v0

    .line 75
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    const/16 v0, 0x1b

    aput-boolean v7, v1, v0

    .line 76
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    const/16 v0, 0x1c

    aput-boolean v7, v1, v0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic processItem(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/business/AbstractItem;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    check-cast p1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;

    invoke-virtual {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;->processItem(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V

    const/16 v1, 0x1e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public processItem(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;->deleteProductItemCache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;->getProductNameTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 32
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;->deleteProductItemCache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;->getProductQuantityTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getQuantity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 33
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;->deleteProductItemCache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 34
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;->updateVisibilityFormat(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 36
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;->deleteProductItemCache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;->getProductCard()Landroid/support/v7/widget/CardView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/CardView;->setAlpha(F)V

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    .line 37
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;->deleteProductItemCache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;->getProductCard()Landroid/support/v7/widget/CardView;

    move-result-object v1

    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder$1;

    invoke-direct {v2, p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder$1;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    return-void
.end method
