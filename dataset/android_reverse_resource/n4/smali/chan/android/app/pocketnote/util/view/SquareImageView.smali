.class public Lchan/android/app/pocketnote/util/view/SquareImageView;
.super Landroid/widget/ImageView;
.source "SquareImageView.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/util/view/SquareImageView;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3ecd5bf84a13ecb4L    # -1221639.7106334744

    const-string v2, "chan/android/app/pocketnote/util/view/SquareImageView"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/util/view/SquareImageView;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/SquareImageView;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 11
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/SquareImageView;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    aput-boolean v1, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/SquareImageView;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/SquareImageView;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    invoke-super {p0, p1, p1}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 24
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
