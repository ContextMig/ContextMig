.class Lcom/benoitletondor/easybudgetapp/view/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/MainActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

.field final synthetic val$monthlyReportHint:Landroid/view/View;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6e550de8d2532acfL    # 3.044235909848945E223

    const-string v2, "com/benoitletondor/easybudgetapp/view/MainActivity$3"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity;Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 506
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$3;->val$monthlyReportHint:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 510
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$3;->val$monthlyReportHint:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    aput-boolean v3, v0, v3

    .line 511
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->setUserSawMonthlyReportHint(Landroid/content/Context;)V

    .line 512
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method
