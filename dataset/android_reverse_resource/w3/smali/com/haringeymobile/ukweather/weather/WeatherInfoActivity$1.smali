.class Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity$1;
.super Ljava/lang/Object;
.source "WeatherInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->updateTitleWithCityNameIfNecessary(Landroid/support/v7/widget/Toolbar;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$defaultTitle:Ljava/lang/String;

.field final synthetic val$toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3fcfca34f7da921fL    # 0.24835836508022255

    const-string v2, "com/haringeymobile/ukweather/weather/WeatherInfoActivity$1"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;Landroid/content/Context;Ljava/lang/String;Landroid/support/v7/widget/Toolbar;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 120
    iput-object p1, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity$1;->this$0:Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;

    iput-object p2, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity$1;->val$defaultTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity$1;->val$toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity$1;->$jacocoInit()[Z

    move-result-object v1

    .line 125
    iget-object v2, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->getCityIdFromSharedPrefs(Landroid/content/Context;)I

    move-result v0

    .line 126
    .local v0, "lastQueriedCityId":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    aput-boolean v5, v1, v5

    .line 134
    :goto_0
    const/4 v2, 0x7

    aput-boolean v5, v1, v2

    return-void

    .line 126
    :cond_0
    const/4 v2, 0x2

    aput-boolean v5, v1, v2

    .line 127
    new-instance v2, Lcom/haringeymobile/ukweather/database/SqlOperation;

    iget-object v3, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity$1;->val$context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/haringeymobile/ukweather/database/SqlOperation;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x3

    aput-boolean v5, v1, v3

    .line 128
    invoke-virtual {v2, v0}, Lcom/haringeymobile/ukweather/database/SqlOperation;->findCityName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-boolean v5, v1, v3

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity$1;->val$defaultTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  |  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-boolean v5, v1, v3

    .line 131
    iget-object v3, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity$1;->val$toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x6

    aput-boolean v5, v1, v2

    goto :goto_0
.end method
