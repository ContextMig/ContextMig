.class public Lcom/kvannli/simonkvannli/dailybudget/MainActivity$PlaceholderFragment;
.super Landroid/support/v4/app/Fragment;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kvannli/simonkvannli/dailybudget/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaceholderFragment"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity$PlaceholderFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xdcb8df09178d1adL

    const-string v2, "com/kvannli/simonkvannli/dailybudget/MainActivity$PlaceholderFragment"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity$PlaceholderFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity$PlaceholderFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 179
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 180
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static newInstance(I)Lcom/kvannli/simonkvannli/dailybudget/MainActivity$PlaceholderFragment;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity$PlaceholderFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 187
    new-instance v1, Lcom/kvannli/simonkvannli/dailybudget/MainActivity$PlaceholderFragment;

    invoke-direct {v1}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity$PlaceholderFragment;-><init>()V

    aput-boolean v4, v0, v4

    .line 188
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x2

    aput-boolean v4, v0, v3

    .line 189
    const-string v3, "section_number"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v3, 0x3

    aput-boolean v4, v0, v3

    .line 190
    invoke-virtual {v1, v2}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity$PlaceholderFragment;->setArguments(Landroid/os/Bundle;)V

    .line 191
    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity$PlaceholderFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 203
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 204
    check-cast p1, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    .line 205
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity$PlaceholderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "section_number"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    aput-boolean v3, v0, v2

    .line 204
    invoke-virtual {p1, v1}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->onSectionAttached(I)V

    .line 206
    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity$PlaceholderFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 197
    const v2, 0x7f04001f

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, "rootView":Landroid/view/View;
    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method
