.class Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$2;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->restoreBackupClicked(I)V
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

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x40017cea99febfd1L    # -1.9070028290334553

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$2"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 124
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$2;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$2;->val$backupName:Ljava/lang/String;

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

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$2;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$2;->val$backupName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->access$300(Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;Ljava/lang/String;)V

    .line 128
    aput-boolean v3, v0, v3

    return-void
.end method
