.class public Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding;
.super Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity_ViewBinding;
.source "MainActivity_ViewBinding.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private target:Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;

.field private view2131296303:Landroid/view/View;

.field private view2131296304:Landroid/view/View;

.field private view2131296382:Landroid/view/View;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7d2a0850bf14eb9L

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;Landroid/view/View;)V

    .line 28
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;Landroid/view/View;)V
    .locals 6
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const v4, 0x7f09007e

    const/4 v5, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding;->$jacocoInit()[Z

    move-result-object v2

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity_ViewBinding;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;Landroid/view/View;)V

    .line 34
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;

    .line 37
    const-string/jumbo v1, "field \'listView\' and method \'editRecord\'"

    invoke-static {p2, v4, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "view":Landroid/view/View;
    const-string/jumbo v1, "field \'listView\'"

    const-class v3, Landroid/widget/ListView;

    invoke-static {v0, v4, v1, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->listView:Landroid/widget/ListView;

    .line 39
    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding;->view2131296382:Landroid/view/View;

    .line 40
    check-cast v0, Landroid/widget/AdapterView;

    .end local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding$1;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding;Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 46
    const v1, 0x7f0900c2

    const-string/jumbo v3, "field \'spinner\'"

    const-class v4, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;

    invoke-static {p2, v1, v3, v4}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;

    iput-object v1, p1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->spinner:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;

    .line 47
    const v1, 0x7f09002f

    const-string/jumbo v3, "method \'addExpense\'"

    invoke-static {p2, v1, v3}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 48
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding;->view2131296303:Landroid/view/View;

    .line 49
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding$2;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding;Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v1, 0x7f090030

    const-string/jumbo v3, "method \'addIncome\'"

    invoke-static {p2, v1, v3}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding;->view2131296304:Landroid/view/View;

    .line 57
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding$3;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding;Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    aput-boolean v5, v2, v5

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding;->$jacocoInit()[Z

    move-result-object v2

    .line 67
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;

    .line 68
    .local v0, "target":Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Bindings already cleared."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-boolean v4, v2, v3

    throw v1

    .line 69
    :cond_0
    iput-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;

    .line 71
    iput-object v3, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->listView:Landroid/widget/ListView;

    .line 72
    iput-object v3, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->spinner:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;

    .line 74
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding;->view2131296382:Landroid/view/View;

    check-cast v1, Landroid/widget/AdapterView;

    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    iput-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding;->view2131296382:Landroid/view/View;

    .line 76
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding;->view2131296303:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iput-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding;->view2131296303:Landroid/view/View;

    .line 78
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding;->view2131296304:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iput-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_ViewBinding;->view2131296304:Landroid/view/View;

    .line 81
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity_ViewBinding;->unbind()V

    .line 82
    const/4 v1, 0x3

    aput-boolean v4, v2, v1

    return-void
.end method
