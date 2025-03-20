.class Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter$1;
.super Landroid/widget/Filter;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6802df78ee45c388L    # 1.0763332937336918E193

    const-string v2, "org/asdtm/goodweather/SearchActivity$SearchCityAdapter$1"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter$1;->$jacocoInit()[Z

    move-result-object v0

    .line 161
    iput-object p1, p0, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter$1;->this$1:Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter$1;->$jacocoInit()[Z

    move-result-object v2

    .line 164
    new-instance v3, Landroid/widget/Filter$FilterResults;

    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    aput-boolean v5, v2, v5

    .line 166
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/asdtm/goodweather/utils/CityParser;->getCity(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 167
    .local v0, "citySearchList":Ljava/util/List;, "Ljava/util/List<Lorg/asdtm/goodweather/model/CitySearch;>;"
    iput-object v0, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    const/4 v1, 0x2

    aput-boolean v5, v2, v1

    .line 168
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x3

    aput-boolean v5, v2, v4

    :goto_0
    iput v1, v3, Landroid/widget/Filter$FilterResults;->count:I

    .line 170
    const/4 v1, 0x5

    aput-boolean v5, v2, v1

    return-object v3

    .line 168
    :cond_0
    const/4 v1, 0x0

    const/4 v4, 0x4

    aput-boolean v5, v2, v4

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter$1;->$jacocoInit()[Z

    move-result-object v1

    .line 176
    iget-object v0, p0, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter$1;->this$1:Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;

    invoke-static {v0}, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;->access$200(Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 177
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x6

    aput-boolean v3, v1, v0

    .line 180
    :goto_0
    iget-object v0, p0, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter$1;->this$1:Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;

    invoke-virtual {v0}, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;->notifyDataSetChanged()V

    .line 181
    const/16 v0, 0x9

    aput-boolean v3, v1, v0

    return-void

    .line 177
    :cond_0
    const/4 v0, 0x7

    aput-boolean v3, v1, v0

    .line 178
    iget-object v0, p0, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter$1;->this$1:Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;

    invoke-static {v0}, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;->access$200(Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/16 v0, 0x8

    aput-boolean v3, v1, v0

    goto :goto_0
.end method
