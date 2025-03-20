.class Lorg/asdtm/goodweather/WeatherForecastActivity$1;
.super Landroid/os/Handler;
.source "WeatherForecastActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/asdtm/goodweather/WeatherForecastActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lorg/asdtm/goodweather/WeatherForecastActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/WeatherForecastActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x68d92c81d97bb5dL

    const-string v2, "org/asdtm/goodweather/WeatherForecastActivity$1"

    const/16 v3, 0xf

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/WeatherForecastActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/asdtm/goodweather/WeatherForecastActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/WeatherForecastActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 62
    iput-object p1, p0, Lorg/asdtm/goodweather/WeatherForecastActivity$1;->this$0:Lorg/asdtm/goodweather/WeatherForecastActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const v2, 0x7f08004d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/WeatherForecastActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 64
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    aput-boolean v4, v0, v4

    .line 86
    :goto_0
    const/16 v1, 0xe

    aput-boolean v4, v0, v1

    return-void

    .line 66
    :pswitch_0
    iget-object v1, p0, Lorg/asdtm/goodweather/WeatherForecastActivity$1;->this$0:Lorg/asdtm/goodweather/WeatherForecastActivity;

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    .line 68
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 69
    iget-object v1, p0, Lorg/asdtm/goodweather/WeatherForecastActivity$1;->this$0:Lorg/asdtm/goodweather/WeatherForecastActivity;

    invoke-static {v1, v3}, Lorg/asdtm/goodweather/WeatherForecastActivity;->access$000(Lorg/asdtm/goodweather/WeatherForecastActivity;Z)V

    .line 70
    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 72
    :pswitch_1
    iget-object v1, p0, Lorg/asdtm/goodweather/WeatherForecastActivity$1;->this$0:Lorg/asdtm/goodweather/WeatherForecastActivity;

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    const/4 v2, 0x5

    aput-boolean v4, v0, v2

    .line 74
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    .line 75
    iget-object v1, p0, Lorg/asdtm/goodweather/WeatherForecastActivity$1;->this$0:Lorg/asdtm/goodweather/WeatherForecastActivity;

    invoke-static {v1, v3}, Lorg/asdtm/goodweather/WeatherForecastActivity;->access$000(Lorg/asdtm/goodweather/WeatherForecastActivity;Z)V

    .line 76
    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 78
    :pswitch_2
    iget-object v1, p0, Lorg/asdtm/goodweather/WeatherForecastActivity$1;->this$0:Lorg/asdtm/goodweather/WeatherForecastActivity;

    invoke-static {v1, v3}, Lorg/asdtm/goodweather/WeatherForecastActivity;->access$000(Lorg/asdtm/goodweather/WeatherForecastActivity;Z)V

    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    .line 79
    iget-object v1, p0, Lorg/asdtm/goodweather/WeatherForecastActivity$1;->this$0:Lorg/asdtm/goodweather/WeatherForecastActivity;

    invoke-static {v1}, Lorg/asdtm/goodweather/WeatherForecastActivity;->access$100(Lorg/asdtm/goodweather/WeatherForecastActivity;)V

    const/16 v1, 0x9

    aput-boolean v4, v0, v1

    .line 80
    iget-object v1, p0, Lorg/asdtm/goodweather/WeatherForecastActivity$1;->this$0:Lorg/asdtm/goodweather/WeatherForecastActivity;

    invoke-static {v1}, Lorg/asdtm/goodweather/WeatherForecastActivity;->access$200(Lorg/asdtm/goodweather/WeatherForecastActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 81
    :cond_0
    iget-object v1, p0, Lorg/asdtm/goodweather/WeatherForecastActivity$1;->this$0:Lorg/asdtm/goodweather/WeatherForecastActivity;

    iget-object v2, p0, Lorg/asdtm/goodweather/WeatherForecastActivity$1;->this$0:Lorg/asdtm/goodweather/WeatherForecastActivity;

    const/16 v3, 0xb

    aput-boolean v4, v0, v3

    .line 82
    invoke-static {v2}, Lorg/asdtm/goodweather/WeatherForecastActivity;->access$200(Lorg/asdtm/goodweather/WeatherForecastActivity;)Ljava/util/List;

    move-result-object v2

    const/16 v3, 0xc

    aput-boolean v4, v0, v3

    .line 81
    invoke-static {v1, v2}, Lorg/asdtm/goodweather/utils/AppPreference;->saveWeatherForecast(Landroid/content/Context;Ljava/util/List;)V

    const/16 v1, 0xd

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
