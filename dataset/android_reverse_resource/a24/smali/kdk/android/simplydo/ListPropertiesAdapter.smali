.class public Lkdk/android/simplydo/ListPropertiesAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListPropertiesAdapter.java"


# instance fields
.field private context:Lkdk/android/simplydo/SimplyDoActivity;

.field private dataViewer:Lkdk/android/simplydo/DataViewer;


# direct methods
.method public constructor <init>(Lkdk/android/simplydo/SimplyDoActivity;Lkdk/android/simplydo/DataViewer;)V
    .locals 0
    .param p1, "context"    # Lkdk/android/simplydo/SimplyDoActivity;
    .param p2, "dataViewer"    # Lkdk/android/simplydo/DataViewer;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    iput-object p1, p0, Lkdk/android/simplydo/ListPropertiesAdapter;->context:Lkdk/android/simplydo/SimplyDoActivity;

    .line 36
    iput-object p2, p0, Lkdk/android/simplydo/ListPropertiesAdapter;->dataViewer:Lkdk/android/simplydo/DataViewer;

    .line 37
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lkdk/android/simplydo/ListPropertiesAdapter;->dataViewer:Lkdk/android/simplydo/DataViewer;

    invoke-interface {v0}, Lkdk/android/simplydo/DataViewer;->getListData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lkdk/android/simplydo/ListPropertiesAdapter;->dataViewer:Lkdk/android/simplydo/DataViewer;

    invoke-interface {v0}, Lkdk/android/simplydo/DataViewer;->getListData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 63
    const/4 v2, 0x0

    .line 67
    .local v2, "rv":Landroid/view/View;
    if-nez p2, :cond_0

    .line 69
    :try_start_0
    iget-object v5, p0, Lkdk/android/simplydo/ListPropertiesAdapter;->context:Lkdk/android/simplydo/SimplyDoActivity;

    const v6, 0x7f030004

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 76
    :goto_0
    const v5, 0x7f080004

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 77
    .local v3, "t1":Landroid/widget/TextView;
    iget-object v5, p0, Lkdk/android/simplydo/ListPropertiesAdapter;->dataViewer:Lkdk/android/simplydo/DataViewer;

    invoke-interface {v5}, Lkdk/android/simplydo/DataViewer;->getListData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkdk/android/simplydo/ListDesc;

    .line 78
    .local v1, "listDesc":Lkdk/android/simplydo/ListDesc;
    invoke-virtual {v1}, Lkdk/android/simplydo/ListDesc;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v5, 0x7f08000d

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 81
    .local v4, "t2":Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lkdk/android/simplydo/ListDesc;->getActiveItems()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lkdk/android/simplydo/ListDesc;->getTotalItems()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1    # "listDesc":Lkdk/android/simplydo/ListDesc;
    .end local v3    # "t1":Landroid/widget/TextView;
    .end local v4    # "t2":Landroid/widget/TextView;
    :goto_1
    return-object v2

    .line 73
    :cond_0
    move-object v2, p2

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "SimplyDo"

    const-string v6, "Error in getView()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
