.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;
.super Ljava/lang/Object;
.source "DeleteProductItemCache.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private checkBox:Landroid/widget/CheckBox;

.field private productCard:Landroid/support/v7/widget/CardView;

.field private productNameTextView:Landroid/widget/TextView;

.field private productQuantityTextView:Landroid/widget/TextView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x35ab24ff34c395dbL    # 3.627545640981644E-50

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;->$jacocoInit()[Z

    move-result-object v1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aput-boolean v2, v1, v0

    .line 23
    const v0, 0x7f100091

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;->productNameTextView:Landroid/widget/TextView;

    aput-boolean v2, v1, v2

    .line 24
    const v0, 0x7f100093

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;->productQuantityTextView:Landroid/widget/TextView;

    const/4 v0, 0x2

    aput-boolean v2, v1, v0

    .line 25
    const v0, 0x7f100092

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;->checkBox:Landroid/widget/CheckBox;

    const/4 v0, 0x3

    aput-boolean v2, v1, v0

    .line 26
    const v0, 0x7f100094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;->productCard:Landroid/support/v7/widget/CardView;

    .line 27
    const/4 v0, 0x4

    aput-boolean v2, v1, v0

    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;->checkBox:Landroid/widget/CheckBox;

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getProductCard()Landroid/support/v7/widget/CardView;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;->productCard:Landroid/support/v7/widget/CardView;

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getProductNameTextView()Landroid/widget/TextView;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;->productNameTextView:Landroid/widget/TextView;

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getProductQuantityTextView()Landroid/widget/TextView;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductItemCache;->productQuantityTextView:Landroid/widget/TextView;

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
