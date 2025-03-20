.class Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$1;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnBackupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->backupNow()V
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

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x61bead69e4edce64L    # -6.016244879809834E-163

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$1"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 91
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onBackupFailure(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 104
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v1

    const-string/jumbo v2, "Backup failure"

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logEvent(Ljava/lang/String;)Z

    .line 105
    const-string/jumbo v1, "Backup failure."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 112
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->stopProgress()V

    .line 109
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    const v2, 0x7f0e0048

    invoke-static {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->access$100(Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;I)V

    .line 111
    const-string/jumbo v1, "error_authentication"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 112
    :goto_1
    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    invoke-static {v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->access$200(Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;)V

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    goto :goto_1
.end method

.method public onBackupSuccess()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 94
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v1

    const-string/jumbo v2, "Backup success"

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logEvent(Ljava/lang/String;)Z

    .line 95
    const-string/jumbo v1, "Backup success."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    aput-boolean v3, v0, v3

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->stopProgress()V

    .line 99
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    invoke-static {v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->access$000(Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;)V

    .line 100
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
