.class Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UIHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x441321c548d35edeL    # -4.8904435574876297E-20

    const-string v2, "com/benoitletondor/easybudgetapp/helper/UIHelper$1$1"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1$1;->$jacocoInit()[Z

    move-result-object v0

    .line 148
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1$1;->this$0:Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1$1;->$jacocoInit()[Z

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1$1;->this$0:Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1;

    iget-object v1, v1, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1;->val$rootView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 153
    aput-boolean v3, v0, v3

    return-void
.end method
