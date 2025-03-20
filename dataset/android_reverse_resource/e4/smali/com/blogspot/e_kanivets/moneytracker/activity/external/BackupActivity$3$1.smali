.class Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3$1;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;->onRestoreSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5b75371b72c5250dL    # 3.764666598605555E132

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3$1"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3$1;->$jacocoInit()[Z

    move-result-object v0

    .line 148
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3$1;->this$1:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3$1;->$jacocoInit()[Z

    move-result-object v0

    .line 151
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->get()Lcom/blogspot/e_kanivets/moneytracker/MtApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->buildAppComponent()V

    .line 152
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3$1;->this$1:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;

    iget-object v1, v1, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->setResult(I)V

    .line 153
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3$1;->this$1:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;

    iget-object v1, v1, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->finish()V

    .line 154
    aput-boolean v3, v0, v3

    return-void
.end method
