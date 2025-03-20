.class Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/asdtm/goodweather/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchCityHolder"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private mCity:Lorg/asdtm/goodweather/model/CitySearch;

.field private mCityName:Landroid/widget/TextView;

.field private mCountryName:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/asdtm/goodweather/SearchActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2f3f2cb2d0a962c5L    # 4.1081105114525026E-81

    const-string v2, "org/asdtm/goodweather/SearchActivity$SearchCityHolder"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/asdtm/goodweather/SearchActivity;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;->$jacocoInit()[Z

    move-result-object v1

    .line 104
    iput-object p1, p0, Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;->this$0:Lorg/asdtm/goodweather/SearchActivity;

    const/4 v0, 0x0

    aput-boolean v2, v1, v0

    .line 105
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    aput-boolean v2, v1, v2

    .line 106
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x2

    aput-boolean v2, v1, v0

    .line 107
    const v0, 0x7f0f008e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;->mCityName:Landroid/widget/TextView;

    const/4 v0, 0x3

    aput-boolean v2, v1, v0

    .line 108
    const v0, 0x7f0f008f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;->mCountryName:Landroid/widget/TextView;

    .line 109
    const/4 v0, 0x4

    aput-boolean v2, v1, v0

    return-void
.end method


# virtual methods
.method bindCity(Lorg/asdtm/goodweather/model/CitySearch;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 112
    iput-object p1, p0, Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;->mCity:Lorg/asdtm/goodweather/model/CitySearch;

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 113
    iget-object v1, p0, Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;->mCityName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/asdtm/goodweather/model/CitySearch;->getCityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    .line 114
    iget-object v1, p0, Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;->mCountryName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/asdtm/goodweather/model/CitySearch;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/16 v1, 0xe3

    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 119
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    .line 120
    iget-object v1, p0, Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;->this$0:Lorg/asdtm/goodweather/SearchActivity;

    iget-object v2, p0, Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;->mCity:Lorg/asdtm/goodweather/model/CitySearch;

    invoke-static {v1, v2}, Lorg/asdtm/goodweather/SearchActivity;->access$100(Lorg/asdtm/goodweather/SearchActivity;Lorg/asdtm/goodweather/model/CitySearch;)V

    const/16 v1, 0x9

    aput-boolean v4, v0, v1

    .line 121
    iget-object v1, p0, Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;->this$0:Lorg/asdtm/goodweather/SearchActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "org.asdtm.goodweather.action.FORCED_APPWIDGET_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/asdtm/goodweather/SearchActivity;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v1, 0xa

    aput-boolean v4, v0, v1

    .line 122
    iget-object v1, p0, Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;->this$0:Lorg/asdtm/goodweather/SearchActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lorg/asdtm/goodweather/SearchActivity;->setResult(I)V

    const/16 v1, 0xb

    aput-boolean v4, v0, v1

    .line 123
    iget-object v1, p0, Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;->this$0:Lorg/asdtm/goodweather/SearchActivity;

    invoke-virtual {v1}, Lorg/asdtm/goodweather/SearchActivity;->finish()V

    .line 124
    const/16 v1, 0xc

    aput-boolean v4, v0, v1

    return-void
.end method
