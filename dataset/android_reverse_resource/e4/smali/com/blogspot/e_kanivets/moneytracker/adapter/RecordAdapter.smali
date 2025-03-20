.class public Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private context:Landroid/content/Context;

.field formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private green:I

.field private records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;"
        }
    .end annotation
.end field

.field private red:I

.field private whiteGreen:I

.field private whiteRed:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x471d69182efe1073L    # -1.1188133140164697E-34

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter"

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;->$jacocoData:[Z

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
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->get()Lcom/blogspot/e_kanivets/moneytracker/MtApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->getAppComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;->inject(Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;)V

    .line 45
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;->records:Ljava/util/List;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;->whiteRed:I

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;->whiteGreen:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;->red:I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;->green:I

    .line 52
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

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;->records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    aput-boolean v2, v0, v2

    return v1
.end method

.method public getItem(I)Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 61
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;->records:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;->getItem(I)Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    move-result-object v1

    const/16 v2, 0xf

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getItemId(I)J
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 66
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
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;->$jacocoInit()[Z

    move-result-object v5

    .line 74
    if-nez p2, :cond_0

    .line 75
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 77
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0b005a

    const/4 v6, 0x0

    invoke-virtual {v1, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "convertView":Landroid/view/View;
    new-instance v3, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter$ViewHolder;

    invoke-direct {v3, v0}, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 80
    .local v3, "viewHolder":Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter$ViewHolder;
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    const/4 v4, 0x4

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    .line 83
    .end local v0    # "convertView":Landroid/view/View;
    .end local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v3    # "viewHolder":Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter$ViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;->getItem(I)Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    move-result-object v2

    .line 84
    .local v2, "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    iget-object v6, v3, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter$ViewHolder;->container:Landroid/view/View;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->isIncome()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;->whiteGreen:I

    const/4 v7, 0x6

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    :goto_1
    invoke-virtual {v6, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 85
    iget-object v6, v3, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->isIncome()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;->green:I

    const/16 v7, 0x8

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    :goto_2
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v4, v3, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter$ViewHolder;->tvDateAndTime:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;->formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->formatDateAndTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v6, v3, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;->formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    .line 89
    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->isIncome()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    const/16 v8, 0xa

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    :goto_3
    int-to-double v8, v4

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getFullPrice()D

    move-result-wide v10

    mul-double/2addr v8, v10

    .line 88
    invoke-virtual {v7, v8, v9}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->formatSignedAmount(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v4, v3, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCategory()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    move-result-object v4

    if-nez v4, :cond_4

    const/16 v4, 0xc

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    .line 93
    :goto_4
    iget-object v4, v3, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter$ViewHolder;->tvCurrency:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCurrency()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const/16 v4, 0xe

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    return-object v0

    .line 81
    .end local v2    # "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter$ViewHolder;

    const/4 v6, 0x5

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    move-object v3, v4

    move-object v0, p2

    goto/16 :goto_0

    .line 84
    .restart local v2    # "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    :cond_1
    iget v4, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;->whiteRed:I

    const/4 v7, 0x7

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    goto :goto_1

    .line 85
    :cond_2
    iget v4, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;->red:I

    const/16 v7, 0x9

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    goto :goto_2

    .line 89
    :cond_3
    const/4 v4, -0x1

    const/16 v8, 0xb

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    goto :goto_3

    .line 92
    :cond_4
    iget-object v4, v3, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter$ViewHolder;->tvCategory:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCategory()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    move-result-object v6

    invoke-virtual {v6}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0xd

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    goto :goto_4
.end method
