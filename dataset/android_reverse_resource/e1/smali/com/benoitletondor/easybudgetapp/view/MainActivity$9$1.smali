.class Lcom/benoitletondor/easybudgetapp/view/MainActivity$9$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/MainActivity$9;->onMenuExpanded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lcom/benoitletondor/easybudgetapp/view/MainActivity$9;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$9$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x77539a818b2278acL

    const-string v2, "com/benoitletondor/easybudgetapp/view/MainActivity$9$1"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$9$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity$9;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$9$1;->$jacocoInit()[Z

    move-result-object v0

    .line 975
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$9$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/MainActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$9$1;->$jacocoInit()[Z

    move-result-object v0

    .line 987
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$9$1;->$jacocoInit()[Z

    move-result-object v0

    .line 993
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$9$1;->$jacocoInit()[Z

    move-result-object v0

    .line 979
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$9$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/MainActivity$9;

    iget-object v1, v1, Lcom/benoitletondor/easybudgetapp/view/MainActivity$9;->val$background:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    aput-boolean v3, v0, v3

    .line 980
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$9$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/MainActivity$9;

    iget-object v1, v1, Lcom/benoitletondor/easybudgetapp/view/MainActivity$9;->val$background:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 981
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method
