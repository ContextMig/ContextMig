.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$MyViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "TutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewPagerAdapter"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$MyViewPagerAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4797048610f011baL    # 7.648933068830632E36

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$MyViewPagerAdapter"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$MyViewPagerAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$MyViewPagerAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 184
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$MyViewPagerAdapter;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 185
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$MyViewPagerAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 210
    check-cast p3, Landroid/view/View;

    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    .line 211
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 212
    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$MyViewPagerAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 199
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$MyViewPagerAdapter;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->access$200(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;)[I

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$MyViewPagerAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 189
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$MyViewPagerAdapter;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$MyViewPagerAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    aput-boolean v4, v1, v4

    .line 191
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$MyViewPagerAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$MyViewPagerAdapter;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;

    invoke-static {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->access$200(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;)[I

    move-result-object v2

    aget v2, v2, p2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    .line 192
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 194
    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$MyViewPagerAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 204
    if-ne p1, p2, :cond_0

    const/4 v0, 0x5

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/4 v3, 0x7

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x6

    aput-boolean v1, v2, v3

    goto :goto_0
.end method
