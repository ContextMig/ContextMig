.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;
.super Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/business/AbstractItem;
.source "ProductItem.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private checked:Z

.field private isDefaultImage:Z

.field private listId:Ljava/lang/String;

.field private productCategory:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private productNotes:Ljava/lang/String;

.field private productPrice:Ljava/lang/String;

.field private productStore:Ljava/lang/String;

.field private quantity:Ljava/lang/String;

.field private selectedForDeletion:Z

.field private thumbnailBitmap:Landroid/graphics/Bitmap;

.field private totalProductPrice:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x63728753347cc1faL

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem"

    const/16 v3, 0x98

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/business/AbstractItem;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v2

    .line 237
    if-ne p0, p1, :cond_0

    const/16 v0, 0x52

    aput-boolean v1, v2, v0

    move v0, v1

    .line 255
    :goto_0
    return v0

    .line 238
    :cond_0
    if-nez p1, :cond_1

    const/16 v3, 0x53

    aput-boolean v1, v2, v3

    :goto_1
    const/16 v3, 0x55

    aput-boolean v1, v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    const/16 v3, 0x54

    aput-boolean v1, v2, v3

    goto :goto_1

    .line 240
    :cond_2
    check-cast p1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;

    const/16 v3, 0x56

    aput-boolean v1, v2, v3

    .line 242
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->isChecked()Z

    move-result v3

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->isChecked()Z

    move-result v4

    if-eq v3, v4, :cond_3

    const/16 v3, 0x57

    aput-boolean v1, v2, v3

    goto :goto_0

    .line 243
    :cond_3
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->isSelectedForDeletion()Z

    move-result v3

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->isSelectedForDeletion()Z

    move-result v4

    if-eq v3, v4, :cond_4

    const/16 v3, 0x58

    aput-boolean v1, v2, v3

    goto :goto_0

    .line 244
    :cond_4
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x59

    aput-boolean v1, v2, v3

    .line 246
    :goto_2
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x5e

    aput-boolean v1, v2, v3

    .line 247
    :goto_3
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductCategory()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v3, 0x63

    aput-boolean v1, v2, v3

    .line 249
    :goto_4
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getQuantity()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getQuantity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getQuantity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x68

    aput-boolean v1, v2, v3

    .line 251
    :goto_5
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductNotes()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductNotes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductNotes()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x6d

    aput-boolean v1, v2, v3

    .line 253
    :goto_6
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductStore()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductStore()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductStore()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/16 v3, 0x72

    aput-boolean v1, v2, v3

    .line 255
    :goto_7
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductPrice()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x77

    aput-boolean v1, v2, v3

    :goto_8
    const/16 v3, 0x7a

    aput-boolean v1, v2, v3

    goto/16 :goto_0

    .line 244
    :cond_5
    const/16 v3, 0x5a

    aput-boolean v1, v2, v3

    .line 245
    :goto_9
    const/16 v3, 0x5d

    aput-boolean v1, v2, v3

    goto/16 :goto_0

    .line 244
    :cond_6
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    const/16 v3, 0x5b

    aput-boolean v1, v2, v3

    goto/16 :goto_2

    :cond_7
    const/16 v3, 0x5c

    aput-boolean v1, v2, v3

    goto :goto_9

    .line 246
    :cond_8
    const/16 v3, 0x5f

    aput-boolean v1, v2, v3

    :goto_a
    const/16 v3, 0x62

    aput-boolean v1, v2, v3

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    const/16 v3, 0x60

    aput-boolean v1, v2, v3

    goto/16 :goto_3

    :cond_a
    const/16 v3, 0x61

    aput-boolean v1, v2, v3

    goto :goto_a

    .line 247
    :cond_b
    const/16 v3, 0x64

    aput-boolean v1, v2, v3

    .line 248
    :goto_b
    const/16 v3, 0x67

    aput-boolean v1, v2, v3

    goto/16 :goto_0

    .line 247
    :cond_c
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductCategory()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    const/16 v3, 0x65

    aput-boolean v1, v2, v3

    goto/16 :goto_4

    :cond_d
    const/16 v3, 0x66

    aput-boolean v1, v2, v3

    goto :goto_b

    .line 249
    :cond_e
    const/16 v3, 0x69

    aput-boolean v1, v2, v3

    .line 250
    :goto_c
    const/16 v3, 0x6c

    aput-boolean v1, v2, v3

    goto/16 :goto_0

    .line 249
    :cond_f
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getQuantity()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    const/16 v3, 0x6a

    aput-boolean v1, v2, v3

    goto/16 :goto_5

    :cond_10
    const/16 v3, 0x6b

    aput-boolean v1, v2, v3

    goto :goto_c

    .line 251
    :cond_11
    const/16 v3, 0x6e

    aput-boolean v1, v2, v3

    .line 252
    :goto_d
    const/16 v3, 0x71

    aput-boolean v1, v2, v3

    goto/16 :goto_0

    .line 251
    :cond_12
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductNotes()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_13

    const/16 v3, 0x6f

    aput-boolean v1, v2, v3

    goto/16 :goto_6

    :cond_13
    const/16 v3, 0x70

    aput-boolean v1, v2, v3

    goto :goto_d

    .line 253
    :cond_14
    const/16 v3, 0x73

    aput-boolean v1, v2, v3

    .line 254
    :goto_e
    const/16 v3, 0x76

    aput-boolean v1, v2, v3

    goto/16 :goto_0

    .line 253
    :cond_15
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductStore()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_16

    const/16 v3, 0x74

    aput-boolean v1, v2, v3

    goto/16 :goto_7

    :cond_16
    const/16 v3, 0x75

    aput-boolean v1, v2, v3

    goto :goto_e

    .line 255
    :cond_17
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductPrice()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_18

    const/16 v0, 0x78

    aput-boolean v1, v2, v0

    move v0, v1

    goto/16 :goto_8

    :cond_18
    const/16 v3, 0x79

    aput-boolean v1, v2, v3

    goto/16 :goto_8
