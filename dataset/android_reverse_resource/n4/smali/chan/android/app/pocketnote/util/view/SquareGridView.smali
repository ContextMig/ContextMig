.class public Lchan/android/app/pocketnote/util/view/SquareGridView;
.super Landroid/widget/GridView;
.source "SquareGridView.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/util/view/SquareGridView;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3a803781783071b9L    # 6.549921152476473E-27

    const-string v2, "chan/android/app/pocketnote/util/view/SquareGridView"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/util/view/SquareGridView;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/SquareGridView;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/SquareGridView;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    aput-boolean v1, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/SquareGridView;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/SquareGridView;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-super {p0, p1, p1}, Landroid/widget/GridView;->onMeasure(II)V

    .line 25
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
