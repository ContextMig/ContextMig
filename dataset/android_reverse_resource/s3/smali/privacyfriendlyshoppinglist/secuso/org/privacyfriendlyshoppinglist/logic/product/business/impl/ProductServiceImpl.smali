.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;
.super Ljava/lang/Object;
.source "ProductServiceImpl.java"

# interfaces
.implements Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final EXTENSION:Ljava/lang/String; = ".jpg"

.field private static final IMAGE_DIR_NAME:Ljava/lang/String; = "imageDir"


# instance fields
.field private context:Landroid/content/Context;

.field private converterService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/ProductConverterService;

.field private productItemDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;

.field private shoppingListService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xbb698e6607b8d86L

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl"

    const/16 v3, 0x118

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/ProductConverterService;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->productItemDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;

    .line 59
    iput-object p2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->converterService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/ProductConverterService;

    .line 60
    iput-object p3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->shoppingListService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;

    .line 61
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$0(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$saveOrUpdate$0(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v1

    const/16 v2, 0xfa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$1(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$duplicateProducts$1(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v1

    const/16 v2, 0xfb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$10(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$deleteSelectedSync$10(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V

    const/16 v1, 0x104

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$11(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Ljava/lang/String;)Lrx/Observable;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$getAllProducts$11(Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    const/16 v2, 0x105

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$12(Ljava/lang/String;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;)Ljava/lang/Boolean;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$getAllProductsSync$12(Ljava/lang/String;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x106

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$13(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->getItem(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;

    move-result-object v1

    const/16 v2, 0x107

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$14(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$getAllProductsSync$13(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V

    const/16 v1, 0x108

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$15(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;)Lrx/Observable;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$getAllProducts$14()Lrx/Observable;

    move-result-object v1

    const/16 v2, 0x109

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$16(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->getItem(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;

    move-result-object v1

    const/16 v2, 0x10a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$17(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$getAllProductsSync$15(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V

    const/16 v1, 0x10b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$18(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Ljava/lang/String;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$getInfo$16(Ljava/lang/String;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;

    move-result-object v1

    const/16 v2, 0x10c

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$19(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$deleteAllFromList$17(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v1

    const/16 v2, 0x10d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$2(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$duplicateProductsSync$2(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V

    const/16 v1, 0xfc

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$20(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$deleteAllFromListSync$18(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V

    const/16 v1, 0x10e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$21(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)Ljava/lang/Boolean;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$moveSelectedToEnd$19(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x10f

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$22(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$moveSelectedToEnd$20(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V

    const/16 v1, 0x110

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$23(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)Ljava/lang/Boolean;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$moveSelectedToEnd$21(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x111

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$24(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$moveSelectedToEnd$22(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V

    const/16 v1, 0x112

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$25(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;)Lrx/Observable;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$getAutoCompleteListsObservable$23()Lrx/Observable;

    move-result-object v1

    const/16 v2, 0x113

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$26(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->getItem(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;

    move-result-object v1

    const/16 v2, 0x114

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$27(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/AutoCompleteLists;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$getAutoCompleteLists$24(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/AutoCompleteLists;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V

    const/16 v1, 0x115

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$28(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;)Ljava/lang/Boolean;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$deleteInvisibleProductsFromDb$25(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x116

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$29(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;)Ljava/lang/Boolean;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$deleteInvisibleProductsFromDb$26(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x117

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$3(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$copyToList$3(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v1

    const/16 v2, 0xfd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$4(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$resetCheckedProducts$4(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v1

    const/16 v2, 0xfe

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$5(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Ljava/lang/String;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$getById$5(Ljava/lang/String;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;

    move-result-object v1

    const/16 v2, 0xff

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$6(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$deleteById$6(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v1

    const/16 v2, 0x100

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$7(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Ljava/lang/String;)Lrx/Observable;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$deleteOnlyImage$7(Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    const/16 v2, 0x101

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$8(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Ljava/util/List;)Ljava/lang/Void;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$deleteSelected$8(Ljava/util/List;)Ljava/lang/Void;

    move-result-object v1

    const/16 v2, 0x102

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$9(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)Ljava/lang/Boolean;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->lambda$deleteSelectedSync$9(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x103

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private copy(Ljava/io/File;Ljava/io/File;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 548
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0xd1

    aput-boolean v9, v0, v1

    .line 549
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0xd2

    aput-boolean v9, v0, v1

    .line 550
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const/16 v2, 0xd3

    aput-boolean v9, v0, v2

    .line 551
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    const/16 v2, 0xd4

    aput-boolean v9, v0, v2

    .line 552
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    const/16 v1, 0xd5

    aput-boolean v9, v0, v1

    .line 553
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    const/16 v1, 0xd6

    aput-boolean v9, v0, v1

    .line 554
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 555
    const/16 v1, 0xd7

    aput-boolean v9, v0, v1

    return-void
.end method

.method private copyImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 148
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->getProductImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x26

    aput-boolean v5, v1, v2

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v0, 0x27

    aput-boolean v5, v1, v0

    .line 161
    :goto_0
    const/16 v0, 0x2d

    aput-boolean v5, v1, v0

    return-void

    .line 149
    :cond_0
    const/16 v2, 0x28

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v1, v2

    .line 153
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->getProductImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x29

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 154
    invoke-direct {p0, v0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    const/16 v0, 0x2a

    aput-boolean v5, v1, v0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    const/16 v2, 0x2b

    aput-boolean v5, v1, v2

    .line 158
    const-string v2, "ProductServiceImpl"

    const-string v3, "duplicateProductSync"

    invoke-static {v2, v3, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/logger/PFALogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x2c

    aput-boolean v5, v1, v0

    goto :goto_0
.end method

.method private copyToListSync(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Ljava/lang/String;)Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 137
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    aput-boolean v4, v0, v2

    .line 138
    invoke-virtual {p1, v5}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->setId(Ljava/lang/String;)V

    const/16 v2, 0x21

    aput-boolean v4, v0, v2

    .line 139
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->setChecked(Z)V

    const/16 v2, 0x22

    aput-boolean v4, v0, v2

    .line 140
    invoke-direct {p0, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->saveOrUpdateSync(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Ljava/lang/String;)Ljava/lang/Void;

    const/16 v2, 0x23

    aput-boolean v4, v0, v2

    .line 141
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getId()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x24

    aput-boolean v4, v0, v3

    .line 142
    invoke-direct {p0, v1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->copyImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/16 v1, 0x25

    aput-boolean v4, v0, v1

    return-object v5
.end method

.method private deleteAllFromListSync(Ljava/lang/String;)Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 351
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->getAllProductsSync(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x76

    aput-boolean v4, v0, v2

    .line 352
    invoke-static {v1}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$21;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;)Lrx/functions/Action1;

    move-result-object v2

    const/16 v3, 0x77

    aput-boolean v4, v0, v3

    .line 353
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 354
    const/4 v1, 0x0

    const/16 v2, 0x78

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method private deleteByIdSync(Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 230
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->productItemDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;->deleteById(Ljava/lang/Long;)Ljava/lang/Boolean;

    const/16 v1, 0x48

    aput-boolean v3, v0, v1

    .line 233
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->getProductImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x49

    aput-boolean v3, v0, v2

    .line 234
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 235
    const/4 v1, 0x0

    const/16 v2, 0x4a

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private deleteOnlyImageSync(Ljava/lang/String;)Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 250
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->productItemDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;->getById(Ljava/lang/Long;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;

    move-result-object v1

    const/16 v2, 0x4f

    aput-boolean v3, v0, v2

    .line 251
    invoke-virtual {v1, v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->setImageBytes([B)V

    const/16 v2, 0x50

    aput-boolean v3, v0, v2

    .line 252
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->productItemDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;

    invoke-interface {v2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;->save(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;)Ljava/lang/Long;

    const/16 v1, 0x51

    aput-boolean v3, v0, v1

    .line 254
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->getProductImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x52

    aput-boolean v3, v0, v2

    .line 255
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 256
    const/16 v1, 0x53

    aput-boolean v3, v0, v1

    return-object v4
.end method

.method private deleteSelectedSync(Ljava/util/List;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 271
    invoke-static {p1}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$10;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v2

    const/16 v3, 0x58

    aput-boolean v4, v0, v3

    .line 272
    invoke-virtual {v1, v2}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$11;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;)Lrx/functions/Action1;

    move-result-object v2

    const/16 v3, 0x59

    aput-boolean v4, v0, v3

    .line 273
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 274
    const/4 v1, 0x0

    const/16 v2, 0x5a

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method private duplicateProductsSync(Ljava/lang/String;)Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v2

    .line 107
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->shoppingListService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;

    invoke-interface {v0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;->getById(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$3;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;)Lrx/functions/Action1;

    move-result-object v1

    const/16 v3, 0x13

    aput-boolean v5, v2, v3

    .line 108
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    const/16 v1, 0x14

    aput-boolean v5, v2, v1

    .line 113
    invoke-virtual {v0}, Lrx/Observable;->toBlocking()Lrx/observables/BlockingObservable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/observables/BlockingObservable;->single()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;

    const/16 v1, 0x15

    aput-boolean v5, v2, v1

    .line 115
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->shoppingListService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;

    invoke-interface {v1, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;->saveOrUpdateSync(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Ljava/lang/Void;

    const/16 v1, 0x16

    aput-boolean v5, v2, v1

    .line 117
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->getAllProductsSync(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/16 v3, 0x17

    aput-boolean v5, v2, v3

    .line 118
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v1, 0x18

    aput-boolean v5, v2, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;

    const/16 v4, 0x19

    aput-boolean v5, v2, v4

    .line 120
    invoke-virtual {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->copyToListSync(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Ljava/lang/String;)Ljava/lang/Void;

    .line 121
    const/16 v1, 0x1a

    aput-boolean v5, v2, v1

    goto :goto_0

    .line 122
    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x1b

    aput-boolean v5, v2, v1

    return-object v0
.end method

.method private getAllProductsSync()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v0, "productDtos":Ljava/util/List;, "Ljava/util/List<Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;>;"
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->productItemDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;

    const/16 v3, 0x68

    aput-boolean v5, v1, v3

    .line 315
    invoke-interface {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;->getAllEntities()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$17;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;)Lrx/functions/Func1;

    move-result-object v3

    const/16 v4, 0x69

    aput-boolean v5, v1, v4

    .line 316
    invoke-virtual {v2, v3}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$18;->lambdaFactory$(Ljava/util/List;)Lrx/functions/Action1;

    move-result-object v3

    const/16 v4, 0x6a

    aput-boolean v5, v1, v4

    .line 317
    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 319
    const/16 v2, 0x6b

    aput-boolean v5, v1, v2

    return-object v0
.end method

.method private getAllProductsSync(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v0, "productItems":Ljava/util/List;, "Ljava/util/List<Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;>;"
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->productItemDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;

    const/16 v3, 0x5f

    aput-boolean v5, v1, v3

    .line 292
    invoke-interface {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;->getAllEntities()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v2

    invoke-static {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$13;->lambdaFactory$(Ljava/lang/String;)Lrx/functions/Func1;

    move-result-object v3

    const/16 v4, 0x60

    aput-boolean v5, v1, v4

    .line 293
    invoke-virtual {v2, v3}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$14;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;)Lrx/functions/Func1;

    move-result-object v3

    const/16 v4, 0x61

    aput-boolean v5, v1, v4

    .line 294
    invoke-virtual {v2, v3}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$15;->lambdaFactory$(Ljava/util/List;)Lrx/functions/Action1;

    move-result-object v3

    const/16 v4, 0x62

    aput-boolean v5, v1, v4

    .line 295
    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 297
    const/16 v2, 0x63

    aput-boolean v5, v1, v2

    return-object v0
.end method

.method private getAutoCompleteLists()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/AutoCompleteLists;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 486
    new-instance v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/AutoCompleteLists;

    invoke-direct {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/AutoCompleteLists;-><init>()V

    .line 488
    .local v0, "autoCompleteLists":Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/AutoCompleteLists;
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->productItemDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;

    const/16 v3, 0xb7

    aput-boolean v5, v1, v3

    .line 489
    invoke-interface {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;->getAllEntities()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$27;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;)Lrx/functions/Func1;

    move-result-object v3

    const/16 v4, 0xb8

    aput-boolean v5, v1, v4

    .line 490
    invoke-virtual {v2, v3}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$28;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/AutoCompleteLists;)Lrx/functions/Action1;

    move-result-object v3

    const/16 v4, 0xb9

    aput-boolean v5, v1, v4

    .line 491
    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 492
    const/16 v2, 0xba

    aput-boolean v5, v1, v2

    return-object v0
.end method

.method private getByIdSync(Ljava/lang/String;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v2

    .line 201
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->productItemDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;->getById(Ljava/lang/Long;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;

    move-result-object v0

    .line 202
    .local v0, "productEntity":Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    const/16 v3, 0x3d

    aput-boolean v4, v2, v3

    .line 206
    :goto_0
    return-object v1

    .line 204
    :cond_0
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;

    invoke-direct {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;-><init>()V

    const/16 v3, 0x3e

    aput-boolean v4, v2, v3

    .line 205
    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->converterService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/ProductConverterService;

    invoke-interface {v3, v0, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/ProductConverterService;->convertEntitiesToItem(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V

    .line 206
    const/16 v3, 0x3f

    aput-boolean v4, v2, v3

    goto :goto_0
.end method

.method private getInfoSync(Ljava/lang/String;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 334
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->getAllProductsSync(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x70

    aput-boolean v4, v1, v3

    .line 335
    invoke-virtual {p0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->computeTotals(Ljava/util/List;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;

    move-result-object v0

    .line 336
    .local v0, "totalItem":Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;
    const/16 v2, 0x71

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method private getItem(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 532
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;

    invoke-direct {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;-><init>()V

    const/16 v2, 0xcb

    aput-boolean v3, v0, v2

    .line 533
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->converterService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/ProductConverterService;

    invoke-interface {v2, p1, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/ProductConverterService;->convertEntitiesToItem(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V

    .line 534
    const/16 v2, 0xcc

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getNewName(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getListName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x38

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getNumberScale(D)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 421
    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;->NO_SCALE:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;

    const/16 v2, 0x98

    aput-boolean v4, v1, v2

    .line 422
    sget-object v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;->MILLION:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;->getValue(Landroid/content/Context;)I

    move-result v2

    int-to-double v2, v2

    cmpl-double v2, p1, v2

    if-lez v2, :cond_0

    .line 424
    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;->MILLION:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;

    .local v0, "numberScale":Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;
    const/16 v2, 0x99

    aput-boolean v4, v1, v2

    .line 431
    :goto_0
    const/16 v2, 0x9c

    aput-boolean v4, v1, v2

    return-object v0

    .line 427
    .end local v0    # "numberScale":Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;
    :cond_0
    sget-object v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;->KILO:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;->getValue(Landroid/content/Context;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    int-to-double v2, v2

    cmpl-double v2, p1, v2

    if-gtz v2, :cond_1

    const/16 v2, 0x9a

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 429
    :cond_1
    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;->KILO:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;

    .restart local v0    # "numberScale":Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;
    const/16 v2, 0x9b

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method private getUniqueName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0xcd

    aput-boolean v5, v1, v2

    .line 541
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    const/16 v4, 0xce

    aput-boolean v5, v1, v4

    .line 542
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xcf

    aput-boolean v5, v1, v2

    .line 543
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd0

    aput-boolean v5, v1, v3

    return-object v2
.end method

.method private synthetic lambda$copyToList$3(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Ljava/lang/String;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 129
    invoke-direct {p0, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->copyToListSync(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v1

    const/16 v2, 0xf5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private synthetic lambda$deleteAllFromList$17(Ljava/lang/String;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 343
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->deleteAllFromListSync(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v1

    const/16 v2, 0xe5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private synthetic lambda$deleteAllFromListSync$18(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 353
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->deleteByIdSync(Ljava/lang/String;)Ljava/lang/Void;

    const/16 v1, 0xe4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private synthetic lambda$deleteById$6(Ljava/lang/String;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 222
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->deleteByIdSync(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v1

    const/16 v2, 0xf2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private static synthetic lambda$deleteInvisibleProductsFromDb$25(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v2

    .line 499
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->getShoppingList()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;

    move-result-object v0

    invoke-virtual {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xd9

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v3, 0xdb

    aput-boolean v1, v2, v3

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0xda

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method private synthetic lambda$deleteInvisibleProductsFromDb$26(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 500
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->productItemDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;->deleteById(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xd8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private synthetic lambda$deleteOnlyImage$7(Ljava/lang/String;)Lrx/Observable;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 242
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->deleteOnlyImageSync(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    const/16 v2, 0xf1

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private synthetic lambda$deleteSelected$8(Ljava/util/List;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 263
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->deleteSelectedSync(Ljava/util/List;)Ljava/lang/Void;

    move-result-object v1

    const/16 v2, 0xf0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private synthetic lambda$deleteSelectedSync$10(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 273
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->deleteByIdSync(Ljava/lang/String;)Ljava/lang/Void;

    const/16 v1, 0xee

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static synthetic lambda$deleteSelectedSync$9(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 272
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->isSelectedForDeletion()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xef

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private synthetic lambda$duplicateProducts$1(Ljava/lang/String;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 99
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->duplicateProductsSync(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v1

    const/16 v2, 0xf8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private synthetic lambda$duplicateProductsSync$2(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 110
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->setId(Ljava/lang/String;)V

    const/16 v1, 0xf6

    aput-boolean v2, v0, v1

    .line 111
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->getNewName(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->setListName(Ljava/lang/String;)V

    .line 112
    const/16 v1, 0xf7

    aput-boolean v2, v0, v1

    return-void
.end method

.method private synthetic lambda$getAllProducts$11(Ljava/lang/String;)Lrx/Observable;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 281
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->getAllProductsSync(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v1

    const/16 v2, 0xed

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private synthetic lambda$getAllProducts$14()Lrx/Observable;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 304
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->getAllProductsSync()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v1

    const/16 v2, 0xe8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private static synthetic lambda$getAllProductsSync$12(Ljava/lang/String;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v2

    .line 293
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->getShoppingList()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;

    move-result-object v0

    invoke-virtual {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-ne v0, v3, :cond_0

    const/16 v0, 0xea

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v3, 0xec

    aput-boolean v1, v2, v3

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0xeb

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method private static synthetic lambda$getAllProductsSync$13(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 295
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xe9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static synthetic lambda$getAllProductsSync$15(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 317
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xe7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static synthetic lambda$getAutoCompleteLists$24(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/AutoCompleteLists;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 491
    invoke-virtual {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/AutoCompleteLists;->updateLists(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V

    const/16 v1, 0xdc

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private synthetic lambda$getAutoCompleteListsObservable$23()Lrx/Observable;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 478
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->getAutoCompleteLists()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/AutoCompleteLists;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    const/16 v2, 0xdd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private synthetic lambda$getById$5(Ljava/lang/String;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 193
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->getByIdSync(Ljava/lang/String;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;

    move-result-object v1

    const/16 v2, 0xf3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private synthetic lambda$getInfo$16(Ljava/lang/String;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 326
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->getInfoSync(Ljava/lang/String;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;

    move-result-object v1

    const/16 v2, 0xe6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private static synthetic lambda$moveSelectedToEnd$19(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v2

    .line 363
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xe1

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v3, 0xe3

    aput-boolean v1, v2, v3

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0xe2

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method private static synthetic lambda$moveSelectedToEnd$20(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 364
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xe0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static synthetic lambda$moveSelectedToEnd$21(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 369
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xdf

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private static synthetic lambda$moveSelectedToEnd$22(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 370
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xde

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private synthetic lambda$resetCheckedProducts$4(Ljava/lang/String;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 167
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->resetCheckedProductsSync(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v1

    const/16 v2, 0xf4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private synthetic lambda$saveOrUpdate$0(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Ljava/lang/String;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 76
    invoke-direct {p0, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->saveOrUpdateSync(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v1

    const/16 v2, 0xf9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private resetCheckedProductsSync(Ljava/lang/String;)Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 175
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->getAllProductsSync(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/16 v2, 0x32

    aput-boolean v4, v1, v2

    .line 176
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v0, 0x33

    aput-boolean v4, v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;

    const/16 v3, 0x34

    aput-boolean v4, v1, v3

    .line 178
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->setChecked(Z)V

    const/16 v3, 0x35

    aput-boolean v4, v1, v3

    .line 179
    invoke-direct {p0, v0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->saveOrUpdateSync(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Ljava/lang/String;)Ljava/lang/Void;

    .line 180
    const/16 v0, 0x36

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 181
    :cond_0
    const/4 v0, 0x0

    const/16 v2, 0x37

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method private saveOrUpdateSync(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Ljava/lang/String;)Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 84
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;

    invoke-direct {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;-><init>()V

    const/16 v2, 0x9

    aput-boolean v4, v0, v2

    .line 85
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->converterService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/ProductConverterService;

    invoke-interface {v2, p1, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/ProductConverterService;->convertItemToEntity(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;)V

    const/16 v2, 0xa

    aput-boolean v4, v0, v2

    .line 87
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->shoppingListService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;

    invoke-interface {v2, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;->getEntityByIdSync(Ljava/lang/String;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;

    move-result-object v2

    const/16 v3, 0xb

    aput-boolean v4, v0, v3

    .line 88
    invoke-virtual {v1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->setShoppingList(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;)V

    const/16 v2, 0xc

    aput-boolean v4, v0, v2

    .line 90
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->productItemDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;

    invoke-interface {v2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;->save(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;)Ljava/lang/Long;

    const/16 v2, 0xd

    aput-boolean v4, v0, v2

    .line 91
    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->setId(Ljava/lang/String;)V

    .line 92
    const/4 v1, 0x0

    const/16 v2, 0xe

    aput-boolean v4, v0, v2

    return-object v1
.end method


# virtual methods
.method public computeTotals(Ljava/util/List;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;",
            ">;)",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v12

    .line 380
    const-wide/16 v8, 0x0

    .line 381
    .local v8, "totalAmount":D
    const-wide/16 v2, 0x0

    .line 382
    .local v2, "checkedAmount":D
    const/4 v4, 0x0

    const/16 v11, 0x82

    const/4 v13, 0x1

    aput-boolean v13, v12, v11

    .line 383
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/16 v11, 0x83

    const/4 v14, 0x1

    aput-boolean v14, v12, v11

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;

    const/16 v14, 0x84

    const/4 v15, 0x1

    aput-boolean v15, v12, v14

    .line 385
    invoke-virtual {v11}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getQuantity()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x85

    const/16 v16, 0x1

    aput-boolean v16, v12, v15

    .line 386
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/2addr v4, v15

    .local v4, "nrProducts":I
    const/16 v15, 0x86

    const/16 v16, 0x1

    aput-boolean v16, v12, v15

    .line 387
    invoke-virtual {v11}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductPrice()Ljava/lang/String;

    move-result-object v5

    .line 388
    .local v5, "price":Ljava/lang/String;
    if-nez v5, :cond_0

    const/16 v11, 0x87

    const/4 v14, 0x1

    aput-boolean v14, v12, v11

    .line 397
    :goto_1
    const/16 v11, 0x8c

    const/4 v14, 0x1

    aput-boolean v14, v12, v11

    goto :goto_0

    .line 388
    :cond_0
    const/16 v15, 0x88

    const/16 v16, 0x1

    aput-boolean v16, v12, v15

    .line 390
    move-object/from16 v0, p0

    iget-object v15, v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->converterService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/ProductConverterService;

    invoke-interface {v15, v5}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/ProductConverterService;->getStringAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-double v14, v14

    mul-double v6, v16, v14

    .line 391
    .local v6, "priceAsDouble":D
    add-double/2addr v8, v6

    const/16 v14, 0x89

    const/4 v15, 0x1

    aput-boolean v15, v12, v14

    .line 392
    invoke-virtual {v11}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->isChecked()Z

    move-result v11

    if-nez v11, :cond_1

    const/16 v11, 0x8a

    const/4 v14, 0x1

    aput-boolean v14, v12, v11

    goto :goto_1

    .line 394
    :cond_1
    add-double/2addr v2, v6

    const/16 v11, 0x8b

    const/4 v14, 0x1

    aput-boolean v14, v12, v11

    goto :goto_1

    .line 399
    .end local v4    # "nrProducts":I
    .end local v5    # "price":Ljava/lang/String;
    .end local v6    # "priceAsDouble":D
    :cond_2
    new-instance v10, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;

    invoke-direct {v10}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;-><init>()V

    .line 401
    .local v10, "totalItem":Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;
    const-wide/16 v14, 0x0

    cmpl-double v11, v8, v14

    if-eqz v11, :cond_3

    const/16 v11, 0x8d

    const/4 v13, 0x1

    aput-boolean v13, v12, v11

    .line 406
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->getNumberScale(D)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;

    move-result-object v11

    const/16 v13, 0x90

    const/4 v14, 0x1

    aput-boolean v14, v12, v13

    .line 407
    move-object/from16 v0, p0

    iget-object v13, v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->context:Landroid/content/Context;

    invoke-virtual {v11, v13}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;->getValue(Landroid/content/Context;)I

    move-result v13

    int-to-double v14, v13

    div-double/2addr v8, v14

    const/16 v13, 0x91

    const/4 v14, 0x1

    aput-boolean v14, v12, v13

    .line 408
    move-object/from16 v0, p0

    iget-object v13, v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->context:Landroid/content/Context;

    invoke-virtual {v11, v13}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;->getValue(Landroid/content/Context;)I

    move-result v13

    int-to-double v14, v13

    div-double/2addr v2, v14

    const/16 v13, 0x92

    const/4 v14, 0x1

    aput-boolean v14, v12, v13

    .line 410
    move-object/from16 v0, p0

    iget-object v13, v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->converterService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/ProductConverterService;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-interface {v13, v14}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/ProductConverterService;->getDoubleAsString(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x93

    const/4 v15, 0x1

    aput-boolean v15, v12, v14

    .line 411
    move-object/from16 v0, p0

    iget-object v14, v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->converterService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/ProductConverterService;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-interface {v14, v15}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/ProductConverterService;->getDoubleAsString(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x94

    const/16 v16, 0x1

    aput-boolean v16, v12, v15

    .line 412
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->context:Landroid/content/Context;

    invoke-virtual {v11, v15}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;->getAbbreviation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;->setTotalAmount(Ljava/lang/String;)V

    const/16 v13, 0x95

    const/4 v15, 0x1

    aput-boolean v15, v12, v13

    .line 413
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->context:Landroid/content/Context;

    invoke-virtual {v11, v14}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;->getAbbreviation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;->setCheckedAmount(Ljava/lang/String;)V

    const/16 v11, 0x96

    const/4 v13, 0x1

    aput-boolean v13, v12, v11

    .line 414
    invoke-virtual {v10, v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;->setNrProducts(I)V

    .line 416
    const/16 v11, 0x97

    const/4 v13, 0x1

    aput-boolean v13, v12, v11

    return-object v10

    .line 401
    :cond_3
    const/16 v11, 0x8e

    const/4 v13, 0x1

    aput-boolean v13, v12, v11

    .line 403
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;->setEqualsZero(Z)V

    const/16 v11, 0x8f

    const/4 v13, 0x1

    aput-boolean v13, v12, v11

    goto/16 :goto_2
.end method

.method public copyToList(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Ljava/lang/String;)Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 128
    invoke-static {p0, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$4;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object v2

    const/16 v3, 0x1c

    aput-boolean v4, v1, v3

    .line 129
    invoke-static {v2}, Lrx/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x1d

    aput-boolean v4, v1, v3

    .line 130
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x1e

    aput-boolean v4, v1, v3

    .line 131
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 132
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Void;>;"
    const/16 v2, 0x1f

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public deleteAllFromList(Ljava/lang/String;)Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 342
    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$20;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object v2

    const/16 v3, 0x72

    aput-boolean v4, v1, v3

    .line 343
    invoke-static {v2}, Lrx/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x73

    aput-boolean v4, v1, v3

    .line 344
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x74

    aput-boolean v4, v1, v3

    .line 345
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 346
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Void;>;"
    const/16 v2, 0x75

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public deleteById(Ljava/lang/String;)Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 221
    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$7;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object v2

    const/16 v3, 0x44

    aput-boolean v4, v1, v3

    .line 222
    invoke-static {v2}, Lrx/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x45

    aput-boolean v4, v1, v3

    .line 223
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x46

    aput-boolean v4, v1, v3

    .line 224
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 225
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Void;>;"
    const/16 v2, 0x47

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public deleteInvisibleProductsFromDb(Ljava/util/List;)Lrx/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 498
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->productItemDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;

    invoke-interface {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;->getAllEntities()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v2

    invoke-static {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$29;->lambdaFactory$(Ljava/util/List;)Lrx/functions/Func1;

    move-result-object v3

    const/16 v4, 0xbb

    aput-boolean v5, v1, v4

    .line 499
    invoke-virtual {v2, v3}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$30;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;)Lrx/functions/Func1;

    move-result-object v3

    const/16 v4, 0xbc

    aput-boolean v5, v1, v4

    .line 500
    invoke-virtual {v2, v3}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0xbd

    aput-boolean v5, v1, v3

    .line 501
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 502
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Boolean;>;"
    const/16 v2, 0xbe

    aput-boolean v5, v1, v2

    return-object v0
.end method

.method public deleteOnlyImage(Ljava/lang/String;)Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 241
    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$8;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Ljava/lang/String;)Lrx/functions/Func0;

    move-result-object v2

    const/16 v3, 0x4b

    aput-boolean v4, v1, v3

    .line 242
    invoke-static {v2}, Lrx/Observable;->defer(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x4c

    aput-boolean v4, v1, v3

    .line 243
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x4d

    aput-boolean v4, v1, v3

    .line 244
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 245
    .local v0, "observable":Lrx/Observable;
    const/16 v2, 0x4e

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public deleteSelected(Ljava/util/List;)Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 262
    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$9;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Ljava/util/List;)Ljava/util/concurrent/Callable;

    move-result-object v2

    const/16 v3, 0x54

    aput-boolean v4, v1, v3

    .line 263
    invoke-static {v2}, Lrx/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x55

    aput-boolean v4, v1, v3

    .line 264
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x56

    aput-boolean v4, v1, v3

    .line 265
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 266
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Void;>;"
    const/16 v2, 0x57

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public duplicateProducts(Ljava/lang/String;)Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 98
    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$2;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object v2

    const/16 v3, 0xf

    aput-boolean v4, v1, v3

    .line 99
    invoke-static {v2}, Lrx/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x10

    aput-boolean v4, v1, v3

    .line 100
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x11

    aput-boolean v4, v1, v3

    .line 101
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 102
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Void;>;"
    const/16 v2, 0x12

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public getAllProducts()Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 303
    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$16;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;)Lrx/functions/Func0;

    move-result-object v2

    const/16 v3, 0x64

    aput-boolean v4, v1, v3

    .line 304
    invoke-static {v2}, Lrx/Observable;->defer(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x65

    aput-boolean v4, v1, v3

    .line 305
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x66

    aput-boolean v4, v1, v3

    .line 306
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 307
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;>;"
    const/16 v2, 0x67

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public getAllProducts(Ljava/lang/String;)Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 280
    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$12;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Ljava/lang/String;)Lrx/functions/Func0;

    move-result-object v2

    const/16 v3, 0x5b

    aput-boolean v4, v1, v3

    .line 281
    invoke-static {v2}, Lrx/Observable;->defer(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x5c

    aput-boolean v4, v1, v3

    .line 282
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x5d

    aput-boolean v4, v1, v3

    .line 283
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 284
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;>;"
    const/16 v2, 0x5e

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public getAutoCompleteListsObservable()Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/AutoCompleteLists;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 477
    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$26;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;)Lrx/functions/Func0;

    move-result-object v2

    const/16 v3, 0xb3

    aput-boolean v4, v1, v3

    .line 478
    invoke-static {v2}, Lrx/Observable;->defer(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0xb4

    aput-boolean v4, v1, v3

    .line 479
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0xb5

    aput-boolean v4, v1, v3

    .line 480
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 481
    .local v0, "autoCompleteListsObservable":Lrx/Observable;
    const/16 v2, 0xb6

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public getById(Ljava/lang/String;)Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 192
    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$6;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object v2

    const/16 v3, 0x39

    aput-boolean v4, v1, v3

    .line 193
    invoke-static {v2}, Lrx/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x3a

    aput-boolean v4, v1, v3

    .line 194
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x3b

    aput-boolean v4, v1, v3

    .line 195
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 196
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;>;"
    const/16 v2, 0x3c

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public getInfo(Ljava/lang/String;)Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 325
    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$19;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object v2

    const/16 v3, 0x6c

    aput-boolean v4, v1, v3

    .line 326
    invoke-static {v2}, Lrx/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x6d

    aput-boolean v4, v1, v3

    .line 327
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x6e

    aput-boolean v4, v1, v3

    .line 328
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 329
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;>;"
    const/16 v2, 0x6f

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public getProductImagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 212
    new-instance v1, Landroid/content/ContextWrapper;

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    aput-boolean v4, v0, v2

    .line 213
    const-string v2, "imageDir"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const/16 v2, 0x41

    aput-boolean v4, v0, v2

    .line 214
    new-instance v2, Ljava/io/File;

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->getUniqueName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v1, 0x42

    aput-boolean v4, v0, v1

    .line 215
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x43

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method public getSharableText(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "- "

    const/16 v3, 0xa7

    aput-boolean v5, v1, v3

    .line 457
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[ "

    const/16 v4, 0xa8

    aput-boolean v5, v1, v4

    .line 458
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa9

    aput-boolean v5, v1, v3

    .line 459
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getQuantity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ] "

    const/16 v4, 0xaa

    aput-boolean v5, v1, v4

    .line 460
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xab

    aput-boolean v5, v1, v3

    .line 461
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xac

    aput-boolean v5, v1, v2

    .line 463
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductNotes()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xad

    aput-boolean v5, v1, v2

    .line 471
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb2

    aput-boolean v5, v1, v3

    return-object v2

    .line 465
    :cond_0
    const-string v2, "\n"

    const/16 v3, 0xae

    aput-boolean v5, v1, v3

    .line 466
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    const/16 v4, 0xaf

    aput-boolean v5, v1, v4

    .line 467
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xb0

    aput-boolean v5, v1, v3

    .line 468
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductNotes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xb1

    aput-boolean v5, v1, v2

    goto :goto_0
.end method

.method public isSearched([Ljava/lang/String;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)Ljava/lang/Boolean;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v3

    .line 437
    invoke-virtual {p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x9d

    aput-boolean v8, v3, v4

    .line 438
    invoke-virtual {p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9e

    aput-boolean v8, v3, v5

    .line 439
    invoke-virtual {p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductStore()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x9f

    aput-boolean v8, v3, v6

    .line 440
    invoke-virtual {p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductNotes()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa0

    aput-boolean v8, v3, v7

    .line 441
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "searchableText":Ljava/lang/String;
    array-length v4, p1

    const/16 v1, 0xa1

    aput-boolean v8, v3, v1

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, p1, v1

    const/16 v6, 0xa2

    aput-boolean v8, v3, v6

    .line 444
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v1, 0xa3

    aput-boolean v8, v3, v1

    .line 446
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa4

    aput-boolean v8, v3, v2

    .line 449
    :goto_1
    return-object v1

    .line 442
    :cond_0
    add-int/lit8 v1, v1, 0x1

    const/16 v5, 0xa5

    aput-boolean v8, v3, v5

    goto :goto_0

    .line 449
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa6

    aput-boolean v8, v3, v2

    goto :goto_1
.end method

.method public moveSelectedToEnd(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v3

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v0, "nonSelectedItems":Ljava/util/List;, "Ljava/util/List<Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;>;"
    const/16 v4, 0x79

    aput-boolean v7, v3, v4

    .line 362
    invoke-static {p1}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$22;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v5

    const/16 v6, 0x7a

    aput-boolean v7, v3, v6

    .line 363
    invoke-virtual {v4, v5}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v4

    invoke-static {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$23;->lambdaFactory$(Ljava/util/List;)Lrx/functions/Action1;

    move-result-object v5

    const/16 v6, 0x7b

    aput-boolean v7, v3, v6

    .line 364
    invoke-virtual {v4, v5}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    const/16 v4, 0x7c

    aput-boolean v7, v3, v4

    .line 366
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v2, "selectedItems":Ljava/util/List;, "Ljava/util/List<Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;>;"
    const/16 v4, 0x7d

    aput-boolean v7, v3, v4

    .line 368
    invoke-static {p1}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$24;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v5

    const/16 v6, 0x7e

    aput-boolean v7, v3, v6

    .line 369
    invoke-virtual {v4, v5}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v4

    invoke-static {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$25;->lambdaFactory$(Ljava/util/List;)Lrx/functions/Action1;

    move-result-object v5

    const/16 v6, 0x7f

    aput-boolean v7, v3, v6

    .line 370
    invoke-virtual {v4, v5}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    const/16 v4, 0x80

    aput-boolean v7, v3, v4

    .line 372
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 373
    move-object v1, v0

    .line 374
    .local v1, "productItems":Ljava/util/List;, "Ljava/util/List<Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;>;"
    const/16 v4, 0x81

    aput-boolean v7, v3, v4

    return-object v1
.end method

.method public resetCheckedProducts(Ljava/lang/String;)Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 166
    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$5;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object v2

    const/16 v3, 0x2e

    aput-boolean v4, v1, v3

    .line 167
    invoke-static {v2}, Lrx/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x2f

    aput-boolean v4, v1, v3

    .line 168
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x30

    aput-boolean v4, v1, v3

    .line 169
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 170
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Void;>;"
    const/16 v2, 0x31

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public saveOrUpdate(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Ljava/lang/String;)Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 75
    invoke-static {p0, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl$$Lambda$1;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object v2

    const/4 v3, 0x5

    aput-boolean v4, v1, v3

    .line 76
    invoke-static {v2}, Lrx/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v2

    const/4 v3, 0x6

    aput-boolean v4, v1, v3

    .line 77
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    const/4 v3, 0x7

    aput-boolean v4, v1, v3

    .line 78
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 79
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Void;>;"
    const/16 v2, 0x8

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public setContext(Landroid/content/Context;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->context:Landroid/content/Context;

    aput-boolean v2, v0, v2

    .line 67
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->productItemDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;

    invoke-interface {v1, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;->setContext(Landroid/content/Context;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;)V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 68
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->shoppingListService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;

    invoke-interface {v1, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;->setContext(Landroid/content/Context;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;)V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 69
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->converterService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/ProductConverterService;

    invoke-interface {v1, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/ProductConverterService;->setContext(Landroid/content/Context;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;)V

    .line 70
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void
.end method

.method public sortProducts(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 508
    const-string v1, "sort.by.name"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xbf

    aput-boolean v2, v0, v1

    .line 510
    invoke-static {p3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/comparators/ProductComparators;->getNameComparator(Z)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 v1, 0xc0

    aput-boolean v2, v0, v1

    .line 528
    :goto_0
    const/16 v1, 0xca

    aput-boolean v2, v0, v1

    return-void

    .line 512
    :cond_0
    const-string v1, "sort.by.quantity"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xc1

    aput-boolean v2, v0, v1

    .line 514
    invoke-static {p3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/comparators/ProductComparators;->getQuantityCompartor(Z)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 v1, 0xc2

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 516
    :cond_1
    const-string v1, "sort.by.store"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xc3

    aput-boolean v2, v0, v1

    .line 518
    invoke-static {p3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/comparators/ProductComparators;->getStoreComparator(Z)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 v1, 0xc4

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 520
    :cond_2
    const-string v1, "sort.by.category"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xc5

    aput-boolean v2, v0, v1

    .line 522
    invoke-static {p3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/comparators/ProductComparators;->getCategoryComparator(Z)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 v1, 0xc6

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 524
    :cond_3
    const-string v1, "sort.by.price"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0xc7

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_4
    const/16 v1, 0xc8

    aput-boolean v2, v0, v1

    .line 526
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/ProductServiceImpl;->context:Landroid/content/Context;

    invoke-static {p3, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/comparators/ProductComparators;->getPriceComparator(ZLandroid/content/Context;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 v1, 0xc9

    aput-boolean v2, v0, v1

    goto :goto_0
.end method
