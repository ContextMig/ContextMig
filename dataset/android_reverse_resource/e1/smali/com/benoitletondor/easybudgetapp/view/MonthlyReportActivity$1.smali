.class Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$1;
.super Ljava/lang/Object;
.source "MonthlyReportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x256caff4e265c5beL    # -2.0917052243488113E128

    const-string v2, "com/benoitletondor/easybudgetapp/view/MonthlyReportActivity$1"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 98
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;

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

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;)I

    move-result v1

    if-gtz v1, :cond_0

    aput-boolean v3, v0, v3

    .line 106
    :goto_0
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    return-void

    .line 102
    :cond_0
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 104
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->access$100(Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;IZ)V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
