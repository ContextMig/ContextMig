.class public Lchan/android/app/pocketnote/util/view/NavigationMenuSection;
.super Ljava/lang/Object;
.source "NavigationMenuSection.java"

# interfaces
.implements Lchan/android/app/pocketnote/util/view/NavigationDrawerItem;


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field public static final SECTION_TYPE:I


# instance fields
.field private id:I

.field private label:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/util/view/NavigationMenuSection;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6773c7f0c3a55ae5L    # 2.203362250847291E190

    const-string v2, "chan/android/app/pocketnote/util/view/NavigationMenuSection"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/util/view/NavigationMenuSection;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationMenuSection;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static create(ILjava/lang/String;)Lchan/android/app/pocketnote/util/view/NavigationMenuSection;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationMenuSection;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    new-instance v1, Lchan/android/app/pocketnote/util/view/NavigationMenuSection;

    invoke-direct {v1}, Lchan/android/app/pocketnote/util/view/NavigationMenuSection;-><init>()V

    aput-boolean v3, v0, v3

    .line 17
    invoke-virtual {v1, p1}, Lchan/android/app/pocketnote/util/view/NavigationMenuSection;->setLabel(Ljava/lang/String;)V

    .line 18
    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public getId()I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationMenuSection;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    iget v1, p0, Lchan/android/app/pocketnote/util/view/NavigationMenuSection;->id:I

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getLabel()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationMenuSection;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    iget-object v1, p0, Lchan/android/app/pocketnote/util/view/NavigationMenuSection;->label:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getType()I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationMenuSection;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isCheckable()Z
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationMenuSection;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    const/4 v1, 0x0

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isEnabled()Z
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationMenuSection;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationMenuSection;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    iput-object p1, p0, Lchan/android/app/pocketnote/util/view/NavigationMenuSection;->label:Ljava/lang/String;

    .line 32
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public updateActionBarTitle()Z
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationMenuSection;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method
