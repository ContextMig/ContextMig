.class Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter$MenuItemHolder;
.super Ljava/lang/Object;
.source "NavigationDrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MenuItemHolder"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field icon:Landroid/widget/ImageView;

.field label:Landroid/widget/TextView;

.field notification:Landroid/widget/TextView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter$MenuItemHolder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7d0be4f9d181b57aL

    const-string v2, "chan/android/app/pocketnote/util/view/NavigationDrawerAdapter$MenuItemHolder"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter$MenuItemHolder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter$MenuItemHolder;->$jacocoInit()[Z

    move-result-object v1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aput-boolean v2, v1, v0

    .line 83
    const v0, 0x7f0c006d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter$MenuItemHolder;->label:Landroid/widget/TextView;

    aput-boolean v2, v1, v2

    .line 84
    const v0, 0x7f0c006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter$MenuItemHolder;->icon:Landroid/widget/ImageView;

    const/4 v0, 0x2

    aput-boolean v2, v1, v0

    .line 85
    const v0, 0x7f0c006e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter$MenuItemHolder;->notification:Landroid/widget/TextView;

    .line 86
    const/4 v0, 0x3

    aput-boolean v2, v1, v0

    return-void
.end method
