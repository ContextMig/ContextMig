.class public Lcz/martykan/forecastie/AlarmReceiver$GetWeatherTask;
.super Landroid/os/AsyncTask;
.source "AlarmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/martykan/forecastie/AlarmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetWeatherTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcz/martykan/forecastie/AlarmReceiver;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/AlarmReceiver$GetWeatherTask;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3663d9d1573ca8d0L    # 1.0866002489272362E-46

    const-string v2, "cz/martykan/forecastie/AlarmReceiver$GetWeatherTask"

    const/16 v3, 0x1a

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/AlarmReceiver$GetWeatherTask;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcz/martykan/forecastie/AlarmReceiver;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver$GetWeatherTask;->$jacocoInit()[Z

    move-result-object v0

    .line 93
    iput-object p1, p0, Lcz/martykan/forecastie/AlarmReceiver$GetWeatherTask;->this$0:Lcz/martykan/forecastie/AlarmReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver$GetWeatherTask;->$jacocoInit()[Z

    move-result-object v0

    .line 93
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcz/martykan/forecastie/AlarmReceiver$GetWeatherTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v1

    const/16 v2, 0x19

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 11

    .prologue
    const/4 v10, 0x1

    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver$GetWeatherTask;->$jacocoInit()[Z

    move-result-object v4

    .line 101
    const-string v2, ""

    const/4 v3, 0x2

    const/4 v5, 0x1

    :try_start_0
    aput-boolean v5, v4, v3

    .line 103
    iget-object v3, p0, Lcz/martykan/forecastie/AlarmReceiver$GetWeatherTask;->this$0:Lcz/martykan/forecastie/AlarmReceiver;

    iget-object v3, v3, Lcz/martykan/forecastie/AlarmReceiver;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const/4 v3, 0x3

    const/4 v6, 0x1

    aput-boolean v6, v4, v3

    .line 104
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    const/4 v6, 0x1

    aput-boolean v6, v4, v3

    .line 105
    const-string v3, "cs"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x5

    const/4 v6, 0x1

    aput-boolean v6, v4, v3

    .line 106
    .local v0, "language":Ljava/lang/String;
    :goto_0
    const-string v3, "apiKey"

    iget-object v6, p0, Lcz/martykan/forecastie/AlarmReceiver$GetWeatherTask;->this$0:Lcz/martykan/forecastie/AlarmReceiver;

    iget-object v6, v6, Lcz/martykan/forecastie/AlarmReceiver;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07007a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x7

    const/4 v7, 0x1

    aput-boolean v7, v4, v6

    .line 107
    new-instance v6, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://api.openweathermap.org/data/2.5/weather?q="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "city"

    const-string v9, "London"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&lang="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&appid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x8

    const/4 v7, 0x1

    aput-boolean v7, v4, v3

    .line 108
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    const/16 v6, 0x9

    const/4 v7, 0x1

    aput-boolean v7, v4, v6

    .line 109
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 v7, 0xa

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 111
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v7, 0xc8

    if-eq v3, v7, :cond_1

    const/16 v3, 0xb

    const/4 v5, 0x1

    aput-boolean v5, v4, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_1
    const/16 v3, 0x13

    aput-boolean v10, v4, v3

    .line 127
    :goto_2
    const/4 v3, 0x0

    const/16 v5, 0x15

    aput-boolean v10, v4, v5

    return-object v3

    .line 105
    .end local v0    # "language":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v0, "cz"

    .restart local v0    # "language":Ljava/lang/String;
    const/4 v3, 0x6

    const/4 v6, 0x1

    aput-boolean v6, v4, v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 124
    :catch_0
    move-exception v3

    const/16 v3, 0x14

    aput-boolean v10, v4, v3

    goto :goto_2

    .line 112
    :cond_1
    const/16 v3, 0xc

    const/4 v7, 0x1

    :try_start_2
    aput-boolean v7, v4, v3

    .line 113
    :goto_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_2

    const/16 v3, 0xd

    const/4 v7, 0x1

    aput-boolean v7, v4, v3

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "result":Ljava/lang/String;
    const/16 v3, 0xe

    const/4 v7, 0x1

    aput-boolean v7, v4, v3

    goto :goto_3

    .line 116
    .end local v2    # "result":Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/16 v6, 0xf

    const/4 v7, 0x1

    aput-boolean v7, v4, v6

    .line 117
    const-string v6, "lastToday"

    invoke-interface {v3, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v6, 0x10

    const/4 v7, 0x1

    aput-boolean v7, v4, v6

    .line 118
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v3, 0x11

    const/4 v6, 0x1

    aput-boolean v6, v4, v3

    .line 119
    invoke-static {v5}, Lcz/martykan/forecastie/activities/MainActivity;->saveLastUpdateTime(Landroid/content/SharedPreferences;)J

    const/16 v3, 0x12

    const/4 v5, 0x1

    aput-boolean v5, v4, v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver$GetWeatherTask;->$jacocoInit()[Z

    move-result-object v0

    .line 93
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcz/martykan/forecastie/AlarmReceiver$GetWeatherTask;->onPostExecute(Ljava/lang/Void;)V

    const/16 v1, 0x18

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver$GetWeatherTask;->$jacocoInit()[Z

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcz/martykan/forecastie/AlarmReceiver$GetWeatherTask;->this$0:Lcz/martykan/forecastie/AlarmReceiver;

    iget-object v1, v1, Lcz/martykan/forecastie/AlarmReceiver;->context:Landroid/content/Context;

    invoke-static {v1}, Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;->updateWidgets(Landroid/content/Context;)V

    const/16 v1, 0x16

    aput-boolean v2, v0, v1

    .line 133
    iget-object v1, p0, Lcz/martykan/forecastie/AlarmReceiver$GetWeatherTask;->this$0:Lcz/martykan/forecastie/AlarmReceiver;

    iget-object v1, v1, Lcz/martykan/forecastie/AlarmReceiver;->context:Landroid/content/Context;

    invoke-static {v1}, Lcz/martykan/forecastie/widgets/DashClockWeatherExtension;->updateDashClock(Landroid/content/Context;)V

    .line 134
    const/16 v1, 0x17

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver$GetWeatherTask;->$jacocoInit()[Z

    move-result-object v0

    .line 97
    aput-boolean v1, v0, v1

    return-void
.end method
