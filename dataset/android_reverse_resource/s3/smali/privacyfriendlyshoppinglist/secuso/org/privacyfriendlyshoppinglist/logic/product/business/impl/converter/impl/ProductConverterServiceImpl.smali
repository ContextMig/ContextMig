.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/impl/ProductConverterServiceImpl;
.super Ljava/lang/Object;
.source "ProductConverterServiceImpl.java"

# interfaces
.implements Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/ProductConverterService;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final BITMAP_QUALITY:I = 0x64

.field private static final DEFAULT_PRICE:D = 0.0

.field private static final DEFAULT_QUANTITY:I = 0x1


# instance fields
.field private context:Landroid/content/Context;

.field private priceFormat0:Ljava/lang/String;

.field private priceFormat1:Ljava/lang/String;

.field private priceFormat2:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/impl/ProductConverterServiceImpl;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4cc46ff082d1e4b2L    # -6.7001300532457345E-62

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/impl/ProductConverterServiceImpl"

    const/16 v3, 0x3a

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/impl/ProductConverterServiceImpl;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/impl/ProductConverterServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public convertEntitiesToItem(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/impl/ProductConverterServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 90
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->getShoppingList()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;

    move-result-object v2

    invoke-virtual {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->setListId(Ljava/lang/String;)V

    const/16 v2, 0x1d

    aput-boolean v6, v1, v2

    .line 91
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->setProductName(Ljava/lang/String;)V

    const/16 v2, 0x1e

    aput-boolean v6, v1, v2

    .line 93
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->getId()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_0

    const/16 v2, 0x1f

    aput-boolean v6, v1, v2

    .line 98
    :goto_0
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->getQuantity()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    const/16 v2, 0x22

    aput-boolean v6, v1, v2

    .line 103
    :goto_1
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->getNotes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->setProductNotes(Ljava/lang/String;)V

    const/16 v2, 0x25

    aput-boolean v6, v1, v2

    .line 104
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->getStore()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->setProductStore(Ljava/lang/String;)V

    const/16 v2, 0x26

    aput-boolean v6, v1, v2

    .line 106
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->getPrice()Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_2

    const/16 v2, 0x27

    aput-boolean v6, v1, v2

    .line 111
    :goto_2
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->getQuantity()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_3

    const/16 v2, 0x2a

    aput-boolean v6, v1, v2

    .line 116
    :goto_3
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->setProductCategory(Ljava/lang/String;)V

    const/16 v2, 0x2e

    aput-boolean v6, v1, v2

    .line 117
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->getSelected()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p2, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->setChecked(Z)V

    const/16 v2, 0x2f

    aput-boolean v6, v1, v2

    .line 119
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->getImageBytes()[B

    move-result-object v0

    .line 120
    .local v0, "imageBytes":[B
    if-eqz v0, :cond_5

    const/16 v2, 0x30

    aput-boolean v6, v1, v2

    .line 122
    array-length v2, v0

    invoke-static {v0, v7, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0x31

    aput-boolean v6, v1, v3

    .line 123
    invoke-virtual {p2, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    const/16 v2, 0x32

    aput-boolean v6, v1, v2

    .line 124
    invoke-virtual {p2, v7}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->setDefaultImage(Z)V

    .line 125
    const/16 v2, 0x33

    aput-boolean v6, v1, v2

    .line 132
    :goto_4
    const/16 v2, 0x37

    aput-boolean v6, v1, v2

    return-void

    .line 93
    .end local v0    # "imageBytes":[B
    :cond_0
    const/16 v2, 0x20

    aput-boolean v6, v1, v2

    .line 95
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->setId(Ljava/lang/String;)V

    const/16 v2, 0x21

    aput-boolean v6, v1, v2

    goto/16 :goto_0

    .line 98
    :cond_1
    const/16 v2, 0x23

    aput-boolean v6, v1, v2

    .line 100
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->getQuantity()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->setQuantity(Ljava/lang/String;)V

    const/16 v2, 0x24

    aput-boolean v6, v1, v2

    goto/16 :goto_1

    .line 106
    :cond_2
    const/16 v2, 0x28

    aput-boolean v6, v1, v2

    .line 108
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->getPrice()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/impl/ProductConverterServiceImpl;->getDoubleAsString(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->setProductPrice(Ljava/lang/String;)V

    const/16 v2, 0x29

    aput-boolean v6, v1, v2

    goto/16 :goto_2

    .line 111
    :cond_3
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->getPrice()Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_4

    const/16 v2, 0x2b

    aput-boolean v6, v1, v2

    goto/16 :goto_3

    :cond_4
    const/16 v2, 0x2c

    aput-boolean v6, v1, v2

    .line 113
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->getPrice()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->getQuantity()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/impl/ProductConverterServiceImpl;->getDoubleAsString(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->setTotalProductPrice(Ljava/lang/String;)V

    const/16 v2, 0x2d

    aput-boolean v6, v1, v2

    goto/16 :goto_3

    .line 128
    .restart local v0    # "imageBytes":[B
    :cond_5
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/impl/ProductConverterServiceImpl;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200a4

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0x34

    aput-boolean v6, v1, v3

    .line 129
    invoke-virtual {p2, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    const/16 v2, 0x35

    aput-boolean v6, v1, v2

    .line 130
    invoke-virtual {p2, v6}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->setDefaultImage(Z)V

    const/16 v2, 0x36

    aput-boolean v6, v1, v2

    goto/16 :goto_4
.end method

.method public convertItemToEntity(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/impl/ProductConverterServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->setProductName(Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-boolean v5, v0, v1

    .line 44
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    aput-boolean v5, v0, v1

    .line 49
    :goto_0
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getQuantity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x9

    aput-boolean v5, v0, v1

    .line 51
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getQuantity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->setQuantity(Ljava/lang/Integer;)V

    const/16 v1, 0xa

    aput-boolean v5, v0, v1

    .line 58
    :goto_1
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductNotes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->setNotes(Ljava/lang/String;)V

    const/16 v1, 0xc

    aput-boolean v5, v0, v1

    .line 59
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductStore()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->setStore(Ljava/lang/String;)V

    const/16 v1, 0xd

    aput-boolean v5, v0, v1

    .line 61
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductPrice()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-boolean v5, v0, v2

    .line 62
    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0xf

    aput-boolean v5, v0, v2

    .line 64
    invoke-virtual {p0, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/impl/ProductConverterServiceImpl;->getStringAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0x10

    aput-boolean v5, v0, v2

    .line 65
    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->setPrice(Ljava/lang/Double;)V

    .line 66
    const/16 v1, 0x11

    aput-boolean v5, v0, v1

    .line 72
    :goto_2
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->setCategory(Ljava/lang/String;)V

    const/16 v1, 0x13

    aput-boolean v5, v0, v1

    .line 73
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->setSelected(Ljava/lang/Boolean;)V

    const/16 v1, 0x14

    aput-boolean v5, v0, v1

    .line 75
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_3

    const/16 v1, 0x15

    aput-boolean v5, v0, v1

    .line 83
    :goto_3
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->setImageBytes([B)V

    const/16 v1, 0x1b

    aput-boolean v5, v0, v1

    .line 85
    :goto_4
    const/16 v1, 0x1c

    aput-boolean v5, v0, v1

    return-void

    .line 44
    :cond_0
    const/4 v1, 0x7

    aput-boolean v5, v0, v1

    .line 46
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->setId(Ljava/lang/Long;)V

    const/16 v1, 0x8

    aput-boolean v5, v0, v1

    goto/16 :goto_0

    .line 55
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->setQuantity(Ljava/lang/Integer;)V

    const/16 v1, 0xb

    aput-boolean v5, v0, v1

    goto/16 :goto_1

    .line 69
    :cond_2
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->setPrice(Ljava/lang/Double;)V

    const/16 v1, 0x12

    aput-boolean v5, v0, v1

    goto :goto_2

    .line 75
    :cond_3
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->isDefaultImage()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x16

    aput-boolean v5, v0, v1

    goto :goto_3

    :cond_4
    const/16 v1, 0x17

    aput-boolean v5, v0, v1

    .line 77
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x18

    aput-boolean v5, v0, v2

    .line 78
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const/16 v2, 0x19

    aput-boolean v5, v0, v2

    .line 79
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;->setImageBytes([B)V

    .line 80
    const/16 v1, 0x1a

    aput-boolean v5, v0, v1

    goto :goto_4
.end method

.method public getDoubleAsString(Ljava/lang/Double;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/impl/ProductConverterServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 137
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/impl/ProductConverterServiceImpl;->priceFormat2:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->getDoubleAsString(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x38

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getStringAsDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/impl/ProductConverterServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 143
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/impl/ProductConverterServiceImpl;->priceFormat2:Ljava/lang/String;

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/impl/ProductConverterServiceImpl;->priceFormat1:Ljava/lang/String;

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/impl/ProductConverterServiceImpl;->priceFormat0:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->getStringAsDouble(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0x39

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public setContext(Landroid/content/Context;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/impl/ProductConverterServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/impl/ProductConverterServiceImpl;->context:Landroid/content/Context;

    aput-boolean v3, v0, v3

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/impl/ProductConverterServiceImpl;->priceFormat0:Ljava/lang/String;

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090102

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/impl/ProductConverterServiceImpl;->priceFormat1:Ljava/lang/String;

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090103

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/converter/impl/ProductConverterServiceImpl;->priceFormat2:Ljava/lang/String;

    .line 37
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    return-void
.end method
