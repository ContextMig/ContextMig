.class public Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;
.super Landroid/widget/BaseAdapter;
.source "ExchangeRateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private context:Landroid/content/Context;

.field private exchangeRates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;",
            ">;"
        }
    .end annotation
.end field

.field formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x53fdf5132fcbd0a2L

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;->exchangeRates:Ljava/util/List;

    .line 39
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->get()Lcom/blogspot/e_kanivets/moneytracker/MtApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->getAppComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;->inject(Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;)V

    .line 40
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;->exchangeRates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    aput-boolean v2, v0, v2

    return v1
.end method

.method public getItem(I)Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 49
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;->exchangeRates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;->getItem(I)Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getItemId(I)J
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    int-to-long v2, p1

    const/4 v1, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;->$jacocoInit()[Z

    move-result-object v5

    .line 62
    if-nez p2, :cond_0

    .line 63
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 65
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0b0057

    const/4 v6, 0x0

    invoke-virtual {v1, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "convertView":Landroid/view/View;
    new-instance v3, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter$ViewHolder;

    invoke-direct {v3, v0}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 68
    .local v3, "viewHolder":Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter$ViewHolder;
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    const/4 v4, 0x4

    aput-boolean v7, v5, v4

    .line 71
    .end local v0    # "convertView":Landroid/view/View;
    .end local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v3    # "viewHolder":Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter$ViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;->getItem(I)Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;

    move-result-object v2

    .line 73
    .local v2, "rate":Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;
    iget-object v4, v3, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter$ViewHolder;->tvFromCurrency:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->getFromCurrency()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v4, v3, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter$ViewHolder;->tvToCurrency:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->getToCurrency()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v4, v3, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter$ViewHolder;->tvAmountBuy:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;->formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->getAmountBuy()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->formatPrecisionNone(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v4, v3, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter$ViewHolder;->tvAmountSell:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;->formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->getAmountSell()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->formatPrecisionNone(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const/4 v4, 0x6

    aput-boolean v7, v5, v4

    return-object v0

    .line 69
    .end local v2    # "rate":Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter$ViewHolder;

    const/4 v6, 0x5

    aput-boolean v7, v5, v6

    move-object v3, v4

    move-object v0, p2

    goto :goto_0
.end method
