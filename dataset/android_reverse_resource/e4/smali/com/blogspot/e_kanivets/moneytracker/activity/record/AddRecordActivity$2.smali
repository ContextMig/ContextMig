.class Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$2;
.super Ljava/lang/Object;
.source "AddRecordActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6ce28cda15f4eeccL    # 3.197389613741203E216

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$2"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 156
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$2;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 159
    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    aput-boolean v3, v0, v3

    .line 160
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    return v1

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$2;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;

    invoke-static {v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->access$000(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
