.class Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity$1;
.super Landroid/os/AsyncTask;
.source "ImportExportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->importRecords()V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1f703b11ad4613ccL

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity$1"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;

    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity$1;->$jacocoInit()[Z

    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;

    iget-object v2, v2, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->importController:Lcom/blogspot/e_kanivets/moneytracker/controller/external/ImportController;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity$1;->val$data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/external/ImportController;->importRecordsFromCsv(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 96
    .local v0, "recordList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 101
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 102
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->stopProgress()V

    .line 103
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;

    const v3, 0x7f0e006c

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->access$000(Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->setResult(I)V

    .line 105
    const/4 v1, 0x3

    aput-boolean v7, v0, v1

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity$1;->onPostExecute(Ljava/lang/Integer;)V

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 89
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 90
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;

    const v3, 0x7f0e0050

    invoke-virtual {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->startProgress(Ljava/lang/String;)V

    .line 91
    aput-boolean v4, v0, v4

    return-void
.end method
