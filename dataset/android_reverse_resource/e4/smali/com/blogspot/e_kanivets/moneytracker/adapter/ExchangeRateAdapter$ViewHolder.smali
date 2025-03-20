.class public Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ExchangeRateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field tvAmountBuy:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900f1
    .end annotation
.end field

.field tvAmountSell:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900f2
    .end annotation
.end field

.field tvFromCurrency:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900fa
    .end annotation
.end field

.field tvToCurrency:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090100
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter$ViewHolder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x52bee92977db3ef5L    # 3.9353993286717734E90

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter$ViewHolder"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter$ViewHolder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter$ViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 93
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
