.class Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter;
.super Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;
.source "CityUtilitiesCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$CityRowUtilitiesViewHolder;,
        Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$Listener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private isRemovalModeButton:Z

.field private listener:Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$Listener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x319faf3fbb49edd8L    # 1.1477010536516732E-69

    const-string v2, "com/haringeymobile/ukweather/CityUtilitiesCursorAdapter"

    const/16 v3, 0x14

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[IILandroid/view/View$OnClickListener;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 56
    invoke-direct/range {p0 .. p7}, Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[IILandroid/view/View$OnClickListener;)V

    move-object v0, p1

    .line 57
    check-cast v0, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$Listener;

    iput-object v0, p0, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter;->listener:Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$Listener;

    const/4 v0, 0x0

    aput-boolean v2, v1, v0

    .line 58
    invoke-static {p1}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->isRemovalModeButton(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter;->isRemovalModeButton:Z

    .line 59
    aput-boolean v2, v1, v2

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$CityRowUtilitiesViewHolder;

    const/16 v2, 0xd

    aput-boolean v4, v1, v2

    .line 89
    const-string v2, "Name"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xe

    aput-boolean v4, v1, v3

    .line 90
    iget-object v0, v0, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$CityRowUtilitiesViewHolder;->cityNameTextView:Landroid/widget/TextView;

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const/16 v0, 0xf

    aput-boolean v4, v1, v0

    return-void
.end method

.method public drop(II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 95
    invoke-super {p0, p1, p2}, Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;->drop(II)V

    const/16 v1, 0x10

    aput-boolean v2, v0, v1

    .line 96
    iget-object v1, p0, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter;->listener:Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$Listener;

    invoke-interface {v1, p1, p2}, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$Listener;->dragCity(II)V

    .line 97
    const/16 v1, 0x11

    aput-boolean v2, v0, v1

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 66
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x7f03003c

    const/4 v4, 0x2

    aput-boolean v5, v2, v4

    .line 67
    invoke-virtual {v1, v3, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const/4 v1, 0x3

    aput-boolean v5, v2, v1

    .line 69
    new-instance v0, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$CityRowUtilitiesViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$CityRowUtilitiesViewHolder;-><init>(Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$1;)V

    .line 70
    .local v0, "holder":Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$CityRowUtilitiesViewHolder;
    const v1, 0x7f0c008b

    const/4 v4, 0x4

    aput-boolean v5, v2, v4

    .line 71
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$CityRowUtilitiesViewHolder;->cityNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x5

    aput-boolean v5, v2, v1

    .line 72
    const v1, 0x7f0c008c

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$CityRowUtilitiesViewHolder;->buttonRename:Landroid/widget/ImageView;

    const/4 v1, 0x6

    aput-boolean v5, v2, v1

    .line 73
    iget-object v1, v0, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$CityRowUtilitiesViewHolder;->buttonRename:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x7

    aput-boolean v5, v2, v1

    .line 74
    const v1, 0x7f0c008d

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$CityRowUtilitiesViewHolder;->buttonDelete:Landroid/widget/ImageView;

    .line 75
    iget-boolean v1, p0, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter;->isRemovalModeButton:Z

    if-eqz v1, :cond_0

    aput-boolean v5, v2, v7

    .line 76
    iget-object v1, v0, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$CityRowUtilitiesViewHolder;->buttonDelete:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v1, 0x9

    aput-boolean v5, v2, v1

    .line 77
    iget-object v1, v0, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$CityRowUtilitiesViewHolder;->buttonDelete:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0xa

    aput-boolean v5, v2, v1

    .line 82
    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    const/16 v1, 0xc

    aput-boolean v5, v2, v1

    return-object v3

    .line 79
    :cond_0
    iget-object v1, v0, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$CityRowUtilitiesViewHolder;->buttonDelete:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v1, 0xb

    aput-boolean v5, v2, v1

    goto :goto_0
.end method

.method public remove(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 101
    invoke-super {p0, p1}, Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;->remove(I)V

    const/16 v1, 0x12

    aput-boolean v3, v0, v1

    .line 102
    iget-object v1, p0, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter;->listener:Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$Listener;

    invoke-virtual {p0, p1}, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter;->getCityId(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$Listener;->removeCityById(I)V

    .line 103
    const/16 v1, 0x13

    aput-boolean v3, v0, v1

    return-void
.end method
