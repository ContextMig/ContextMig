.class public Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter;
.super Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;
.source "CityWeatherCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter$CityRowWeatherViewHolder;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6b404693373b3e1cL    # -9.649732785533692E-209

    const-string v2, "com/haringeymobile/ukweather/CityWeatherCursorAdapter"

    const/16 v3, 0xf

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[IILandroid/view/View$OnClickListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    invoke-direct/range {p0 .. p7}, Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[IILandroid/view/View$OnClickListener;)V

    .line 34
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter$CityRowWeatherViewHolder;

    const/16 v2, 0xc

    aput-boolean v4, v1, v2

    .line 63
    const-string v2, "Name"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xd

    aput-boolean v4, v1, v3

    .line 64
    iget-object v0, v0, Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter$CityRowWeatherViewHolder;->cityNameTextView:Landroid/widget/TextView;

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const/16 v0, 0xe

    aput-boolean v4, v1, v0

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 38
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x7f03003d

    const/4 v4, 0x0

    aput-boolean v5, v2, v5

    .line 39
    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const/4 v1, 0x2

    aput-boolean v5, v2, v1

    .line 41
    new-instance v0, Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter$CityRowWeatherViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter$CityRowWeatherViewHolder;-><init>(Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter$1;)V

    .line 42
    .local v0, "holder":Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter$CityRowWeatherViewHolder;
    const v1, 0x7f0c008b

    const/4 v4, 0x3

    aput-boolean v5, v2, v4

    .line 43
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter$CityRowWeatherViewHolder;->cityNameTextView:Landroid/widget/TextView;

    .line 44
    const v1, 0x7f0c008e

    const/4 v4, 0x4

    aput-boolean v5, v2, v4

    .line 45
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter$CityRowWeatherViewHolder;->buttonCurrentWeather:Landroid/widget/LinearLayout;

    .line 46
    const v1, 0x7f0c008f

    const/4 v4, 0x5

    aput-boolean v5, v2, v4

    .line 47
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter$CityRowWeatherViewHolder;->buttonDailyForecast:Landroid/widget/LinearLayout;

    .line 48
    const v1, 0x7f0c0090

    const/4 v4, 0x6

    aput-boolean v5, v2, v4

    .line 49
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter$CityRowWeatherViewHolder;->buttonThreeHourlyForecast:Landroid/widget/LinearLayout;

    const/4 v1, 0x7

    aput-boolean v5, v2, v1

    .line 51
    iget-object v1, v0, Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter$CityRowWeatherViewHolder;->buttonCurrentWeather:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x8

    aput-boolean v5, v2, v1

    .line 52
    iget-object v1, v0, Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter$CityRowWeatherViewHolder;->buttonDailyForecast:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x9

    aput-boolean v5, v2, v1

    .line 53
    iget-object v1, v0, Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter$CityRowWeatherViewHolder;->buttonThreeHourlyForecast:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0xa

    aput-boolean v5, v2, v1

    .line 55
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 57
    const/16 v1, 0xb

    aput-boolean v5, v2, v1

    return-object v3
.end method
