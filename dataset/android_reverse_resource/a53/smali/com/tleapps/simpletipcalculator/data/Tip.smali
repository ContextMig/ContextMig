.class public final Lcom/tleapps/simpletipcalculator/data/Tip;
.super Ljava/lang/Object;
.source "Tip.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J1\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\"\u0004\u0008\u0012\u0010\u0010R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000e\"\u0004\u0008\u0014\u0010\u0010\u00a8\u0006 "
    }
    d2 = {
        "Lcom/tleapps/simpletipcalculator/data/Tip;",
        "",
        "bill",
        "",
        "percentage",
        "",
        "split",
        "standIn",
        "(FIII)V",
        "getBill",
        "()F",
        "setBill",
        "(F)V",
        "getPercentage",
        "()I",
        "setPercentage",
        "(I)V",
        "getSplit",
        "setSplit",
        "getStandIn",
        "setStandIn",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field private bill:F

.field private percentage:I

.field private split:I

.field private standIn:I


# direct methods
.method public constructor <init>(FIII)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->bill:F

    iput p2, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->percentage:I

    iput p3, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->split:I

    iput p4, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->standIn:I

    return-void
.end method

.method public static bridge synthetic copy$default(Lcom/tleapps/simpletipcalculator/data/Tip;FIIIILjava/lang/Object;)Lcom/tleapps/simpletipcalculator/data/Tip;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->bill:F

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->percentage:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->split:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->standIn:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tleapps/simpletipcalculator/data/Tip;->copy(FIII)Lcom/tleapps/simpletipcalculator/data/Tip;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->bill:F

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->percentage:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->split:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->standIn:I

    return v0
.end method

.method public final copy(FIII)Lcom/tleapps/simpletipcalculator/data/Tip;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/tleapps/simpletipcalculator/data/Tip;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/tleapps/simpletipcalculator/data/Tip;-><init>(FIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    instance-of v1, p1, Lcom/tleapps/simpletipcalculator/data/Tip;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/tleapps/simpletipcalculator/data/Tip;

    iget v1, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->bill:F

    iget v3, p1, Lcom/tleapps/simpletipcalculator/data/Tip;->bill:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->percentage:I

    iget v3, p1, Lcom/tleapps/simpletipcalculator/data/Tip;->percentage:I

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    iget v1, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->split:I

    iget v3, p1, Lcom/tleapps/simpletipcalculator/data/Tip;->split:I

    if-ne v1, v3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    iget v1, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->standIn:I

    iget p1, p1, Lcom/tleapps/simpletipcalculator/data/Tip;->standIn:I

    if-ne v1, p1, :cond_2

    move p1, v0

    goto :goto_2

    :cond_2
    move p1, v2

    :goto_2
    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v2

    :cond_4
    return v0
.end method

.method public final getBill()F
    .locals 1

    .line 3
    iget v0, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->bill:F

    return v0
.end method

.method public final getPercentage()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->percentage:I

    return v0
.end method

.method public final getSplit()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->split:I

    return v0
.end method

.method public final getStandIn()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->standIn:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->bill:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->percentage:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->split:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->standIn:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setBill(F)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->bill:F

    return-void
.end method

.method public final setPercentage(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->percentage:I

    return-void
.end method

.method public final setSplit(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->split:I

    return-void
.end method

.method public final setStandIn(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->standIn:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tip(bill="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->bill:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", percentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->percentage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", split="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->split:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", standIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tleapps/simpletipcalculator/data/Tip;->standIn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
