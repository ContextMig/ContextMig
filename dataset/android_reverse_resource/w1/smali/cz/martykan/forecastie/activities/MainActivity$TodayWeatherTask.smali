.class Lcz/martykan/forecastie/activities/MainActivity$TodayWeatherTask;
.super Lcz/martykan/forecastie/tasks/GenericRequestTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/martykan/forecastie/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TodayWeatherTask"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcz/martykan/forecastie/activities/MainActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/activities/MainActivity$TodayWeatherTask;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xf3b175c19f17f7aL    # 2.662639859605725E-235

    const-string v2, "cz/martykan/forecastie/activities/MainActivity$TodayWeatherTask"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/activities/MainActivity$TodayWeatherTask;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcz/martykan/forecastie/activities/MainActivity;Landroid/content/Context;Lcz/martykan/forecastie/activities/MainActivity;Landroid/app/ProgressDialog;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity$TodayWeatherTask;->$jacocoInit()[Z

    move-result-object v0

    .line 796
    iput-object p1, p0, Lcz/martykan/forecastie/activities/MainActivity$TodayWeatherTask;->this$0:Lcz/martykan/forecastie/activities/MainActivity;

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 797
    invoke-direct {p0, p2, p3, p4}, Lcz/martykan/forecastie/tasks/GenericRequestTask;-><init>(Landroid/content/Context;Lcz/martykan/forecastie/activities/MainActivity;Landroid/app/ProgressDialog;)V

    .line 798
    aput-boolean v2, v0, v2

    return-void
.end method


# virtual methods
.method protected getAPIName()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity$TodayWeatherTask;->$jacocoInit()[Z

    move-result-object v0

    .line 821
    const-string v1, "weather"

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected onPostExecute(Lcz/martykan/forecastie/tasks/TaskOutput;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity$TodayWeatherTask;->$jacocoInit()[Z

    move-result-object v0

    .line 808
    invoke-super {p0, p1}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->onPostExecute(Lcz/martykan/forecastie/tasks/TaskOutput;)V

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    .line 810
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity$TodayWeatherTask;->this$0:Lcz/martykan/forecastie/activities/MainActivity;

    invoke-static {v1}, Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;->updateWidgets(Landroid/content/Context;)V

    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    .line 811
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity$TodayWeatherTask;->this$0:Lcz/martykan/forecastie/activities/MainActivity;

    invoke-static {v1}, Lcz/martykan/forecastie/widgets/DashClockWeatherExtension;->updateDashClock(Landroid/content/Context;)V

    .line 812
    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity$TodayWeatherTask;->$jacocoInit()[Z

    move-result-object v0

    .line 795
    check-cast p1, Lcz/martykan/forecastie/tasks/TaskOutput;

    invoke-virtual {p0, p1}, Lcz/martykan/forecastie/activities/MainActivity$TodayWeatherTask;->onPostExecute(Lcz/martykan/forecastie/tasks/TaskOutput;)V

    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity$TodayWeatherTask;->$jacocoInit()[Z

    move-result-object v0

    .line 802
    const/4 v1, 0x0

    iput v1, p0, Lcz/martykan/forecastie/activities/MainActivity$TodayWeatherTask;->loading:I

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 803
    invoke-super {p0}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->onPreExecute()V

    .line 804
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected parseResponse(Ljava/lang/String;)Lcz/martykan/forecastie/tasks/ParseResult;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity$TodayWeatherTask;->$jacocoInit()[Z

    move-result-object v0

    .line 816
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity$TodayWeatherTask;->this$0:Lcz/martykan/forecastie/activities/MainActivity;

    invoke-static {v1, p1}, Lcz/martykan/forecastie/activities/MainActivity;->access$100(Lcz/martykan/forecastie/activities/MainActivity;Ljava/lang/String;)Lcz/martykan/forecastie/tasks/ParseResult;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected updateMainUI()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity$TodayWeatherTask;->$jacocoInit()[Z

    move-result-object v0

    .line 826
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity$TodayWeatherTask;->this$0:Lcz/martykan/forecastie/activities/MainActivity;

    invoke-static {v1}, Lcz/martykan/forecastie/activities/MainActivity;->access$200(Lcz/martykan/forecastie/activities/MainActivity;)V

    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    .line 827
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity$TodayWeatherTask;->this$0:Lcz/martykan/forecastie/activities/MainActivity;

    invoke-static {v1}, Lcz/martykan/forecastie/activities/MainActivity;->access$300(Lcz/martykan/forecastie/activities/MainActivity;)V

    .line 828
    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    return-void
.end method
