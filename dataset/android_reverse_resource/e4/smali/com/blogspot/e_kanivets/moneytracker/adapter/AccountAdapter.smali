.class public Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private accounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private green:I

.field private grey:I

.field private red:I

.field private whiteGreen:I

.field private whiteRed:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x33ef1057b151fd25L    # -2.6577502838804856E58

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter"

    const/16 v3, 0xf

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;->$jacocoData:[Z

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
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->get()Lcom/blogspot/e_kanivets/moneytracker/MtApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->getAppComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;->inject(Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;)V

    .line 46
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;->accounts:Ljava/util/List;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;->whiteRed:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;->whiteGreen:I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;->red:I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;->green:I

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;->grey:I

    .line 54
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

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;->accounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    aput-boolean v2, v0, v2

    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;->accounts:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getItemId(I)J
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 68
    int-to-long v2, p1

    const/4 v1, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;->$jacocoInit()[Z

    move-result-object v5

    .line 76
    if-nez p2, :cond_0

    .line 77
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 79
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0b0054

    const/4 v6, 0x0

    invoke-virtual {v2, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 80
    .local v1, "convertView":Landroid/view/View;
    new-instance v3, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter$ViewHolder;

    invoke-direct {v3, v1}, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 82
    .local v3, "viewHolder":Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter$ViewHolder;
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    const/4 v4, 0x4

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    .line 85
    .end local v1    # "convertView":Landroid/view/View;
    .end local v2    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v3    # "viewHolder":Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter$ViewHolder;
    :goto_0
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;->accounts:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 87
    .local v0, "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->isArchived()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    iget v4, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;->grey:I

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v4, 0x6

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    .line 93
    :goto_1
    iget-object v6, v3, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter$ViewHolder;->tvCurSum:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getFullSum()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v4, v8, v10

    if-ltz v4, :cond_3

    iget v4, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;->green:I

    const/16 v7, 0xa

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    :goto_2
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    iget-object v6, v3, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter$ViewHolder;->tvCurrency:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getFullSum()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v4, v8, v10

    if-ltz v4, :cond_4

    iget v4, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;->green:I

    const/16 v7, 0xc

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    :goto_3
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    iget-object v4, v3, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v4, v3, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter$ViewHolder;->tvCurSum:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;->formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getFullSum()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->formatSignedAmount(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v4, v3, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter$ViewHolder;->tvCurrency:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getCurrency()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const/16 v4, 0xe

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    return-object v1

    .line 83
    .end local v0    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter$ViewHolder;

    const/4 v6, 0x5

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    move-object v3, v4

    move-object v1, p2

    goto :goto_0

    .line 90
    .restart local v0    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    :cond_1
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getFullSum()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v4, v6, v8

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;->whiteGreen:I

    const/4 v6, 0x7

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    :goto_4
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v4, 0x9

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;->whiteRed:I

    const/16 v6, 0x8

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    goto :goto_4

    .line 93
    :cond_3
    iget v4, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;->red:I

    const/16 v7, 0xb

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    goto :goto_2

    .line 94
    :cond_4
    iget v4, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;->red:I

    const/16 v7, 0xd

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    goto :goto_3
.end method
