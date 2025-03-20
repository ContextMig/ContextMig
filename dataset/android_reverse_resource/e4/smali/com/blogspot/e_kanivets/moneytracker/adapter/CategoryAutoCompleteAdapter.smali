.class public Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CategoryAutoCompleteAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final autoCompleter:Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;

.field private resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x694da35c6bdf2581L    # 1.7723844660599161E199

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 33
    iput-object p3, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;->autoCompleter:Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;

    .line 34
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;)Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;->autoCompleter:Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;)Ljava/util/List;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;->resultList:Ljava/util/List;

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$102(Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;->resultList:Ljava/util/List;

    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;->resultList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 73
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$2;

    invoke-direct {v1, p0}, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$2;-><init>(Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;)V

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 68
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;->resultList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;->$jacocoInit()[Z

    move-result-object v4

    .line 40
    if-nez p2, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f0b0055

    const/4 v6, 0x0

    invoke-virtual {v3, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 42
    .local v1, "convertView":Landroid/view/View;
    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$ViewHolder;

    invoke-direct {v2, v1}, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 43
    .local v2, "viewHolder":Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$ViewHolder;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    aput-boolean v7, v4, v7

    .line 46
    .end local v1    # "convertView":Landroid/view/View;
    .end local v2    # "viewHolder":Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$ViewHolder;
    :goto_0
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;->resultList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48
    .local v0, "category":Ljava/lang/String;
    iget-object v3, v2, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$ViewHolder;->tvCategory:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v3, v2, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$ViewHolder;->ivCancel:Landroid/view/View;

    new-instance v5, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$1;

    invoke-direct {v5, p0, v0}, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$1;-><init>(Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const/4 v3, 0x3

    aput-boolean v7, v4, v3

    return-object v1

    .line 44
    .end local v0    # "category":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$ViewHolder;

    const/4 v5, 0x2

    aput-boolean v7, v4, v5

    move-object v2, v3

    move-object v1, p2

    goto :goto_0
.end method
