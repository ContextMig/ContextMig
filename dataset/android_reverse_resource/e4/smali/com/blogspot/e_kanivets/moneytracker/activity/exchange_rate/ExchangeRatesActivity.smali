.class public Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;
.super Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;
.source "ExchangeRatesActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final REQUEST_ADD_EXCHANGE_RATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ExchangeRatesActivity"


# instance fields
.field private exchangeRateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;",
            ">;"
        }
    .end annotation
.end field

.field listView:Landroid/widget/ListView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09007e
    .end annotation
.end field

.field rateController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6556b1c2f248f50fL    # 1.471416982120014E180

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity"

    const/16 v3, 0x12

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private update()V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 123
    new-instance v0, Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->rateController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;->readAll()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer;->getPairedSummaryList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->exchangeRateList:Ljava/util/List;

    .line 124
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->exchangeRateList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 126
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->exchangeRateList:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 128
    const/16 v0, 0x11

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    return-void
.end method


# virtual methods
.method public addExchangeRate()V
    .locals 5
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09002e
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 91
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v2

    const-string/jumbo v3, "Add Exchange Rate"

    invoke-virtual {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logButton(Ljava/lang/String;)Z

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v4}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 94
    const/16 v2, 0x8

    aput-boolean v4, v1, v2

    return-void
.end method

.method public addExchangeRateOnBaseOfExisted(I)V
    .locals 5
    .annotation build Lbutterknife/OnItemClick;
        value = {
            0x7f09007e
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 98
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v1

    const-string/jumbo v3, "Edit Exchange Rate"

    invoke-virtual {v1, v3}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logButton(Ljava/lang/String;)Z

    .line 99
    if-gez p1, :cond_0

    const/16 v1, 0x9

    aput-boolean v4, v2, v1

    :goto_0
    const/16 v1, 0xb

    aput-boolean v4, v2, v1

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 99
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->exchangeRateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    const/16 v1, 0xa

    aput-boolean v4, v2, v1

    goto :goto_0

    .line 100
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "key_exchange_rate"

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->exchangeRateList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0, v4}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 103
    const/16 v1, 0xc

    aput-boolean v4, v2, v1

    goto :goto_1
.end method

.method public deleteExchangeRate(I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 83
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v0

    const-string/jumbo v2, "Delete Exchange Rate"

    invoke-virtual {v0, v2}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logButton(Ljava/lang/String;)Z

    .line 84
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->rateController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;

    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->exchangeRateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;

    invoke-virtual {v2, v0}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;->deleteExchangeRatePair(Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;)V

    .line 85
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->update()V

    .line 86
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->setResult(I)V

    .line 87
    const/4 v0, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    return-void
.end method

.method protected getContentViewId()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    const v1, 0x7f0b0023

    aput-boolean v2, v0, v2

    return v1
.end method

.method protected initData()Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 50
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->initData()Z

    move-result v0

    .line 51
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->getAppComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;->inject(Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;)V

    .line 52
    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return v0
.end method

.method protected initViews()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->initViews()V

    .line 59
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 60
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->update()V

    .line 61
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 109
    if-eq p2, v1, :cond_0

    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    .line 120
    :goto_0
    const/16 v1, 0x10

    aput-boolean v2, v0, v1

    return-void

    .line 110
    :cond_0
    packed-switch p1, :pswitch_data_0

    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 112
    :pswitch_0
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->update()V

    .line 113
    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->setResult(I)V

    .line 114
    const/16 v1, 0xf

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 73
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 78
    invoke-super {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    const/4 v4, 0x6

    aput-boolean v1, v3, v4

    move v1, v2

    :goto_0
    return v1

    .line 75
    :pswitch_0
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->deleteExchangeRate(I)V

    .line 76
    const/4 v2, 0x5

    aput-boolean v1, v3, v2

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x7f090048
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 66
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 67
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
