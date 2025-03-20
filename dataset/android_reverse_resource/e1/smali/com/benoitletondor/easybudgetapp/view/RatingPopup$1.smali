.class Lcom/benoitletondor/easybudgetapp/view/RatingPopup$1;
.super Ljava/lang/Object;
.source "RatingPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->buildStep1(Z)Landroid/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/RatingPopup;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x10da11d732723459L

    const-string v2, "com/benoitletondor/easybudgetapp/view/RatingPopup$1"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$1;->$jacocoInit()[Z

    move-result-object v0

    .line 109
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/RatingPopup;

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

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$1;->$jacocoInit()[Z

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/RatingPopup;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->access$000(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->STEP_LIKE:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    invoke-static {v1, v2}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->setRatingPopupStep(Landroid/content/Context;Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;)V

    aput-boolean v3, v0, v3

    .line 114
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/RatingPopup;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->access$100(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 115
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method
