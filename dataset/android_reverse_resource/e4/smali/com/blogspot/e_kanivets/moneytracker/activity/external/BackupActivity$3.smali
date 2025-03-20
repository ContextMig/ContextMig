.class Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->restoreBackup(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

.field final synthetic val$backupName:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7d5f25d53a5f0ac1L    # -5.153606627983364E-296

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 136
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;->val$backupName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onRestoreFailure(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 162
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v1

    const-string/jumbo v2, "Restore Failure"

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logEvent(Ljava/lang/String;)Z

    .line 163
    const-string/jumbo v1, "Restore failure."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 171
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->stopProgress()V

    .line 167
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    const v2, 0x7f0e0049

    invoke-static {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->access$400(Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;I)V

    .line 169
    const-string/jumbo v1, "error_authentication"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 171
    :goto_1
    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    invoke-static {v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->access$200(Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;)V

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    goto :goto_1
.end method

.method public onRestoreSuccess()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;->$jacocoInit()[Z

    move-result-object v1

    .line 139
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v2

    const-string/jumbo v3, "Restore Success"

    invoke-virtual {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logEvent(Ljava/lang/String;)Z

    .line 140
    const-string/jumbo v2, "Restore success."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    aput-boolean v6, v1, v6

    .line 158
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 143
    .end local v0    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_0
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->stopProgress()V

    .line 145
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    invoke-direct {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 146
    .restart local v0    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    const v3, 0x7f0e002d

    invoke-virtual {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 147
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    const v3, 0x7f0e002f

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;->val$backupName:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 148
    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3$1;

    invoke-direct {v2, p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3$1;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 156
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 157
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 158
    const/4 v2, 0x2

    aput-boolean v6, v1, v2

    goto :goto_0
.end method
