.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/fab/ScrollAwareFabBehaviorForDeleteActivities;
.super Landroid/support/design/widget/FloatingActionButton$Behavior;
.source "ScrollAwareFabBehaviorForDeleteActivities.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/fab/ScrollAwareFabBehaviorForDeleteActivities;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6b46ede9cd4295bL

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/fab/ScrollAwareFabBehaviorForDeleteActivities"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/fab/ScrollAwareFabBehaviorForDeleteActivities;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/fab/ScrollAwareFabBehaviorForDeleteActivities;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;II[I)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/fab/ScrollAwareFabBehaviorForDeleteActivities;->$jacocoInit()[Z

    move-result-object v0

    .line 42
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->hide()V

    .line 43
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public bridge synthetic onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 8

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/fab/ScrollAwareFabBehaviorForDeleteActivities;->$jacocoInit()[Z

    move-result-object v7

    move-object v2, p2

    .line 15
    check-cast v2, Landroid/support/design/widget/FloatingActionButton;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/fab/ScrollAwareFabBehaviorForDeleteActivities;->onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;II[I)V

    const/4 v0, 0x6

    const/4 v1, 0x1

    aput-boolean v1, v7, v0

    return-void
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;Landroid/view/View;I)Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/fab/ScrollAwareFabBehaviorForDeleteActivities;->$jacocoInit()[Z

    move-result-object v2

    .line 30
    if-ne p5, v3, :cond_0

    aput-boolean v1, v2, v1

    move v0, v1

    :goto_0
    const/4 v3, 0x3

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public bridge synthetic onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 7

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/fab/ScrollAwareFabBehaviorForDeleteActivities;->$jacocoInit()[Z

    move-result-object v6

    move-object v2, p2

    .line 15
    check-cast v2, Landroid/support/design/widget/FloatingActionButton;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/fab/ScrollAwareFabBehaviorForDeleteActivities;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v6, v1

    return v0
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/fab/ScrollAwareFabBehaviorForDeleteActivities;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->show()V

    .line 37
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public bridge synthetic onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/fab/ScrollAwareFabBehaviorForDeleteActivities;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/fab/ScrollAwareFabBehaviorForDeleteActivities;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)V

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
