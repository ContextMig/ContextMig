.class Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$4;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnFetchBackupListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->fetchBackups()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$4;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3c3035505e7cf453L    # 8.786514042960546E-19

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$4"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$4;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$4;->$jacocoInit()[Z

    move-result-object v0

    .line 177
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$4;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onBackupsFetched(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$4;->$jacocoInit()[Z

    move-result-object v1

    .line 180
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$4;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    aput-boolean v4, v1, v4

    .line 186
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 182
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$4;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->stopProgress()V

    .line 183
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$4;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    const v3, 0x1090003

    invoke-direct {v0, v2, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 185
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$4;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    iget-object v2, v2, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    goto :goto_0
.end method
