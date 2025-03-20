.class Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter$MenuSectionHolder;
.super Ljava/lang/Object;
.source "NavigationDrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuSectionHolder"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field section:Landroid/widget/TextView;

.field final synthetic this$0:Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter$MenuSectionHolder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x163e5beb4af6b106L

    const-string v2, "chan/android/app/pocketnote/util/view/NavigationDrawerAdapter$MenuSectionHolder"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter$MenuSectionHolder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter$MenuSectionHolder;->$jacocoInit()[Z

    move-result-object v1

    .line 92
    iput-object p1, p0, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter$MenuSectionHolder;->this$0:Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aput-boolean v2, v1, v0

    .line 93
    const v0, 0x7f0c006f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter$MenuSectionHolder;->section:Landroid/widget/TextView;

    .line 94
    aput-boolean v2, v1, v2

    return-void
.end method
