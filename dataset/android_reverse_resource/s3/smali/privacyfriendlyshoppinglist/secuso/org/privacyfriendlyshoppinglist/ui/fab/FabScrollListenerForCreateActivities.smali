.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/fab/FabScrollListenerForCreateActivities;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "FabScrollListenerForCreateActivities.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final fab:Landroid/support/design/widget/FloatingActionButton;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/fab/FabScrollListenerForCreateActivities;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x65e2b6b500f98e77L    # 6.212222960575758E182

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/fab/FabScrollListenerForCreateActivities"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/fab/FabScrollListenerForCreateActivities;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/support/design/widget/FloatingActionButton;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/fab/FabScrollListenerForCreateActivities;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 11
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/fab/FabScrollListenerForCreateActivities;->fab:Landroid/support/design/widget/FloatingActionButton;

    .line 12
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/fab/FabScrollListenerForCreateActivities;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    if-gtz p3, :cond_0

    aput-boolean v2, v0, v2

    .line 28
    :goto_0
    if-ltz p3, :cond_2

    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    .line 32
    :goto_1
    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    return-void

    .line 24
    :cond_0
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/fab/FabScrollListenerForCreateActivities;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 26
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/fab/FabScrollListenerForCreateActivities;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->hide()V

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    goto :goto_1

    .line 28
    :cond_2
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/fab/FabScrollListenerForCreateActivities;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->isShown()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x7

    aput-boolean v2, v0, v1

    .line 30
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/fab/FabScrollListenerForCreateActivities;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->show()V

    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    goto :goto_1
.end method
