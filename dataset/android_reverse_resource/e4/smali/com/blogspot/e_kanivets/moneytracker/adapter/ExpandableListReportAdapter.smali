.class public Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;
.super Landroid/widget/SimpleExpandableListAdapter;
.source "ExpandableListReportAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private childData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private green:I

.field private groupData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private red:I

.field private white:I

.field private whiteGreen:I

.field private whiteRed:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x557c43ac4427124L    # -7.038201556994418E282

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;)V
    .locals 11

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;->$jacocoInit()[Z

    move-result-object v10

    .line 42
    invoke-virtual {p2}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;->getGroupData()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;->getGroupLayout()I

    move-result v3

    .line 43
    invoke-virtual {p2}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;->getGroupFrom()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;->getGroupTo()[I

    move-result-object v5

    invoke-virtual {p2}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;->getChildData()Ljava/util/List;

    move-result-object v6

    .line 44
    invoke-virtual {p2}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;->getChildLayout()I

    move-result v7

    invoke-virtual {p2}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;->getChildFrom()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;->getChildTo()[I

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    .line 42
    invoke-direct/range {v0 .. v9}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V

    .line 45
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;I[",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    invoke-direct/range {p0 .. p9}, Landroid/widget/SimpleExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V

    .line 53
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->get()Lcom/blogspot/e_kanivets/moneytracker/MtApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->getAppComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;->inject(Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;)V

    .line 55
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;->groupData:Ljava/util/List;

    .line 56
    iput-object p6, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;->childData:Ljava/util/List;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;->whiteRed:I

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;->whiteGreen:I

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;->white:I

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;->red:I

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;->green:I

    .line 63
    aput-boolean v3, v0, v3

    return-void
.end method

.method private customizeView(Landroid/view/View;Ljava/util/Map;Z)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;->$jacocoInit()[Z

    move-result-object v3

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter$ViewHolder;

    .line 82
    .local v1, "viewHolder":Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter$ViewHolder;
    if-eqz v1, :cond_0

    const/4 v2, 0x4

    aput-boolean v8, v3, v2

    .line 85
    :goto_0
    const-string/jumbo v2, "price"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 87
    .local v0, "price":Ljava/lang/Double;
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v2, v4, v10

    if-gez v2, :cond_1

    iget v2, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;->whiteRed:I

    const/4 v4, 0x6

    aput-boolean v8, v3, v4

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v2, 0x8

    aput-boolean v8, v3, v2

    .line 91
    :goto_2
    iget-object v4, v1, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter$ViewHolder;->tvTotal:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v2, v6, v10

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;->green:I

    const/16 v5, 0xa

    aput-boolean v8, v3, v5

    :goto_3
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iget-object v4, v1, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter$ViewHolder;->tvCategory:Landroid/widget/TextView;

    const-string/jumbo v2, "title"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v2, v1, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter$ViewHolder;->tvTotal:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;->formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->formatSignedAmount(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const/16 v2, 0xc

    aput-boolean v8, v3, v2

    return-void

    .line 82
    .end local v0    # "price":Ljava/lang/Double;
    :cond_0
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter$ViewHolder;

    .end local v1    # "viewHolder":Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter$ViewHolder;
    invoke-direct {v1, p1}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .restart local v1    # "viewHolder":Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter$ViewHolder;
    const/4 v2, 0x5

    aput-boolean v8, v3, v2

    goto :goto_0

    .line 87
    .restart local v0    # "price":Ljava/lang/Double;
    :cond_1
    iget v2, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;->whiteGreen:I

    const/4 v4, 0x7

    aput-boolean v8, v3, v4

    goto :goto_1

    .line 88
    :cond_2
    iget v2, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;->white:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v2, 0x9

    aput-boolean v8, v3, v2

    goto :goto_2

    .line 91
    :cond_3
    iget v2, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;->red:I

    const/16 v5, 0xb

    aput-boolean v8, v3, v5

    goto :goto_3
.end method


# virtual methods
.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 74
    invoke-super/range {p0 .. p5}, Landroid/widget/SimpleExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;->childData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;->customizeView(Landroid/view/View;Ljava/util/Map;Z)V

    .line 76
    const/4 v1, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    return-object v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;->groupData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v0, v1, v3}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;->customizeView(Landroid/view/View;Ljava/util/Map;Z)V

    .line 69
    const/4 v1, 0x2

    aput-boolean v3, v2, v1

    return-object v0
.end method
