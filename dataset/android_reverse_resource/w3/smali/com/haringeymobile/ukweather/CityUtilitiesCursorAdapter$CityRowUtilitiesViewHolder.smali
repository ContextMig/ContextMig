.class Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$CityRowUtilitiesViewHolder;
.super Ljava/lang/Object;
.source "CityUtilitiesCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CityRowUtilitiesViewHolder"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field buttonDelete:Landroid/widget/ImageView;

.field buttonRename:Landroid/widget/ImageView;

.field cityNameTextView:Landroid/widget/TextView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$CityRowUtilitiesViewHolder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7c5e78e33f766e0aL    # -3.512862705193535E-291

    const-string v2, "com/haringeymobile/ukweather/CityUtilitiesCursorAdapter$CityRowUtilitiesViewHolder"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$CityRowUtilitiesViewHolder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$CityRowUtilitiesViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$1;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$CityRowUtilitiesViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 47
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$CityRowUtilitiesViewHolder;-><init>()V

    aput-boolean v1, v0, v1

    return-void
.end method
