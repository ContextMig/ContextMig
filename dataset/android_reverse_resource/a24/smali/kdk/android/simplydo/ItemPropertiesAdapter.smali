.class public Lkdk/android/simplydo/ItemPropertiesAdapter;
.super Landroid/widget/BaseAdapter;
.source "ItemPropertiesAdapter.java"


# instance fields
.field private context:Lkdk/android/simplydo/SimplyDoActivity;

.field private dataViewer:Lkdk/android/simplydo/DataViewer;


# direct methods
.method public constructor <init>(Lkdk/android/simplydo/SimplyDoActivity;Lkdk/android/simplydo/DataViewer;)V
    .locals 0
    .param p1, "context"    # Lkdk/android/simplydo/SimplyDoActivity;
    .param p2, "dataViewer"    # Lkdk/android/simplydo/DataViewer;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    iput-object p1, p0, Lkdk/android/simplydo/ItemPropertiesAdapter;->context:Lkdk/android/simplydo/SimplyDoActivity;

    .line 39
    iput-object p2, p0, Lkdk/android/simplydo/ItemPropertiesAdapter;->dataViewer:Lkdk/android/simplydo/DataViewer;

    .line 40
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lkdk/android/simplydo/ItemPropertiesAdapter;->dataViewer:Lkdk/android/simplydo/DataViewer;

    invoke-interface {v0}, Lkdk/android/simplydo/DataViewer;->getItemData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lkdk/android/simplydo/ItemPropertiesAdapter;->dataViewer:Lkdk/android/simplydo/DataViewer;

    invoke-interface {v0}, Lkdk/android/simplydo/DataViewer;->getItemData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 61
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 70
    const/4 v2, 0x0

    .line 74
    .local v2, "rv":Landroid/view/View;
    if-nez p2, :cond_1

    .line 76
    :try_start_0
    iget-object v8, p0, Lkdk/android/simplydo/ItemPropertiesAdapter;->context:Lkdk/android/simplydo/SimplyDoActivity;

    const v9, 0x7f030001

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 83
    :goto_0
    iget-object v8, p0, Lkdk/android/simplydo/ItemPropertiesAdapter;->dataViewer:Lkdk/android/simplydo/DataViewer;

    invoke-interface {v8}, Lkdk/android/simplydo/DataViewer;->getItemData()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkdk/android/simplydo/ItemDesc;

    .line 84
    .local v1, "it":Lkdk/android/simplydo/ItemDesc;
    const v8, 0x7f080004

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 85
    .local v5, "t1":Landroid/widget/TextView;
    invoke-virtual {v1}, Lkdk/android/simplydo/ItemDesc;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v9, p0, Lkdk/android/simplydo/ItemPropertiesAdapter;->context:Lkdk/android/simplydo/SimplyDoActivity;

    invoke-virtual {v1}, Lkdk/android/simplydo/ItemDesc;->isActive()Z

    move-result v8

    if-eqz v8, :cond_2

    const v8, 0x7f070001

    :goto_1
    invoke-virtual {v5, v9, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 87
    invoke-virtual {v1}, Lkdk/android/simplydo/ItemDesc;->isActive()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 89
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v8

    and-int/lit8 v8, v8, -0x11

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 96
    :goto_2
    const v8, 0x7f080005

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageSwitcher;

    .line 97
    .local v4, "starSwitch":Landroid/widget/ImageSwitcher;
    invoke-virtual {v1}, Lkdk/android/simplydo/ItemDesc;->isStar()Z

    move-result v8

    if-eqz v8, :cond_0

    move v7, v6

    :cond_0
    invoke-virtual {v4, v7}, Landroid/widget/ImageSwitcher;->setVisibility(I)V

    .line 98
    invoke-virtual {v1}, Lkdk/android/simplydo/ItemDesc;->isActive()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_3
    invoke-virtual {v4, v6}, Landroid/widget/ImageSwitcher;->setDisplayedChild(I)V

    .line 100
    const v6, 0x7f080002

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 101
    .local v3, "sortedMarker":Landroid/view/View;
    invoke-virtual {v1}, Lkdk/android/simplydo/ItemDesc;->isSorted()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 103
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .end local v1    # "it":Lkdk/android/simplydo/ItemDesc;
    .end local v3    # "sortedMarker":Landroid/view/View;
    .end local v4    # "starSwitch":Landroid/widget/ImageSwitcher;
    .end local v5    # "t1":Landroid/widget/TextView;
    :goto_4
    return-object v2

    .line 80
    :cond_1
    move-object v2, p2

    goto :goto_0

    .line 86
    .restart local v1    # "it":Lkdk/android/simplydo/ItemDesc;
    .restart local v5    # "t1":Landroid/widget/TextView;
    :cond_2
    const/high16 v8, 0x7f070000

    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v8

    or-int/lit8 v8, v8, 0x10

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setPaintFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 111
    .end local v1    # "it":Lkdk/android/simplydo/ItemDesc;
    .end local v5    # "t1":Landroid/widget/TextView;
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "SimplyDo"

    const-string v7, "Error in getView()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "it":Lkdk/android/simplydo/ItemDesc;
    .restart local v4    # "starSwitch":Landroid/widget/ImageSwitcher;
    .restart local v5    # "t1":Landroid/widget/TextView;
    :cond_4
    const/4 v6, 0x1

    goto :goto_3

    .line 107
    .restart local v3    # "sortedMarker":Landroid/view/View;
    :cond_5
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method
