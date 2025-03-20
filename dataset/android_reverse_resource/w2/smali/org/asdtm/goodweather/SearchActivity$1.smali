.class Lorg/asdtm/goodweather/SearchActivity$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/asdtm/goodweather/SearchActivity;->setupSearchView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lorg/asdtm/goodweather/SearchActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/SearchActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x13fcdf1003a6badeL    # -2.0123872233065648E212

    const-string v2, "org/asdtm/goodweather/SearchActivity$1"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/SearchActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/asdtm/goodweather/SearchActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/SearchActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    iput-object p1, p0, Lorg/asdtm/goodweather/SearchActivity$1;->this$0:Lorg/asdtm/goodweather/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SearchActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 84
    iget-object v1, p0, Lorg/asdtm/goodweather/SearchActivity$1;->this$0:Lorg/asdtm/goodweather/SearchActivity;

    invoke-static {v1}, Lorg/asdtm/goodweather/SearchActivity;->access$000(Lorg/asdtm/goodweather/SearchActivity;)Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 85
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return v2
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SearchActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 78
    iget-object v1, p0, Lorg/asdtm/goodweather/SearchActivity$1;->this$0:Lorg/asdtm/goodweather/SearchActivity;

    invoke-static {v1}, Lorg/asdtm/goodweather/SearchActivity;->access$000(Lorg/asdtm/goodweather/SearchActivity;)Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 79
    aput-boolean v2, v0, v2

    return v2
.end method
