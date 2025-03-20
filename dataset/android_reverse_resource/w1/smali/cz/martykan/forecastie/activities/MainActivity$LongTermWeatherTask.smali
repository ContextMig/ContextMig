.class Lcz/martykan/forecastie/activities/MainActivity$LongTermWeatherTask;
.super Lcz/martykan/forecastie/tasks/GenericRequestTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/martykan/forecastie/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LongTermWeatherTask"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcz/martykan/forecastie/activities/MainActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/activities/MainActivity$LongTermWeatherTask;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1f3a27324488efd7L    # -1.4997447403667406E158

    const-string v2, "cz/martykan/forecastie/activities/MainActivity$LongTermWeatherTask"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/activities/MainActivity$LongTermWeatherTask;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcz/martykan/forecastie/activities/MainActivity;Landroid/content/Context;Lcz/martykan/forecastie/activities/MainActivity;Landroid/app/ProgressDialog;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity$LongTermWeatherTask;->$jacocoInit()[Z

    move-result-object v0

    .line 832
    iput-object p1, p0, Lcz/martykan/forecastie/activities/MainActivity$LongTermWeatherTask;->this$0:Lcz/martykan/forecastie/activities/MainActivity;

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 833
    invoke-direct {p0, p2, p3, p4}, Lcz/martykan/forecastie/tasks/GenericRequestTask;-><init>(Landroid/content/Context;Lcz/martykan/forecastie/activities/MainActivity;Landroid/app/ProgressDialog;)V

    .line 834
    aput-boolean v2, v0, v2

    return-void
.end method


# virtual methods
.method protected getAPIName()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity$LongTermWeatherTask;->$jacocoInit()[Z

    move-result-object v0

    .line 843
    const-string v1, "forecast"

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected parseResponse(Ljava/lang/String;)Lcz/martykan/forecastie/tasks/ParseResult;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity$LongTermWeatherTask;->$jacocoInit()[Z

    move-result-object v0

    .line 838
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity$LongTermWeatherTask;->this$0:Lcz/martykan/forecastie/activities/MainActivity;

    invoke-virtual {v1, p1}, Lcz/martykan/forecastie/activities/MainActivity;->parseLongTermJson(Ljava/lang/String;)Lcz/martykan/forecastie/tasks/ParseResult;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected updateMainUI()V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity$LongTermWeatherTask;->$jacocoInit()[Z

    move-result-object v0

    .line 848
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity$LongTermWeatherTask;->this$0:Lcz/martykan/forecastie/activities/MainActivity;

    invoke-static {v1}, Lcz/martykan/forecastie/activities/MainActivity;->access$400(Lcz/martykan/forecastie/activities/MainActivity;)V

    .line 849
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
