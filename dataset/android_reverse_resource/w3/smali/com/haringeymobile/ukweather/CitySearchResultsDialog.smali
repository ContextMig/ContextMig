.class public Lcom/haringeymobile/ukweather/CitySearchResultsDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "CitySearchResultsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;,
        Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder;,
        Lcom/haringeymobile/ukweather/CitySearchResultsDialog$OnCityNamesListItemClickedListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field static final CITY_NAME_LIST:Ljava/lang/String; = "city names"

.field private static final TITLE_TEXT_LINE_SEPARATOR:Ljava/lang/String; = "\n--------------\n"


# instance fields
.field private adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private onCityNamesListItemClickedListener:Lcom/haringeymobile/ukweather/CitySearchResultsDialog$OnCityNamesListItemClickedListener;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x56bdac6f38830ef4L    # -6.096343283962581E-110

    const-string v2, "com/haringeymobile/ukweather/CitySearchResultsDialog"

    const/16 v3, 0x23

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$100(Lcom/haringeymobile/ukweather/CitySearchResultsDialog;)Lcom/haringeymobile/ukweather/CitySearchResultsDialog$OnCityNamesListItemClickedListener;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->onCityNamesListItemClickedListener:Lcom/haringeymobile/ukweather/CitySearchResultsDialog$OnCityNamesListItemClickedListener;

    const/16 v2, 0x22

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private createCustomDialogTitle(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->$jacocoInit()[Z

    move-result-object v1

    .line 96
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->requestFeature(I)Z

    const/16 v0, 0x10

    aput-boolean v4, v1, v0

    .line 97
    const v0, 0x7f0c0068

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x11

    aput-boolean v4, v1, v2

    .line 98
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->getCitySearchResultsDialogTitle()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12

    aput-boolean v4, v1, v3

    .line 99
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const/16 v0, 0x13

    aput-boolean v4, v1, v0

    return-void
.end method

.method private getCitySearchResultsDialogTitle()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->$jacocoInit()[Z

    move-result-object v1

    .line 103
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v3, 0x14

    aput-boolean v5, v1, v3

    .line 104
    const v3, 0x7f060045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x15

    aput-boolean v5, v1, v4

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n--------------\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "dialogTitle":Ljava/lang/String;
    const/16 v3, 0x16

    aput-boolean v5, v1, v3

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f060046

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    const/16 v2, 0x17

    aput-boolean v5, v1, v2

    return-object v0
.end method

.method private initialiseRecyclerViewAdapter()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 123
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/16 v2, 0x1c

    aput-boolean v3, v0, v2

    .line 124
    const-string v2, "city names"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/16 v2, 0x1d

    aput-boolean v3, v0, v2

    .line 125
    new-instance v2, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;

    invoke-direct {v2, p0, v1}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;-><init>(Lcom/haringeymobile/ukweather/CitySearchResultsDialog;Ljava/util/List;)V

    iput-object v2, p0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 126
    const/16 v1, 0x1e

    aput-boolean v3, v0, v1

    return-void
.end method

.method static newInstance(Ljava/util/ArrayList;)Lcom/haringeymobile/ukweather/CitySearchResultsDialog;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/haringeymobile/ukweather/CitySearchResultsDialog;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    new-instance v1, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;

    invoke-direct {v1}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;-><init>()V

    aput-boolean v4, v0, v4

    .line 56
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x2

    aput-boolean v4, v0, v3

    .line 57
    const-string v3, "city names"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v3, 0x3

    aput-boolean v4, v0, v3

    .line 58
    invoke-virtual {v1, v2}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->setArguments(Landroid/os/Bundle;)V

    .line 59
    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 112
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 113
    iget-object v1, p0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    const/16 v1, 0x18

    aput-boolean v3, v0, v1

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 117
    const/16 v1, 0x1b

    aput-boolean v3, v0, v1

    return-void

    .line 113
    :cond_0
    const/16 v1, 0x19

    aput-boolean v3, v0, v1

    .line 114
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->initialiseRecyclerViewAdapter()V

    const/16 v1, 0x1a

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->$jacocoInit()[Z

    move-result-object v2

    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    const/4 v1, 0x5

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v2, v1

    .line 66
    move-object v0, p1

    check-cast v0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$OnCityNamesListItemClickedListener;

    move-object v1, v0

    iput-object v1, p0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->onCityNamesListItemClickedListener:Lcom/haringeymobile/ukweather/CitySearchResultsDialog$OnCityNamesListItemClickedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    const/16 v1, 0x8

    aput-boolean v5, v2, v1

    return-void

    .line 67
    :catch_0
    move-exception v1

    const/4 v1, 0x6

    aput-boolean v5, v2, v1

    .line 68
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnCityNamesListItemClickedListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x7

    aput-boolean v5, v2, v3

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->$jacocoInit()[Z

    move-result-object v1

    .line 76
    const v0, 0x7f030024

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const/16 v0, 0x9

    aput-boolean v5, v1, v0

    .line 78
    invoke-direct {p0, v2}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->createCustomDialogTitle(Landroid/view/View;)V

    const/16 v0, 0xa

    aput-boolean v5, v1, v0

    .line 80
    const v0, 0x7f0c0069

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/16 v0, 0xb

    aput-boolean v5, v1, v0

    .line 81
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/16 v3, 0xc

    aput-boolean v5, v1, v3

    .line 82
    iget-object v3, p0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const/16 v0, 0xd

    aput-boolean v5, v1, v0

    .line 84
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07001c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const/16 v3, 0xe

    aput-boolean v5, v1, v3

    .line 85
    iget-object v3, p0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Lcom/haringeymobile/ukweather/utils/ItemDecorationListDivider;

    invoke-direct {v4, v0}, Lcom/haringeymobile/ukweather/utils/ItemDecorationListDivider;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 87
    const/16 v0, 0xf

    aput-boolean v5, v1, v0

    return-object v2
.end method

.method public onDestroyView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const/16 v1, 0x1f

    aput-boolean v3, v0, v1

    .line 131
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 132
    const/16 v1, 0x20

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 136
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDetach()V

    .line 137
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->onCityNamesListItemClickedListener:Lcom/haringeymobile/ukweather/CitySearchResultsDialog$OnCityNamesListItemClickedListener;

    .line 138
    const/16 v1, 0x21

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
