.class Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$3;
.super Landroid/os/AsyncTask;
.source "MonthlyReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Ljava/util/Date;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;

.field final synthetic val$content:Landroid/view/View;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7bdc5116db64bba1L    # 4.311807335250493E288

    const-string v2, "com/benoitletondor/easybudgetapp/view/MonthlyReportActivity$3"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;Landroid/widget/ProgressBar;Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 126
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;

    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$3;->val$progressBar:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$3;->val$content:Landroid/view/View;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 126
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/DateHelper;->getListOfMonthsAvailableForUser(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 126
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$3;->onPostExecute(Ljava/util/List;)V

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 147
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;

    invoke-static {v1, p1}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->access$202(Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;Ljava/util/List;)Ljava/util/List;

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 143
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->access$300(Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;)V

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 145
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$3;->val$progressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 146
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$3;->val$content:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
