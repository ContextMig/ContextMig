.class Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$ColorItemAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ColorDropdownDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$ColorItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field drawable:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$ColorItemAdapter$ViewHolder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6efdc573a7993a0aL    # 4.4079280540324225E226

    const-string v2, "chan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$ColorItemAdapter$ViewHolder"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$ColorItemAdapter$ViewHolder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$ColorItemAdapter$ViewHolder;->$jacocoInit()[Z

    move-result-object v1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aput-boolean v2, v1, v0

    .line 120
    const v0, 0x7f0c005c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$ColorItemAdapter$ViewHolder;->drawable:Landroid/widget/ImageView;

    aput-boolean v2, v1, v2

    .line 121
    const v0, 0x7f0c005d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$ColorItemAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 122
    const/4 v0, 0x2

    aput-boolean v2, v1, v0

    return-void
.end method
