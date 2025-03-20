.class public Lcom/moonpi/swiftnotes/ColorPicker/HsvColorComparator;
.super Ljava/lang/Object;
.source "HsvColorComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/moonpi/swiftnotes/ColorPicker/HsvColorComparator;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x28e510f1547d498eL

    const-string v2, "com/moonpi/swiftnotes/ColorPicker/HsvColorComparator"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/moonpi/swiftnotes/ColorPicker/HsvColorComparator;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/HsvColorComparator;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 10

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/HsvColorComparator;->$jacocoInit()[Z

    move-result-object v7

    .line 15
    const/4 v6, 0x3

    new-array v6, v6, [F

    const/4 v8, 0x1

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    .line 16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 17
    const/4 v8, 0x0

    aget v0, v6, v8

    .line 18
    .local v0, "hue1":F
    const/4 v8, 0x1

    aget v2, v6, v8

    .line 19
    .local v2, "sat1":F
    const/4 v8, 0x2

    aget v4, v6, v8

    .line 21
    .local v4, "val1":F
    const/4 v6, 0x3

    new-array v6, v6, [F

    const/4 v8, 0x2

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    .line 22
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 23
    const/4 v8, 0x0

    aget v1, v6, v8

    .line 24
    .local v1, "hue2":F
    const/4 v8, 0x1

    aget v3, v6, v8

    .line 25
    .local v3, "sat2":F
    const/4 v8, 0x2

    aget v5, v6, v8

    .line 27
    .local v5, "val2":F
    cmpg-float v6, v0, v1

    if-gez v6, :cond_0

    .line 28
    const/4 v6, 0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    .line 49
    :goto_0
    return v6

    .line 30
    :cond_0
    cmpl-float v6, v0, v1

    if-lez v6, :cond_1

    .line 31
    const/4 v6, -0x1

    const/4 v8, 0x4

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    goto :goto_0

    .line 34
    :cond_1
    cmpg-float v6, v2, v3

    if-gez v6, :cond_2

    .line 35
    const/4 v6, 0x1

    const/4 v8, 0x5

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    goto :goto_0

    .line 37
    :cond_2
    cmpl-float v6, v2, v3

    if-lez v6, :cond_3

    .line 38
    const/4 v6, -0x1

    const/4 v8, 0x6

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    goto :goto_0

    .line 41
    :cond_3
    cmpg-float v6, v4, v5

    if-gez v6, :cond_4

    .line 42
    const/4 v6, 0x1

    const/4 v8, 0x7

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    goto :goto_0

    .line 44
    :cond_4
    cmpl-float v6, v4, v5

    if-lez v6, :cond_5

    .line 45
    const/4 v6, -0x1

    const/16 v8, 0x8

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    goto :goto_0

    .line 49
    :cond_5
    const/4 v6, 0x0

    const/16 v8, 0x9

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/HsvColorComparator;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/moonpi/swiftnotes/ColorPicker/HsvColorComparator;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method
