.class public Lchan/android/app/pocketnote/util/view/NavigationMenuItem;
.super Ljava/lang/Object;
.source "NavigationMenuItem.java"

# interfaces
.implements Lchan/android/app/pocketnote/util/view/NavigationDrawerItem;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final ITEM_TYPE:I = 0x1


# instance fields
.field private checkable:Z

.field private icon:I

.field private id:I

.field private label:Ljava/lang/String;

.field private updateActionBarTitle:Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x16e1f41ade7a0c93L    # -2.2460041196569293E198

    const-string v2, "chan/android/app/pocketnote/util/view/NavigationMenuItem"

    const/16 v3, 0x14

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static create(ILjava/lang/String;Ljava/lang/String;ZZLandroid/content/Context;)Lchan/android/app/pocketnote/util/view/NavigationMenuItem;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    new-instance v1, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;

    invoke-direct {v1}, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;-><init>()V

    aput-boolean v5, v0, v5

    .line 25
    invoke-virtual {v1, p0}, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->setId(I)V

    const/4 v2, 0x2

    aput-boolean v5, v0, v2

    .line 26
    invoke-virtual {v1, p1}, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->setLabel(Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-boolean v5, v0, v2

    .line 27
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    aput-boolean v5, v0, v3

    .line 28
    invoke-virtual {v1, v2}, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->setIcon(I)V

    const/4 v2, 0x5

    aput-boolean v5, v0, v2

    .line 29
    invoke-virtual {v1, p3}, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->setUpdateActionBarTitle(Z)V

    const/4 v2, 0x6

    aput-boolean v5, v0, v2

    .line 30
    invoke-virtual {v1, p4}, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->setCheckable(Z)V

    .line 31
    const/4 v2, 0x7

    aput-boolean v5, v0, v2

    return-object v1
.end method


# virtual methods
.method public getIcon()I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    iget v1, p0, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->icon:I

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getId()I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    iget v1, p0, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->id:I

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getLabel()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    iget-object v1, p0, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->label:Ljava/lang/String;

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getType()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    return v2
.end method

.method public isCheckable()Z
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->$jacocoInit()[Z

    move-result-object v0

    .line 78
    iget-boolean v1, p0, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->checkable:Z

    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->$jacocoInit()[Z

    move-result-object v0

    .line 65
    const/16 v1, 0xf

    aput-boolean v2, v0, v1

    return v2
.end method

.method public setCheckable(Z)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->$jacocoInit()[Z

    move-result-object v0

    .line 82
    iput-boolean p1, p0, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->checkable:Z

    .line 83
    const/16 v1, 0x13

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setIcon(I)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    iput p1, p0, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->icon:I

    .line 61
    const/16 v1, 0xe

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setId(I)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    iput p1, p0, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->id:I

    .line 45
    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    iput-object p1, p0, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->label:Ljava/lang/String;

    .line 53
    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setUpdateActionBarTitle(Z)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->$jacocoInit()[Z

    move-result-object v0

    .line 74
    iput-boolean p1, p0, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->updateActionBarTitle:Z

    .line 75
    const/16 v1, 0x11

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public updateActionBarTitle()Z
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->$jacocoInit()[Z

    move-result-object v0

    .line 70
    iget-boolean v1, p0, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->updateActionBarTitle:Z

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method
