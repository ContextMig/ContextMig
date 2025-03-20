.class public Lchan/android/app/pocketnote/util/view/RoundedRectListView;
.super Landroid/widget/ListView;
.source "RoundedRectListView.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final RADIUS:F = 7.0f


# instance fields
.field private clip:Landroid/graphics/Path;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/util/view/RoundedRectListView;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6cfe07c3d0994b9eL    # 1.0352304169517016E217

    const-string v2, "chan/android/app/pocketnote/util/view/RoundedRectListView"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/util/view/RoundedRectListView;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/RoundedRectListView;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 18
    invoke-direct {p0}, Lchan/android/app/pocketnote/util/view/RoundedRectListView;->init()V

    .line 19
    aput-boolean v2, v0, v2

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/RoundedRectListView;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 23
    invoke-direct {p0}, Lchan/android/app/pocketnote/util/view/RoundedRectListView;->init()V

    .line 24
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/RoundedRectListView;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    .line 28
    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 29
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/RoundedRectListView;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    .line 42
    iget-object v1, p0, Lchan/android/app/pocketnote/util/view/RoundedRectListView;->clip:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/16 v1, 0xb

    aput-boolean v2, v0, v1

    .line 43
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 45
    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    .prologue
    const/high16 v6, 0x40e00000    # 7.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/RoundedRectListView;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    .line 34
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lchan/android/app/pocketnote/util/view/RoundedRectListView;->clip:Landroid/graphics/Path;

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    .line 35
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 v2, 0x8

    aput-boolean v4, v0, v2

    .line 36
    iget-object v2, p0, Lchan/android/app/pocketnote/util/view/RoundedRectListView;->clip:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v6, v6, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 37
    const/16 v1, 0x9

    aput-boolean v4, v0, v1

    return-void
.end method
