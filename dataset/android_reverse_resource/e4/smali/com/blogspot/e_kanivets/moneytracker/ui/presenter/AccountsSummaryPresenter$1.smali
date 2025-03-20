.class Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$1;
.super Ljava/lang/Object;
.source "AccountsSummaryPresenter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->create()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x75ccb87b18d7fbefL

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$1"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$1;->$jacocoInit()[Z

    move-result-object v0

    .line 84
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$1;->$jacocoInit()[Z

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->update()V

    .line 88
    aput-boolean v2, v0, v2

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$1;->$jacocoInit()[Z

    move-result-object v0

    .line 93
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
