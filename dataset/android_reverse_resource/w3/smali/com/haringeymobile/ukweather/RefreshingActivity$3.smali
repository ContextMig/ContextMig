.class Lcom/haringeymobile/ukweather/RefreshingActivity$3;
.super Ljava/lang/Object;
.source "RefreshingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haringeymobile/ukweather/RefreshingActivity;->onOldJsonStringRetrieved(Ljava/lang/String;Lcom/haringeymobile/ukweather/weather/WeatherInfoType;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/haringeymobile/ukweather/RefreshingActivity;

.field final synthetic val$jsonString:Ljava/lang/String;

.field final synthetic val$weatherInfoType:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/RefreshingActivity$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4821a818bd2126f7L    # -1.3932993350598279E-39

    const-string v2, "com/haringeymobile/ukweather/RefreshingActivity$3"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/RefreshingActivity$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/haringeymobile/ukweather/RefreshingActivity;Ljava/lang/String;Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/RefreshingActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 109
    iput-object p1, p0, Lcom/haringeymobile/ukweather/RefreshingActivity$3;->this$0:Lcom/haringeymobile/ukweather/RefreshingActivity;

    iput-object p2, p0, Lcom/haringeymobile/ukweather/RefreshingActivity$3;->val$jsonString:Ljava/lang/String;

    iput-object p3, p0, Lcom/haringeymobile/ukweather/RefreshingActivity$3;->val$weatherInfoType:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/RefreshingActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 113
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    aput-boolean v5, v0, v5

    .line 114
    iget-object v1, p0, Lcom/haringeymobile/ukweather/RefreshingActivity$3;->this$0:Lcom/haringeymobile/ukweather/RefreshingActivity;

    iget-object v2, p0, Lcom/haringeymobile/ukweather/RefreshingActivity$3;->val$jsonString:Ljava/lang/String;

    iget-object v3, p0, Lcom/haringeymobile/ukweather/RefreshingActivity$3;->val$weatherInfoType:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/haringeymobile/ukweather/RefreshingActivity;->onRecentJsonStringRetrieved(Ljava/lang/String;Lcom/haringeymobile/ukweather/weather/WeatherInfoType;Z)V

    .line 115
    const/4 v1, 0x2

    aput-boolean v5, v0, v1

    return-void
.end method
