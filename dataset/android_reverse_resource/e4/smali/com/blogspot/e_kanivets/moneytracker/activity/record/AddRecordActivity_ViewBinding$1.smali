.class Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "AddRecordActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding;

.field final synthetic val$target:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2f4e0a9a9eabb371L    # -5.323420897876255E80

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding$1"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding;Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding$1;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding;

    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding$1;->val$target:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding$1;->$jacocoInit()[Z

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding$1;->val$target:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->selectDate()V

    .line 43
    aput-boolean v2, v0, v2

    return-void
.end method
