.class Lchan/android/app/pocketnote/app/trash/TrashFragment$ViewHolder;
.super Ljava/lang/Object;
.source "TrashFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/app/trash/TrashFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field date:Landroid/widget/TextView;

.field parent:Landroid/widget/LinearLayout;

.field title:Landroid/widget/TextView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/trash/TrashFragment$ViewHolder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x283d62cf1fdd73ffL    # 7.457989022734073E-115

    const-string v2, "chan/android/app/pocketnote/app/trash/TrashFragment$ViewHolder"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/trash/TrashFragment$ViewHolder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment$ViewHolder;->$jacocoInit()[Z

    move-result-object v1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aput-boolean v2, v1, v0

    .line 160
    const v0, 0x7f0c00b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment$ViewHolder;->parent:Landroid/widget/LinearLayout;

    aput-boolean v2, v1, v2

    .line 161
    const v0, 0x7f0c00ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment$ViewHolder;->title:Landroid/widget/TextView;

    const/4 v0, 0x2

    aput-boolean v2, v1, v0

    .line 162
    const v0, 0x7f0c00bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment$ViewHolder;->date:Landroid/widget/TextView;

    .line 163
    const/4 v0, 0x3

    aput-boolean v2, v1, v0

    return-void
.end method
