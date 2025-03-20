.class public Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MonthSummaryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field tvMonth:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900fb
    .end annotation
.end field

.field tvTotalExpense:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090102
    .end annotation
.end field

.field tvTotalIncome:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090103
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter$ViewHolder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x77003e6598259f88L

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter$ViewHolder"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter$ViewHolder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter$ViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 111
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
