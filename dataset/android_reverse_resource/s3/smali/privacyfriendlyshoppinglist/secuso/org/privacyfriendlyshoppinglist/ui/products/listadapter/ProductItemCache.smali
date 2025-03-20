.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;
.super Ljava/lang/Object;
.source "ProductItemCache.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private checkbox:Landroid/widget/CheckBox;

.field private detailsLayout:Landroid/widget/RelativeLayout;

.field private detailsVisible:Z

.field private listDetailsTextView:Landroid/widget/TextView;

.field private plusButton:Landroid/widget/Button;

.field private productCard:Landroid/support/v7/widget/CardView;

.field private productExtraInfoTextview:Landroid/widget/TextView;

.field private productImageInDetail:Landroid/widget/ImageView;

.field private productImageInViewer:Landroid/widget/ImageView;

.field private productNameTextView:Landroid/widget/TextView;

.field private quantityTextView:Landroid/widget/TextView;

.field private showDetailsImageButton:Landroid/widget/ImageButton;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2fcd4cc23b77d545L    # 1.976862078742897E-78

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache"

    const/16 v3, 0x18

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->$jacocoInit()[Z

    move-result-object v1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aput-boolean v2, v1, v0

    .line 30
    const v0, 0x7f100091

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->productNameTextView:Landroid/widget/TextView;

    aput-boolean v2, v1, v2

    .line 31
    const v0, 0x7f100093

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->quantityTextView:Landroid/widget/TextView;

    const/4 v0, 0x2

    aput-boolean v2, v1, v0

    .line 32
    const v0, 0x7f1000cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->productExtraInfoTextview:Landroid/widget/TextView;

    const/4 v0, 0x3

    aput-boolean v2, v1, v0

    .line 33
    const v0, 0x7f100092

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->checkbox:Landroid/widget/CheckBox;

    const/4 v0, 0x4

    aput-boolean v2, v1, v0

    .line 34
    const v0, 0x7f100094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->productCard:Landroid/support/v7/widget/CardView;

    const/4 v0, 0x5

    aput-boolean v2, v1, v0

    .line 35
    const v0, 0x7f1000d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->showDetailsImageButton:Landroid/widget/ImageButton;

    const/4 v0, 0x6

    aput-boolean v2, v1, v0

    .line 36
    const v0, 0x7f1000d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->productImageInViewer:Landroid/widget/ImageView;

    const/4 v0, 0x7

    aput-boolean v2, v1, v0

    .line 37
    const v0, 0x7f1000d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->productImageInDetail:Landroid/widget/ImageView;

    const/16 v0, 0x8

    aput-boolean v2, v1, v0

    .line 38
    const v0, 0x7f1000d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->listDetailsTextView:Landroid/widget/TextView;

    const/16 v0, 0x9

    aput-boolean v2, v1, v0

    .line 39
    const v0, 0x7f1000d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->detailsLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0xa

    aput-boolean v2, v1, v0

    .line 40
    const v0, 0x7f1000c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->plusButton:Landroid/widget/Button;

    .line 41
    const/16 v0, 0xb

    aput-boolean v2, v1, v0

    return-void
.end method


# virtual methods
.method public getCheckbox()Landroid/widget/CheckBox;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->checkbox:Landroid/widget/CheckBox;

    const/16 v2, 0xf

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getDetailsLayout()Landroid/widget/RelativeLayout;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 100
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->detailsLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x16

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getListDetailsTextView()Landroid/widget/TextView;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 85
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->listDetailsTextView:Landroid/widget/TextView;

    const/16 v2, 0x14

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getPlusButton()Landroid/widget/Button;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 105
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->plusButton:Landroid/widget/Button;

    const/16 v2, 0x17

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getProductCard()Landroid/support/v7/widget/CardView;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 65
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->productCard:Landroid/support/v7/widget/CardView;

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getProductExtraInfoTextview()Landroid/widget/TextView;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->productExtraInfoTextview:Landroid/widget/TextView;

    const/16 v2, 0xe

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getProductImageInDetail()Landroid/widget/ImageView;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 95
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->productImageInDetail:Landroid/widget/ImageView;

    const/16 v2, 0x15

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getProductNameTextView()Landroid/widget/TextView;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->productNameTextView:Landroid/widget/TextView;

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getQuantityTextView()Landroid/widget/TextView;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->quantityTextView:Landroid/widget/TextView;

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getShowDetailsImageButton()Landroid/widget/ImageButton;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 70
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->showDetailsImageButton:Landroid/widget/ImageButton;

    const/16 v2, 0x11

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public isDetailsVisible()Z
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    iget-boolean v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->detailsVisible:Z

    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public setDetailsVisible(Z)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 80
    iput-boolean p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductItemCache;->detailsVisible:Z

    .line 81
    const/16 v1, 0x13

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
