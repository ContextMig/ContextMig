.class Lcom/benoitletondor/easybudgetapp/view/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/MainActivity;->initRecyclerView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

.field final synthetic val$background:Landroid/view/View;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$9;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xfa234a44f66aa0bL

    const-string v2, "com/benoitletondor/easybudgetapp/view/MainActivity$9"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$9;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity;Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$9;->$jacocoInit()[Z

    move-result-object v0

    .line 967
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$9;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$9;->val$background:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onMenuCollapsed()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$9;->$jacocoInit()[Z

    move-result-object v0

    .line 1002
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v2, 0x6

    aput-boolean v4, v0, v2

    .line 1003
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v2, 0x7

    aput-boolean v4, v0, v2

    .line 1004
    invoke-virtual {v1, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    const/16 v2, 0x8

    aput-boolean v4, v0, v2

    .line 1005
    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/MainActivity$9$2;

    invoke-direct {v2, p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$9$2;-><init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity$9;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/16 v2, 0x9

    aput-boolean v4, v0, v2

    .line 1027
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$9;->val$background:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1028
    const/16 v1, 0xa

    aput-boolean v4, v0, v1

    return-void
.end method

.method public onMenuExpanded()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$9;->$jacocoInit()[Z

    move-result-object v0

    .line 971
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    aput-boolean v4, v0, v4

    .line 972
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    .line 973
    invoke-virtual {v1, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    const/4 v2, 0x3

    aput-boolean v4, v0, v2

    .line 974
    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/MainActivity$9$1;

    invoke-direct {v2, p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$9$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity$9;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    .line 996
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$9;->val$background:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 997
    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    return-void
.end method
