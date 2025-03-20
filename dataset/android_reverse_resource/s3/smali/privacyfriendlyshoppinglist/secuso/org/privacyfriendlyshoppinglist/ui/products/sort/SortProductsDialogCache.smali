.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;
.super Ljava/lang/Object;
.source "SortProductsDialogCache.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private ascending:Landroid/widget/RadioButton;

.field private category:Landroid/widget/RadioButton;

.field private descending:Landroid/widget/RadioButton;

.field private name:Landroid/widget/RadioButton;

.field private price:Landroid/widget/RadioButton;

.field private quantity:Landroid/widget/RadioButton;

.field private store:Landroid/widget/RadioButton;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x303a258377a5f953L    # -1.9769203945901766E76

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache"

    const/16 v3, 0xf

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->$jacocoInit()[Z

    move-result-object v1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aput-boolean v2, v1, v0

    .line 24
    const v0, 0x7f1000ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->ascending:Landroid/widget/RadioButton;

    aput-boolean v2, v1, v2

    .line 25
    const v0, 0x7f100100

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->descending:Landroid/widget/RadioButton;

    const/4 v0, 0x2

    aput-boolean v2, v1, v0

    .line 26
    const v0, 0x7f100101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->name:Landroid/widget/RadioButton;

    const/4 v0, 0x3

    aput-boolean v2, v1, v0

    .line 27
    const v0, 0x7f100104

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->quantity:Landroid/widget/RadioButton;

    const/4 v0, 0x4

    aput-boolean v2, v1, v0

    .line 28
    const v0, 0x7f100105

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->price:Landroid/widget/RadioButton;

    const/4 v0, 0x5

    aput-boolean v2, v1, v0

    .line 29
    const v0, 0x7f100103

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->store:Landroid/widget/RadioButton;

    const/4 v0, 0x6

    aput-boolean v2, v1, v0

    .line 30
    const v0, 0x7f100106

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->category:Landroid/widget/RadioButton;

    .line 31
    const/4 v0, 0x7

    aput-boolean v2, v1, v0

    return-void
.end method


# virtual methods
.method public getAscending()Landroid/widget/RadioButton;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->ascending:Landroid/widget/RadioButton;

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getCategory()Landroid/widget/RadioButton;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->$jacocoInit()[Z

    move-result-object v0

    .line 65
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->category:Landroid/widget/RadioButton;

    const/16 v2, 0xe

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getDescending()Landroid/widget/RadioButton;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->descending:Landroid/widget/RadioButton;

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getName()Landroid/widget/RadioButton;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->name:Landroid/widget/RadioButton;

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getPrice()Landroid/widget/RadioButton;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->price:Landroid/widget/RadioButton;

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getQuantity()Landroid/widget/RadioButton;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->quantity:Landroid/widget/RadioButton;

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getStore()Landroid/widget/RadioButton;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->store:Landroid/widget/RadioButton;

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
