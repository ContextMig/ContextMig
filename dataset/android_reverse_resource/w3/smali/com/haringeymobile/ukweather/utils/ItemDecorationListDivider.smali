.class public Lcom/haringeymobile/ukweather/utils/ItemDecorationListDivider;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ItemDecorationListDivider.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private divider:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/utils/ItemDecorationListDivider;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1837cad71bf928cL

    const-string v2, "com/haringeymobile/ukweather/utils/ItemDecorationListDivider"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/utils/ItemDecorationListDivider;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/utils/ItemDecorationListDivider;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 15
    iput p1, p0, Lcom/haringeymobile/ukweather/utils/ItemDecorationListDivider;->divider:I

    .line 16
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/utils/ItemDecorationListDivider;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    iget v1, p0, Lcom/haringeymobile/ukweather/utils/ItemDecorationListDivider;->divider:I

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    aput-boolean v2, v0, v2

    .line 22
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 24
    :goto_0
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void

    .line 23
    :cond_0
    iget v1, p0, Lcom/haringeymobile/ukweather/utils/ItemDecorationListDivider;->divider:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    goto :goto_0
.end method
