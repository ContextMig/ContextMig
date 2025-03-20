.class public Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons;
.super Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;
.source "CityListFragmentWithUtilityButtons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons$OnUtilityButtonClickedListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private onUtilityButtonClickedListener:Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons$OnUtilityButtonClickedListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x417ba86376f80648L    # -1.5156144118895394E-7

    const-string v2, "com/haringeymobile/ukweather/CityListFragmentWithUtilityButtons"

    const/16 v3, 0x13

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected getCityCursorAdapter()Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;
    .locals 9

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons;->$jacocoInit()[Z

    move-result-object v8

    .line 66
    new-instance v0, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter;

    iget-object v1, p0, Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons;->parentActivity:Landroid/app/Activity;

    const v2, 0x7f03003d

    const/4 v3, 0x0

    sget-object v4, Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons;->COLUMNS_TO_DISPLAY:[Ljava/lang/String;

    sget-object v5, Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons;->TO:[I

    const/4 v6, 0x0

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[IILandroid/view/View$OnClickListener;)V

    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v8, v1

    return-object v0
.end method

.method protected jumpToTheTopOfList()Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons;->$jacocoInit()[Z

    move-result-object v0

    .line 78
    const/4 v1, 0x0

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons;->$jacocoInit()[Z

    move-result-object v2

    .line 43
    invoke-super {p0, p1}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->onAttach(Landroid/app/Activity;)V

    const/4 v1, 0x1

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v2, v1

    .line 45
    move-object v0, p1

    check-cast v0, Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons$OnUtilityButtonClickedListener;

    move-object v1, v0

    iput-object v1, p0, Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons;->onUtilityButtonClickedListener:Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons$OnUtilityButtonClickedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    const/4 v1, 0x4

    aput-boolean v5, v2, v1

    return-void

    .line 46
    :catch_0
    move-exception v1

    const/4 v1, 0x2

    aput-boolean v5, v2, v1

    .line 47
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnUtilityButtonClickedListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-boolean v5, v2, v3

    throw v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons;->$jacocoInit()[Z

    move-result-object v1

    .line 83
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    const/16 v3, 0xc

    aput-boolean v5, v1, v3

    .line 84
    iget-object v3, p0, Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons;->cursorAdapter:Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;

    invoke-virtual {v3, v2}, Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;->getCityId(I)I

    move-result v3

    const/16 v4, 0xd

    aput-boolean v5, v1, v4

    .line 85
    iget-object v4, p0, Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons;->cursorAdapter:Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;

    invoke-virtual {v4, v2}, Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;->getCityName(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xe

    aput-boolean v5, v1, v4

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 88
    .local v0, "viewId":I
    packed-switch v0, :pswitch_data_0

    .line 96
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not supported view ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x11

    aput-boolean v5, v1, v3

    throw v2

    .line 90
    :pswitch_0
    iget-object v4, p0, Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons;->onUtilityButtonClickedListener:Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons$OnUtilityButtonClickedListener;

    invoke-interface {v4, v3, v2}, Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons$OnUtilityButtonClickedListener;->onCityNameChangeRequested(ILjava/lang/String;)V

    .line 91
    const/16 v2, 0xf

    aput-boolean v5, v1, v2

    .line 98
    :goto_0
    const/16 v2, 0x12

    aput-boolean v5, v1, v2

    return-void

    .line 93
    :pswitch_1
    iget-object v4, p0, Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons;->onUtilityButtonClickedListener:Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons$OnUtilityButtonClickedListener;

    invoke-interface {v4, v3, v2}, Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons$OnUtilityButtonClickedListener;->onCityRecordDeletionRequested(ILjava/lang/String;)V

    .line 94
    const/16 v2, 0x10

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c008c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons;->$jacocoInit()[Z

    move-result-object v2

    .line 55
    iget-object v1, p0, Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons;->parentActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->isRemovalModeButton(Landroid/content/Context;)Z

    move-result v0

    .line 57
    .local v0, "isRemovalModeButton":Z
    if-eqz v0, :cond_0

    const v1, 0x7f030025

    const/4 v3, 0x5

    aput-boolean v4, v2, v3

    :goto_0
    const/4 v3, 0x7

    aput-boolean v4, v2, v3

    .line 61
    const/4 v3, 0x0

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    aput-boolean v4, v2, v3

    return-object v1

    .line 57
    :cond_0
    const v1, 0x7f030026

    const/4 v3, 0x6

    aput-boolean v4, v2, v3

    goto :goto_0
.end method

.method public onDetach()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons;->$jacocoInit()[Z

    move-result-object v0

    .line 72
    invoke-super {p0}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->onDetach()V

    .line 73
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons;->onUtilityButtonClickedListener:Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons$OnUtilityButtonClickedListener;

    .line 74
    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
