.class Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x127b567ec298d098L    # -3.6468836698762824E219

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/record/MainActivity$1"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 111
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->showReport()V

    .line 115
    aput-boolean v2, v0, v2

    return-void
.end method
