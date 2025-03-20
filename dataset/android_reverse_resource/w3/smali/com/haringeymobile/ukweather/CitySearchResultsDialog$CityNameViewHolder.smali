.class Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CitySearchResultsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haringeymobile/ukweather/CitySearchResultsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CityNameViewHolder"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private cityNameTextView:Landroid/widget/TextView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3a11c758a7a00d21L    # 5.60996745048742E-29

    const-string v2, "com/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 147
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 148
    iput-object p1, p0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder;->cityNameTextView:Landroid/widget/TextView;

    .line 149
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder;)Landroid/widget/TextView;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder;->cityNameTextView:Landroid/widget/TextView;

    aput-boolean v2, v0, v2

    return-object v1
.end method