.end method

.method public getDetailInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v5

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v4, 0x25

    aput-boolean v2, v5, v4

    .line 184
    const v4, 0x7f0900ab

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->quantity:Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {v1, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x26

    aput-boolean v2, v5, v6

    .line 185
    const v6, 0x7f09009d

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->productPrice:Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v1, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x27

    aput-boolean v2, v5, v7

    .line 186
    const v7, 0x7f0900ce

    new-array v8, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->totalProductPrice:Ljava/lang/String;

    aput-object v9, v8, v3

    invoke-virtual {v1, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x28

    aput-boolean v2, v5, v8

    .line 187
    const v8, 0x7f090077

    new-array v9, v2, [Ljava/lang/Object;

    iget-object v10, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->productNotes:Ljava/lang/String;

    aput-object v10, v9, v3

    invoke-virtual {v1, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x29

    aput-boolean v2, v5, v9

    .line 188
    const v9, 0x7f090025

    new-array v10, v2, [Ljava/lang/Object;

    iget-object v11, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->productCategory:Ljava/lang/String;

    aput-object v11, v10, v3

    invoke-virtual {v1, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2a

    aput-boolean v2, v5, v10

    .line 189
    const v10, 0x7f0900c6

    new-array v11, v2, [Ljava/lang/Object;

    iget-object v12, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->productStore:Ljava/lang/String;

    aput-object v12, v11, v3

    invoke-virtual {v1, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/16 v1, 0x2b

    aput-boolean v2, v5, v1

    .line 191
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2c

    aput-boolean v2, v5, v1

    .line 192
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->quantity:Ljava/lang/String;

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2d

    aput-boolean v2, v5, v1

    .line 197
    :goto_0
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->productPrice:Ljava/lang/String;

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x31

    aput-boolean v2, v5, v1

    .line 202
    :goto_1
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->totalProductPrice:Ljava/lang/String;

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x35

    aput-boolean v2, v5, v1

    .line 207
    :goto_2
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->productCategory:Ljava/lang/String;

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x38

    aput-boolean v2, v5, v1

    move v1, v2

    :goto_3
    const/16 v4, 0x3a

    aput-boolean v2, v5, v4

    .line 208
    iget-object v4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->productStore:Ljava/lang/String;

    invoke-static {v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const/16 v4, 0x3b

    aput-boolean v2, v5, v4

    move v4, v2

    :goto_4
    const/16 v6, 0x3d

    aput-boolean v2, v5, v6

    .line 209
    iget-object v6, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->productNotes:Ljava/lang/String;

    invoke-static {v6}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const/16 v3, 0x3e

    aput-boolean v2, v5, v3

    move v0, v2

    .line 210
    .local v0, "notesExists":Z
    :goto_5
    if-eqz v1, :cond_6

    const/16 v3, 0x40

    aput-boolean v2, v5, v3

    .line 212
    :goto_6
    const-string v3, "\n"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x44

    aput-boolean v2, v5, v3

    .line 215
    :goto_7
    if-nez v1, :cond_9

    const/16 v1, 0x45

    aput-boolean v2, v5, v1

    .line 220
    :goto_8
    if-nez v4, :cond_a

    const/16 v1, 0x49

    aput-boolean v2, v5, v1

    .line 225
    :goto_9
    if-nez v0, :cond_b

    const/16 v1, 0x4d

    aput-boolean v2, v5, v1

    .line 231
    :goto_a
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x51

    aput-boolean v2, v5, v3

    return-object v1

    .line 192
    .end local v0    # "notesExists":Z
    :cond_0
    const/16 v1, 0x2e

    aput-boolean v2, v5, v1

    .line 194
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    aput-boolean v2, v5, v1

    .line 195
    const-string v1, "\n"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    aput-boolean v2, v5, v1

    goto/16 :goto_0

    .line 197
    :cond_1
    const/16 v1, 0x32

    aput-boolean v2, v5, v1

    .line 199
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x33

    aput-boolean v2, v5, v1

    .line 200
    const-string v1, "\n"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x34

    aput-boolean v2, v5, v1

    goto/16 :goto_1

    .line 202
    :cond_2
    const/16 v1, 0x36

    aput-boolean v2, v5, v1

    .line 204
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x37

    aput-boolean v2, v5, v1

    goto/16 :goto_2

    .line 207
    :cond_3
    const/16 v1, 0x39

    aput-boolean v2, v5, v1

    move v1, v3

    goto/16 :goto_3

    .line 208
    :cond_4
    const/16 v4, 0x3c

    aput-boolean v2, v5, v4

    move v4, v3

    goto :goto_4

    .line 209
    :cond_5
    const/16 v6, 0x3f

    aput-boolean v2, v5, v6

    move v0, v3

    goto :goto_5

    .line 210
    .restart local v0    # "notesExists":Z
    :cond_6
    if-eqz v4, :cond_7

    const/16 v3, 0x41

    aput-boolean v2, v5, v3

    goto :goto_6

    :cond_7
    if-nez v0, :cond_8

    const/16 v3, 0x42

    aput-boolean v2, v5, v3

    goto :goto_7

    :cond_8
    const/16 v3, 0x43

    aput-boolean v2, v5, v3

    goto/16 :goto_6

    .line 215
    :cond_9
    const/16 v1, 0x46

    aput-boolean v2, v5, v1

    .line 217
    const-string v1, "\n"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x47

    aput-boolean v2, v5, v1

    .line 218
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x48

    aput-boolean v2, v5, v1

    goto/16 :goto_8

    .line 220
    :cond_a
    const/16 v1, 0x4a

    aput-boolean v2, v5, v1

    .line 222
    const-string v1, "\n"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x4b

    aput-boolean v2, v5, v1

    .line 223
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x4c

    aput-boolean v2, v5, v1

    goto/16 :goto_9

    .line 225
    :cond_b
    const/16 v1, 0x4e

    aput-boolean v2, v5, v1

    .line 227
    const-string v1, "\n"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x4f

    aput-boolean v2, v5, v1

    .line 228
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    aput-boolean v2, v5, v1

    goto/16 :goto_a
.end method

.method public getListId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->listId:Ljava/lang/String;

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public getProductCategory()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v0

    .line 119
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->productCategory:Ljava/lang/String;

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getProductName()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v0

    .line 129
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->productName:Ljava/lang/String;

    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getProductNotes()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v0

    .line 64
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->productNotes:Ljava/lang/String;

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getProductPrice()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v0

    .line 84
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->productPrice:Ljava/lang/String;

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getProductStore()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v0

    .line 74
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->productStore:Ljava/lang/String;

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getQuantity()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->quantity:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v2

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0x18

    aput-boolean v6, v2, v4

    .line 160
    const v4, 0x7f0900c7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x19

    aput-boolean v6, v2, v5

    .line 161
    const v5, 0x7f090026

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1a

    aput-boolean v6, v2, v5

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    const/16 v5, 0x1b

    aput-boolean v6, v2, v5

    .line 165
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductStore()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v4, 0x1c

    aput-boolean v6, v2, v4

    .line 170
    :goto_0
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductCategory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v3, 0x1f

    aput-boolean v6, v2, v3

    .line 178
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x24

    aput-boolean v6, v2, v4

    return-object v3

    .line 165
    :cond_0
    const/16 v5, 0x1d

    aput-boolean v6, v2, v5

    .line 167
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductStore()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const/4 v1, 0x1

    .local v1, "withStore":Z
    const/16 v4, 0x1e

    aput-boolean v6, v2, v4

    goto :goto_0

    .line 172
    .end local v1    # "withStore":Z
    :cond_1
    if-nez v1, :cond_2

    const/16 v4, 0x20

    aput-boolean v6, v2, v4

    .line 176
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x23

    aput-boolean v6, v2, v3

    goto :goto_1

    .line 172
    :cond_2
    const/16 v4, 0x21

    aput-boolean v6, v2, v4

    .line 174
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x22

    aput-boolean v6, v2, v4

    goto :goto_2
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v0

    .line 139
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->thumbnailBitmap:Landroid/graphics/Bitmap;

    const/16 v2, 0x14

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v4

    .line 262
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v5, 0x7b

    aput-boolean v3, v4, v5

    :goto_0
    const/16 v5, 0x7d

    aput-boolean v3, v4, v5

    .line 263
    mul-int/lit8 v5, v1, 0x1f

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v6, 0x7e

    aput-boolean v3, v4, v6

    :goto_1
    add-int v0, v5, v1

    .local v0, "result":I
    const/16 v1, 0x80

    aput-boolean v3, v4, v1

    .line 264
    mul-int/lit8 v5, v0, 0x1f

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductCategory()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v6, 0x81

    aput-boolean v3, v4, v6

    :goto_2
    add-int v0, v5, v1

    const/16 v1, 0x83

    aput-boolean v3, v4, v1

    .line 265
    mul-int/lit8 v5, v0, 0x1f

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getQuantity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getQuantity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v6, 0x84

    aput-boolean v3, v4, v6

    :goto_3
    add-int v0, v5, v1

    const/16 v1, 0x86

    aput-boolean v3, v4, v1

    .line 266
    mul-int/lit8 v5, v0, 0x1f

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductNotes()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductNotes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v6, 0x87

    aput-boolean v3, v4, v6

    :goto_4
    add-int v0, v5, v1

    const/16 v1, 0x89

    aput-boolean v3, v4, v1

    .line 267
    mul-int/lit8 v5, v0, 0x1f

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductStore()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductStore()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v6, 0x8a

    aput-boolean v3, v4, v6

    :goto_5
    add-int v0, v5, v1

    const/16 v1, 0x8c

    aput-boolean v3, v4, v1

    .line 268
    mul-int/lit8 v5, v0, 0x1f

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductPrice()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v6, 0x8d

    aput-boolean v3, v4, v6

    :goto_6
    add-int v0, v5, v1

    const/16 v1, 0x8f

    aput-boolean v3, v4, v1

    .line 269
    mul-int/lit8 v5, v0, 0x1f

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x90

    aput-boolean v3, v4, v1

    move v1, v3

    :goto_7
    add-int v0, v5, v1

    const/16 v1, 0x92

    aput-boolean v3, v4, v1

    .line 270
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->isSelectedForDeletion()Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v2, 0x93

    aput-boolean v3, v4, v2

    move v2, v3

    :goto_8
    add-int v0, v1, v2

    .line 271
    const/16 v1, 0x95

    aput-boolean v3, v4, v1

    return v0

    .line 262
    .end local v0    # "result":I
    :cond_0
    const/16 v1, 0x7c

    aput-boolean v3, v4, v1

    move v1, v2

    goto/16 :goto_0

    .line 263
    :cond_1
    const/16 v1, 0x7f

    aput-boolean v3, v4, v1

    move v1, v2

    goto/16 :goto_1

    .line 264
    .restart local v0    # "result":I
    :cond_2
    const/16 v1, 0x82

    aput-boolean v3, v4, v1

    move v1, v2

    goto/16 :goto_2

    .line 265
    :cond_3
    const/16 v1, 0x85

    aput-boolean v3, v4, v1

    move v1, v2

    goto/16 :goto_3

    .line 266
    :cond_4
    const/16 v1, 0x88

    aput-boolean v3, v4, v1

    move v1, v2

    goto/16 :goto_4

    .line 267
    :cond_5
    const/16 v1, 0x8b

    aput-boolean v3, v4, v1

    move v1, v2

    goto :goto_5

    .line 268
    :cond_6
    const/16 v1, 0x8e

    aput-boolean v3, v4, v1

    move v1, v2

    goto :goto_6

    .line 269
    :cond_7
    const/16 v1, 0x91

    aput-boolean v3, v4, v1

    move v1, v2

    goto :goto_7

    .line 270
    :cond_8
    const/16 v5, 0x94

    aput-boolean v3, v4, v5

    goto :goto_8
.end method

.method public isChecked()Z
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v0

    .line 94
    iget-boolean v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->checked:Z

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isDefaultImage()Z
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v0

    .line 149
    iget-boolean v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->isDefaultImage:Z

    const/16 v2, 0x16

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isSelectedForDeletion()Z
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v0

    .line 104
    iget-boolean v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->selectedForDeletion:Z

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public setChecked(Z)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v0

    .line 99
    iput-boolean p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->checked:Z

    .line 100
    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setDefaultImage(Z)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v0

    .line 154
    iput-boolean p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->isDefaultImage:Z

    .line 155
    const/16 v1, 0x17

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setListId(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->listId:Ljava/lang/String;

    .line 50
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setProductCategory(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v0

    .line 124
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->productCategory:Ljava/lang/String;

    .line 125
    const/16 v1, 0x11

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v0

    .line 134
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->productName:Ljava/lang/String;

    .line 135
    const/16 v1, 0x13

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setProductNotes(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v0

    .line 69
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->productNotes:Ljava/lang/String;

    .line 70
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setProductPrice(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v0

    .line 89
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->productPrice:Ljava/lang/String;

    .line 90
    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setProductStore(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v0

    .line 79
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->productStore:Ljava/lang/String;

    .line 80
    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setQuantity(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v0

    .line 59
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->quantity:Ljava/lang/String;

    .line 60
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setSelectedForDeletion(Z)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v0

    .line 109
    iput-boolean p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->selectedForDeletion:Z

    .line 110
    const/16 v1, 0xe

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setThumbnailBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v0

    .line 144
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->thumbnailBitmap:Landroid/graphics/Bitmap;

    .line 145
    const/16 v1, 0x15

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setTotalProductPrice(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v0

    .line 114
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->totalProductPrice:Ljava/lang/String;

    .line 115
    const/16 v1, 0xf

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x27

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->$jacocoInit()[Z

    move-result-object v0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProductItem{productName=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->productName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x96

    aput-boolean v4, v0, v2

    .line 279
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", productCategory=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->productCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", quantity=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->quantity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", productNotes=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->productNotes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", productStore=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->productStore:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", productPrice=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->productPrice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", totalProductPrice=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->totalProductPrice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", checked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->checked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", selectedForDeletion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->selectedForDeletion:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", thumbnailBitmap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->thumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isDefaultImage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->isDefaultImage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    const/16 v2, 0x97

    aput-boolean v4, v0, v2

    return-object v1
.end method
