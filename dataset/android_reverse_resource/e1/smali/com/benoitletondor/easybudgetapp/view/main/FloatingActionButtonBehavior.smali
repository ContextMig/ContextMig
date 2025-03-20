.class public Lcom/benoitletondor/easybudgetapp/view/main/FloatingActionButtonBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "FloatingActionButtonBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<",
        "Lcom/getbase/floatingactionbutton/FloatingActionsMenu;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/main/FloatingActionButtonBehavior;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x236f66322fc40fd1L    # -7.722305219530276E137

    const-string v2, "com/benoitletondor/easybudgetapp/view/main/FloatingActionButtonBehavior"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/main/FloatingActionButtonBehavior;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/FloatingActionButtonBehavior;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public bridge synthetic layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/FloatingActionButtonBehavior;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    check-cast p2, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {p0, p1, p2, p3}, Lcom/benoitletondor/easybudgetapp/view/main/FloatingActionButtonBehavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/FloatingActionButtonBehavior;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    instance-of v1, p3, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    aput-boolean v2, v0, v2

    return v1
.end method

.method public bridge synthetic onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/FloatingActionButtonBehavior;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    check-cast p2, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {p0, p1, p2, p3}, Lcom/benoitletondor/easybudgetapp/view/main/FloatingActionButtonBehavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/view/View;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/FloatingActionButtonBehavior;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    .line 53
    invoke-virtual {p2, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setTranslationY(F)V

    .line 54
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    return v4
.end method
