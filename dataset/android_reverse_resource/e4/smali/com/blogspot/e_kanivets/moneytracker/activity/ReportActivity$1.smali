.class Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity$1;
.super Ljava/lang/Object;
.source "ReportActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->initSpinnerCurrency()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x154fc419a4fc469dL    # -8.143707319874633E205

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/ReportActivity$1"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 100
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity$1;->$jacocoInit()[Z

    move-result-object v1

    .line 103
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;

    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;

    iget-object v0, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->spinnerCurrency:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->access$000(Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;Ljava/lang/String;)V

    .line 104
    aput-boolean v3, v1, v3

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 109
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
