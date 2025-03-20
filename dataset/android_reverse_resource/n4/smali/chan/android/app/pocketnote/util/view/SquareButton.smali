.class public Lchan/android/app/pocketnote/util/view/SquareButton;
.super Landroid/widget/Button;
.source "SquareButton.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/util/view/SquareButton;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x583a777aede8af8L

    const-string v2, "chan/android/app/pocketnote/util/view/SquareButton"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/util/view/SquareButton;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/SquareButton;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/SquareButton;->$jacocoInit()[Z

    move-result-object v2

    .line 16
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    aput-boolean v4, v2, v4

    .line 17
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 18
    .local v0, "height":I
    if-le v1, v0, :cond_0

    const/4 v1, 0x2

    aput-boolean v4, v2, v1

    .end local v0    # "height":I
    :goto_0
    const/4 v1, 0x4

    aput-boolean v4, v2, v1

    .line 19
    invoke-virtual {p0, v0, v0}, Lchan/android/app/pocketnote/util/view/SquareButton;->setMeasuredDimension(II)V

    .line 20
    const/4 v1, 0x5

    aput-boolean v4, v2, v1

    return-void

    .line 18
    .restart local v0    # "height":I
    :cond_0
    const/4 v3, 0x3

    aput-boolean v4, v2, v3

    move v0, v1

    goto :goto_0
.end method
