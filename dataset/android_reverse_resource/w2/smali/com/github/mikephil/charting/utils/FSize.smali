.class public final Lcom/github/mikephil/charting/utils/FSize;
.super Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;
.source "FSize.java"


# static fields
.field private static pool:Lcom/github/mikephil/charting/utils/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/mikephil/charting/utils/ObjectPool",
            "<",
            "Lcom/github/mikephil/charting/utils/FSize;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public height:F

.field public width:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    const/16 v0, 0x100

    new-instance v1, Lcom/github/mikephil/charting/utils/FSize;

    invoke-direct {v1, v2, v2}, Lcom/github/mikephil/charting/utils/FSize;-><init>(FF)V

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/utils/ObjectPool;->create(ILcom/github/mikephil/charting/utils/ObjectPool$Poolable;)Lcom/github/mikephil/charting/utils/ObjectPool;

    move-result-object v0

    sput-object v0, Lcom/github/mikephil/charting/utils/FSize;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    .line 21
    sget-object v0, Lcom/github/mikephil/charting/utils/FSize;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ObjectPool;->setReplenishPercentage(F)V

    .line 22
    return-void
.end method

.method private constructor <init>(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;-><init>()V

    .line 45
    iput p1, p0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    .line 46
    iput p2, p0, Lcom/github/mikephil/charting/utils/FSize;->height:F

    .line 47
    return-void
.end method

.method public static getInstance(FF)Lcom/github/mikephil/charting/utils/FSize;
    .locals 2
    .param p0, "width"    # F
    .param p1, "height"    # F

    .prologue
    .line 30
    sget-object v1, Lcom/github/mikephil/charting/utils/FSize;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ObjectPool;->get()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/utils/FSize;

    .line 31
    .local v0, "result":Lcom/github/mikephil/charting/utils/FSize;
    iput p0, v0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    .line 32
    iput p1, v0, Lcom/github/mikephil/charting/utils/FSize;->height:F

    .line 33
    return-object v0
.end method

.method public static recycleInstance(Lcom/github/mikephil/charting/utils/FSize;)V
    .locals 1
    .param p0, "instance"    # Lcom/github/mikephil/charting/utils/FSize;

    .prologue
    .line 37
    sget-object v0, Lcom/github/mikephil/charting/utils/FSize;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/utils/ObjectPool;->recycle(Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;)V

    .line 38
    return-void
.end method

.method public static recycleInstances(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/utils/FSize;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "instances":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/FSize;>;"
    sget-object v0, Lcom/github/mikephil/charting/utils/FSize;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/utils/ObjectPool;->recycle(Ljava/util/List;)V

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    if-nez p1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v2

    .line 54
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 55
    goto :goto_0

    .line 57
    :cond_2
    instance-of v3, p1, Lcom/github/mikephil/charting/utils/FSize;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 58
    check-cast v0, Lcom/github/mikephil/charting/utils/FSize;

    .line 59
    .local v0, "other":Lcom/github/mikephil/charting/utils/FSize;
    iget v3, p0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    iget v4, v0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/github/mikephil/charting/utils/FSize;->height:F

    iget v4, v0, Lcom/github/mikephil/charting/utils/FSize;->height:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 74
    iget v0, p0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Lcom/github/mikephil/charting/utils/FSize;->height:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method protected instantiate()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    new-instance v0, Lcom/github/mikephil/charting/utils/FSize;

    invoke-direct {v0, v1, v1}, Lcom/github/mikephil/charting/utils/FSize;-><init>(FF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/github/mikephil/charting/utils/FSize;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
