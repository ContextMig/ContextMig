.class public Lbr/com/bean/ItemShoppingList;
.super Ljava/lang/Object;
.source "ItemShoppingList.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private checked:Z

.field private description:Ljava/lang/String;

.field private id:I

.field private idShoppingList:I

.field private quantity:F

.field private unitValue:F


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/bean/ItemShoppingList;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3b39e6c7226ba7e1L    # 2.1425198825601698E-23

    const-string v2, "br/com/bean/ItemShoppingList"

    const/16 v3, 0x15

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/bean/ItemShoppingList;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(IILjava/lang/String;FFZ)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lbr/com/bean/ItemShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    .line 73
    invoke-virtual {p0, p1}, Lbr/com/bean/ItemShoppingList;->setId(I)V

    const/16 v1, 0xf

    aput-boolean v2, v0, v1

    .line 74
    invoke-virtual {p0, p2}, Lbr/com/bean/ItemShoppingList;->setIdShoppingList(I)V

    const/16 v1, 0x10

    aput-boolean v2, v0, v1

    .line 75
    invoke-virtual {p0, p3}, Lbr/com/bean/ItemShoppingList;->setDescription(Ljava/lang/String;)V

    const/16 v1, 0x11

    aput-boolean v2, v0, v1

    .line 76
    invoke-virtual {p0, p4}, Lbr/com/bean/ItemShoppingList;->setUnitValue(F)V

    const/16 v1, 0x12

    aput-boolean v2, v0, v1

    .line 77
    invoke-virtual {p0, p5}, Lbr/com/bean/ItemShoppingList;->setQuantity(F)V

    const/16 v1, 0x13

    aput-boolean v2, v0, v1

    .line 78
    invoke-virtual {p0, p6}, Lbr/com/bean/ItemShoppingList;->setChecked(Z)V

    .line 79
    const/16 v1, 0x14

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lbr/com/bean/ItemShoppingList;->$jacocoInit()[Z

    move-result-object v7

    .line 69
    const v0, 0x7f05002f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v2, v1

    move v5, v4

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lbr/com/bean/ItemShoppingList;-><init>(IILjava/lang/String;FFZ)V

    .line 70
    const/16 v0, 0xd

    const/4 v1, 0x1

    aput-boolean v1, v7, v0

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/bean/ItemShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    iget-object v1, p0, Lbr/com/bean/ItemShoppingList;->description:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getId()I
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/bean/ItemShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    iget v1, p0, Lbr/com/bean/ItemShoppingList;->id:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getIdShoppingList()I
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/bean/ItemShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    iget v1, p0, Lbr/com/bean/ItemShoppingList;->idShoppingList:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getQuantity()F
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/bean/ItemShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    iget v1, p0, Lbr/com/bean/ItemShoppingList;->quantity:F

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getTotal()F
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/bean/ItemShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    iget v1, p0, Lbr/com/bean/ItemShoppingList;->quantity:F

    iget v2, p0, Lbr/com/bean/ItemShoppingList;->unitValue:F

    mul-float/2addr v1, v2

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getUnitValue()F
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/bean/ItemShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    iget v1, p0, Lbr/com/bean/ItemShoppingList;->unitValue:F

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isChecked()Z
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/bean/ItemShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 61
    iget-boolean v1, p0, Lbr/com/bean/ItemShoppingList;->checked:Z

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public setChecked(Z)V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/bean/ItemShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 65
    iput-boolean p1, p0, Lbr/com/bean/ItemShoppingList;->checked:Z

    .line 66
    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/bean/ItemShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    iput-object p1, p0, Lbr/com/bean/ItemShoppingList;->description:Ljava/lang/String;

    .line 37
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setId(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lbr/com/bean/ItemShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    iput p1, p0, Lbr/com/bean/ItemShoppingList;->id:I

    .line 21
    aput-boolean v1, v0, v1

    return-void
.end method

.method public setIdShoppingList(I)V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/bean/ItemShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    iput p1, p0, Lbr/com/bean/ItemShoppingList;->idShoppingList:I

    .line 29
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setQuantity(F)V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/bean/ItemShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    iput p1, p0, Lbr/com/bean/ItemShoppingList;->quantity:F

    .line 58
    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setUnitValue(F)V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/bean/ItemShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    iput p1, p0, Lbr/com/bean/ItemShoppingList;->unitValue:F

    .line 45
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
