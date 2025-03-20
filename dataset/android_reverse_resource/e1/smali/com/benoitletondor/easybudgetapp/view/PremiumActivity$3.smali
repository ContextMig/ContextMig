.class Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3;
.super Ljava/lang/Object;
.source "PremiumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6c6b73fd8edb0085L    # 1.8484092469958474E214

    const-string v2, "com/benoitletondor/easybudgetapp/view/PremiumActivity$3"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 105
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3;->$jacocoInit()[Z

    move-result-object v1

    .line 110
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;

    aput-boolean v6, v1, v6

    .line 111
    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;

    const/4 v4, 0x2

    aput-boolean v6, v1, v4

    .line 112
    invoke-virtual {v3}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080050

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    aput-boolean v6, v1, v5

    .line 110
    invoke-static {v0, v2, v3, v6, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    const/4 v0, 0x4

    aput-boolean v6, v1, v0

    .line 115
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;

    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/benoitletondor/easybudgetapp/EasyBudget;

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;

    new-instance v4, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3$1;

    invoke-direct {v4, p0, v2}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v3, v4}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->launchPremiumPurchaseFlow(Landroid/app/Activity;Lcom/benoitletondor/easybudgetapp/PremiumPurchaseListener;)V

    .line 150
    const/4 v0, 0x5

    aput-boolean v6, v1, v0

    return-void
.end method
