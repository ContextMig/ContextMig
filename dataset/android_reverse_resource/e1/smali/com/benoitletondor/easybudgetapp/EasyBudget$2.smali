.class Lcom/benoitletondor/easybudgetapp/EasyBudget$2;
.super Ljava/lang/Object;
.source "EasyBudget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/EasyBudget;->showPremiumPopupIfNeeded(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/EasyBudget$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2ca05a51f5fdd491L    # 9.79949805261317E-94

    const-string v2, "com/benoitletondor/easybudgetapp/EasyBudget$2"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/EasyBudget$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/EasyBudget;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget$2;->$jacocoInit()[Z

    move-result-object v0

    .line 383
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$2;->this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget$2;->$jacocoInit()[Z

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$2;->this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v2, "premium_popup_complete"

    invoke-virtual {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putBoolean(Ljava/lang/String;Z)V

    aput-boolean v3, v0, v3

    .line 388
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 389
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method
