.class Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity$1;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->setupTabHost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x10312f1771d40bd5L    # -3.7376931913977196E230

    const-string v2, "com/kvannli/simonkvannli/dailybudget/HistoryActivity$1"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 76
    iput-object p1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity$1;->this$0:Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity$1;->this$0:Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;

    invoke-static {v1}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->access$000(Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    aput-boolean v3, v0, v3

    .line 97
    :goto_0
    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    return-void

    .line 81
    :pswitch_0
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity$1;->this$0:Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->access$102(Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;I)I

    aput-boolean v3, v0, v4

    .line 82
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity$1;->this$0:Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;

    invoke-virtual {v1}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->fillListView()V

    .line 83
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity$1;->this$0:Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;

    invoke-static {v1, v3}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->access$102(Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;I)I

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 86
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity$1;->this$0:Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;

    invoke-virtual {v1}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->fillListView()V

    .line 87
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 89
    :pswitch_2
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity$1;->this$0:Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;

    invoke-static {v1, v4}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->access$102(Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;I)I

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    .line 90
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity$1;->this$0:Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;

    invoke-virtual {v1}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->fillListView()V

    .line 91
    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
