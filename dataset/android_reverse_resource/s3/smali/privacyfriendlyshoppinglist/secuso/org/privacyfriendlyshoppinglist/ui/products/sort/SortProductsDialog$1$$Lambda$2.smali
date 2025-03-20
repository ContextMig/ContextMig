.class final synthetic Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Action0;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final arg$1:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

.field private final arg$2:Ljava/util/List;

.field private final arg$3:Z

.field private final arg$4:Ljava/lang/String;

.field private final arg$5:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductsActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1$$Lambda$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x11d4fd883d206452L    # -4.881638408261597E222

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1$$Lambda$2"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1$$Lambda$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;Ljava/util/List;ZLjava/lang/String;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductsActivity;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1$$Lambda$2;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1$$Lambda$2;->arg$1:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

    iput-object p2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1$$Lambda$2;->arg$2:Ljava/util/List;

    iput-boolean p3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1$$Lambda$2;->arg$3:Z

    iput-object p4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1$$Lambda$2;->arg$4:Ljava/lang/String;

    iput-object p5, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1$$Lambda$2;->arg$5:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductsActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static get$Lambda(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;Ljava/util/List;ZLjava/lang/String;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductsActivity;)Lrx/functions/Action0;
    .locals 8

    const/4 v7, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1$$Lambda$2;->$jacocoInit()[Z

    move-result-object v6

    new-instance v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1$$Lambda$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1$$Lambda$2;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;Ljava/util/List;ZLjava/lang/String;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductsActivity;)V

    aput-boolean v7, v6, v7

    return-object v0
.end method

.method public static lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;Ljava/util/List;ZLjava/lang/String;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductsActivity;)Lrx/functions/Action0;
    .locals 7

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1$$Lambda$2;->$jacocoInit()[Z

    move-result-object v6

    new-instance v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1$$Lambda$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1$$Lambda$2;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;Ljava/util/List;ZLjava/lang/String;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductsActivity;)V

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v6, v1

    return-object v0
.end method


# virtual methods
.method public call()V
    .locals 6
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1$$Lambda$2;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1$$Lambda$2;->arg$1:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1$$Lambda$2;->arg$2:Ljava/util/List;

    iget-boolean v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1$$Lambda$2;->arg$3:Z

    iget-object v4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1$$Lambda$2;->arg$4:Ljava/lang/String;

    iget-object v5, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1$$Lambda$2;->arg$5:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductsActivity;

    invoke-static {v1, v2, v3, v4, v5}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;->access$lambda$1(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;Ljava/util/List;ZLjava/lang/String;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductsActivity;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
