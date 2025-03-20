.class Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/asdtm/goodweather/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchCityAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private mCites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/asdtm/goodweather/model/CitySearch;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/asdtm/goodweather/SearchActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4166565d507ba8e6L    # 1.1711210515095185E7

    const-string v2, "org/asdtm/goodweather/SearchActivity$SearchCityAdapter"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/asdtm/goodweather/SearchActivity;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/asdtm/goodweather/model/CitySearch;",
            ">;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 132
    iput-object p1, p0, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;->this$0:Lorg/asdtm/goodweather/SearchActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 133
    iput-object p2, p0, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;->mCites:Ljava/util/List;

    .line 134
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$200(Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;)Ljava/util/List;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 127
    iget-object v1, p0, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;->mCites:Ljava/util/List;

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 161
    new-instance v1, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter$1;

    invoke-direct {v1, p0}, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter$1;-><init>(Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;)V

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getItemCount()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 138
    iget-object v0, p0, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;->mCites:Ljava/util/List;

    if-eqz v0, :cond_0

    aput-boolean v3, v1, v3

    .line 139
    iget-object v0, p0, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;->mCites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 127
    check-cast p1, Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;

    invoke-virtual {p0, p1, p2}, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;->onBindViewHolder(Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;I)V

    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onBindViewHolder(Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 146
    iget-object v0, p0, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;->mCites:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/asdtm/goodweather/model/CitySearch;

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    .line 147
    invoke-virtual {p1, v0}, Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;->bindCity(Lorg/asdtm/goodweather/model/CitySearch;)V

    .line 148
    const/4 v0, 0x5

    aput-boolean v3, v1, v0

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 127
    invoke-virtual {p0, p1, p2}, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;

    move-result-object v1

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 152
    iget-object v1, p0, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;->this$0:Lorg/asdtm/goodweather/SearchActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x6

    aput-boolean v4, v0, v2

    .line 153
    const v2, 0x7f040021

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x7

    aput-boolean v4, v0, v2

    .line 155
    new-instance v2, Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;

    iget-object v3, p0, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;->this$0:Lorg/asdtm/goodweather/SearchActivity;

    invoke-direct {v2, v3, v1}, Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;-><init>(Lorg/asdtm/goodweather/SearchActivity;Landroid/view/View;)V

    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    return-object v2
.end method
