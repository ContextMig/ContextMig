.class Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity_ViewBinding$2;
.super Ljava/lang/Object;
.source "BackupActivity_ViewBinding.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity_ViewBinding;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity_ViewBinding;

.field final synthetic val$target:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity_ViewBinding$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x382afbb6ecaba0d2L    # 3.9648337056699685E-38

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity_ViewBinding$2"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity_ViewBinding$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity_ViewBinding;Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity_ViewBinding$2;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity_ViewBinding$2;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity_ViewBinding;

    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity_ViewBinding$2;->val$target:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity_ViewBinding$2;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity_ViewBinding$2;->val$target:Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    invoke-virtual {v1, p3}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->restoreBackupClicked(I)V

    .line 49
    aput-boolean v2, v0, v2

    return-void
.end method
