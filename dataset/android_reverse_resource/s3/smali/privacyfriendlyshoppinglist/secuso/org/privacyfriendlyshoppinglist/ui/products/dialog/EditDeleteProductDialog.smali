.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "EditDeleteProductDialog.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;

.field private item:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;

.field private productService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xc7c8762b5c85fe3L    # -2.722814431477657E248

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog"

    const/16 v3, 0x1d

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->item:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;

    const/16 v2, 0x1a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->productService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

    const/16 v2, 0x1b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;

    const/16 v2, 0x1c

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getDeleteOnClickListener()Landroid/view/View$OnClickListener;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 81
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog$1;

    invoke-direct {v1, p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog$1;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;)V

    const/16 v2, 0x17

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private static getEditDeleteFragment(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;

    invoke-direct {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;-><init>()V

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    .line 38
    invoke-virtual {v1, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->setCache(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;)V

    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    .line 39
    invoke-virtual {v1, p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->setItem(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V

    .line 40
    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getEditOnClickListener()Landroid/view/View$OnClickListener;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 104
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog$2;

    invoke-direct {v1, p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog$2;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;)V

    const/16 v2, 0x18

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getShareOnClickListener()Landroid/view/View$OnClickListener;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 121
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog$3;

    invoke-direct {v1, p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog$3;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;)V

    const/16 v2, 0x19

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static newEditDeleteInstance(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->$jacocoInit()[Z

    move-result-object v1

    .line 31
    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->getEditDeleteFragment(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;

    move-result-object v0

    .line 32
    .local v0, "dialogFragment":Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;
    aput-boolean v2, v1, v2

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13

    .prologue
    const/4 v12, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->$jacocoInit()[Z

    move-result-object v4

    .line 57
    new-instance v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/InstanceFactory;

    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;->getActivity()Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/InstanceFactory;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x7

    aput-boolean v12, v4, v1

    .line 58
    const-class v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

    invoke-virtual {v0, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/AbstractInstanceFactory;->createInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->productService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

    const/16 v0, 0x8

    aput-boolean v12, v4, v0

    .line 60
    new-instance v5, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x9

    aput-boolean v12, v4, v0

    .line 61
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/16 v1, 0xa

    aput-boolean v12, v4, v1

    .line 62
    const v1, 0x7f040047

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const/16 v0, 0xb

    aput-boolean v12, v4, v0

    .line 63
    const v0, 0x7f1000a2

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0xc

    aput-boolean v12, v4, v1

    .line 64
    const v1, 0x7f1000a4

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/16 v2, 0xd

    aput-boolean v12, v4, v2

    .line 65
    const v2, 0x7f1000a3

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const/16 v3, 0xe

    aput-boolean v12, v4, v3

    .line 66
    const v3, 0x7f10004a

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v7, 0xf

    aput-boolean v12, v4, v7

    .line 68
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900a5

    new-array v9, v12, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->item:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;

    invoke-virtual {v11}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    aput-boolean v12, v4, v8

    .line 69
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x11

    aput-boolean v12, v4, v3

    .line 71
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->getEditOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x12

    aput-boolean v12, v4, v0

    .line 72
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->getDeleteOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x13

    aput-boolean v12, v4, v0

    .line 73
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->getShareOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x14

    aput-boolean v12, v4, v0

    .line 75
    invoke-virtual {v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v0, 0x15

    aput-boolean v12, v4, v0

    .line 76
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    const/16 v1, 0x16

    aput-boolean v12, v4, v1

    return-object v0
.end method

.method public setCache(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;

    .line 46
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setItem(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/EditDeleteProductDialog;->item:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;

    .line 51
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
