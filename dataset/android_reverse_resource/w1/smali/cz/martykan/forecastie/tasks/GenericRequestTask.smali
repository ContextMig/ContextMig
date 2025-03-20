.class public abstract Lcz/martykan/forecastie/tasks/GenericRequestTask;
.super Landroid/os/AsyncTask;
.source "GenericRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lcz/martykan/forecastie/tasks/TaskOutput;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field activity:Lcz/martykan/forecastie/activities/MainActivity;

.field context:Landroid/content/Context;

.field public loading:I

.field progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x681766204966a7daL

    const-string v2, "cz/martykan/forecastie/tasks/GenericRequestTask"

    const/16 v3, 0x5e

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcz/martykan/forecastie/activities/MainActivity;Landroid/app/ProgressDialog;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 34
    iput v2, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->loading:I

    .line 37
    iput-object p1, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->activity:Lcz/martykan/forecastie/activities/MainActivity;

    .line 39
    iput-object p3, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 40
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method private static close(Ljava/io/Closeable;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->$jacocoInit()[Z

    move-result-object v0

    .line 201
    if-nez p0, :cond_0

    const/16 v1, 0x52

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v0, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    const/16 v1, 0x55

    aput-boolean v3, v0, v1

    .line 207
    :goto_1
    const/16 v1, 0x58

    aput-boolean v3, v0, v1

    return-void

    .line 201
    :cond_0
    const/16 v1, 0x53

    const/4 v2, 0x1

    :try_start_1
    aput-boolean v2, v0, v1

    .line 202
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    const/16 v1, 0x54

    const/4 v2, 0x1

    aput-boolean v2, v0, v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    const/16 v1, 0x56

    aput-boolean v3, v0, v1

    .line 205
    const-string v1, "IOException Data"

    const-string v2, "Error occurred while closing stream"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x57

    aput-boolean v3, v0, v1

    goto :goto_1
.end method

.method private decLoadingCounter()V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->$jacocoInit()[Z

    move-result-object v0

    .line 214
    iget v1, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->loading:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->loading:I

    .line 215
    const/16 v1, 0x5a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getLanguage()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->$jacocoInit()[Z

    move-result-object v1

    .line 164
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3d

    aput-boolean v3, v1, v2

    .line 165
    const-string v2, "cs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x3e

    aput-boolean v3, v1, v2

    .line 168
    .local v0, "language":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x40

    aput-boolean v3, v1, v2

    return-object v0

    .line 166
    .end local v0    # "language":Ljava/lang/String;
    :cond_0
    const-string v0, "cz"

    .restart local v0    # "language":Ljava/lang/String;
    const/16 v2, 0x3f

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method private incLoadingCounter()V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->$jacocoInit()[Z

    move-result-object v0

    .line 210
    iget v1, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->loading:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->loading:I

    .line 211
    const/16 v1, 0x59

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private provideURL([Ljava/lang/String;)Ljava/net/URL;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->$jacocoInit()[Z

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x41

    aput-boolean v6, v0, v2

    .line 173
    const-string v2, "apiKey"

    iget-object v3, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->activity:Lcz/martykan/forecastie/activities/MainActivity;

    invoke-virtual {v3}, Lcz/martykan/forecastie/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07007a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x42

    aput-boolean v6, v0, v3

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://api.openweathermap.org/data/2.5/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x43

    aput-boolean v6, v0, v4

    .line 176
    invoke-virtual {p0}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->getAPIName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    array-length v4, p1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/16 v1, 0x44

    aput-boolean v6, v0, v1

    .line 178
    const-string v1, "lat="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&lon="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, p1, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x45

    aput-boolean v6, v0, v1

    .line 183
    :goto_0
    const-string v1, "&lang="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x48

    aput-boolean v6, v0, v1

    .line 184
    const-string v1, "&mode=json"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x49

    aput-boolean v6, v0, v1

    .line 185
    const-string v1, "&appid="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x4a

    aput-boolean v6, v0, v1

    .line 187
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x4b

    aput-boolean v6, v0, v2

    return-object v1

    .line 180
    :cond_0
    const-string v4, "city"

    const-string v5, "London"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x46

    aput-boolean v6, v0, v4

    .line 181
    const-string v4, "q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x47

    aput-boolean v6, v0, v1

    goto :goto_0
.end method

.method private restorePreviousCity()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->$jacocoInit()[Z

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->activity:Lcz/martykan/forecastie/activities/MainActivity;

    iget-object v1, v1, Lcz/martykan/forecastie/activities/MainActivity;->recentCity:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x4c

    aput-boolean v4, v0, v1

    .line 197
    :goto_0
    const/16 v1, 0x51

    aput-boolean v4, v0, v1

    return-void

    .line 191
    :cond_0
    const/16 v1, 0x4d

    aput-boolean v4, v0, v1

    .line 192
    iget-object v1, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/16 v2, 0x4e

    aput-boolean v4, v0, v2

    .line 193
    const-string v2, "city"

    iget-object v3, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->activity:Lcz/martykan/forecastie/activities/MainActivity;

    iget-object v3, v3, Lcz/martykan/forecastie/activities/MainActivity;->recentCity:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x4f

    aput-boolean v4, v0, v2

    .line 194
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 195
    iget-object v1, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->activity:Lcz/martykan/forecastie/activities/MainActivity;

    const-string v2, ""

    iput-object v2, v1, Lcz/martykan/forecastie/activities/MainActivity;->recentCity:Ljava/lang/String;

    const/16 v1, 0x50

    aput-boolean v4, v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcz/martykan/forecastie/tasks/TaskOutput;
    .locals 13

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v12, 0x1

    invoke-static {}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->$jacocoInit()[Z

    move-result-object v8

    .line 54
    new-instance v4, Lcz/martykan/forecastie/tasks/TaskOutput;

    invoke-direct {v4}, Lcz/martykan/forecastie/tasks/TaskOutput;-><init>()V

    .line 56
    .local v4, "output":Lcz/martykan/forecastie/tasks/TaskOutput;
    const-string v5, ""

    .line 57
    .local v5, "response":Ljava/lang/String;
    new-array v0, v10, [Ljava/lang/String;

    .line 59
    .local v0, "coords":[Ljava/lang/String;
    if-nez p1, :cond_0

    const/16 v7, 0x8

    aput-boolean v12, v8, v7

    .line 72
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    const/16 v7, 0xe

    aput-boolean v12, v8, v7

    .line 112
    :goto_1
    sget-object v7, Lcz/martykan/forecastie/tasks/TaskResult;->SUCCESS:Lcz/martykan/forecastie/tasks/TaskResult;

    iget-object v9, v4, Lcz/martykan/forecastie/tasks/TaskOutput;->taskResult:Lcz/martykan/forecastie/tasks/TaskResult;

    invoke-virtual {v7, v9}, Lcz/martykan/forecastie/tasks/TaskResult;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const/16 v7, 0x24

    aput-boolean v12, v8, v7

    .line 122
    :goto_2
    const/16 v7, 0x2b

    aput-boolean v12, v8, v7

    return-object v4

    .line 59
    :cond_0
    array-length v7, p1

    if-gtz v7, :cond_1

    const/16 v7, 0x9

    aput-boolean v12, v8, v7

    goto :goto_0

    .line 60
    :cond_1
    aget-object v7, p1, v10

    const/16 v9, 0xa

    aput-boolean v12, v8, v9

    .line 61
    const-string v9, "cachedResponse"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 62
    aget-object v5, p1, v12

    .line 64
    sget-object v7, Lcz/martykan/forecastie/tasks/TaskResult;->SUCCESS:Lcz/martykan/forecastie/tasks/TaskResult;

    iput-object v7, v4, Lcz/martykan/forecastie/tasks/TaskOutput;->taskResult:Lcz/martykan/forecastie/tasks/TaskResult;

    const/16 v7, 0xb

    aput-boolean v12, v8, v7

    goto :goto_0

    .line 65
    :cond_2
    const-string v9, "coords"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const/16 v7, 0xc

    aput-boolean v12, v8, v7

    goto :goto_0

    .line 66
    :cond_3
    aget-object v1, p1, v12

    .line 67
    .local v1, "lat":Ljava/lang/String;
    aget-object v3, p1, v11

    .line 68
    .local v3, "lon":Ljava/lang/String;
    new-array v0, v11, [Ljava/lang/String;

    .end local v0    # "coords":[Ljava/lang/String;
    aput-object v1, v0, v10

    aput-object v3, v0, v12

    .restart local v0    # "coords":[Ljava/lang/String;
    const/16 v7, 0xd

    aput-boolean v12, v8, v7

    goto :goto_0

    .line 72
    .end local v1    # "lat":Ljava/lang/String;
    .end local v3    # "lon":Ljava/lang/String;
    :cond_4
    const/16 v7, 0xf

    const/4 v9, 0x1

    :try_start_0
    aput-boolean v9, v8, v7

    .line 74
    invoke-direct {p0, v0}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->provideURL([Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    const/16 v9, 0x10

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 75
    const-string v9, "URL"

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x11

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 76
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    const/16 v9, 0x12

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 77
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_6

    const/16 v9, 0x13

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 78
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v10, 0x14

    const/4 v11, 0x1

    aput-boolean v11, v8, v10

    .line 79
    new-instance v10, Ljava/io/BufferedReader;

    invoke-direct {v10, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 v9, 0x15

    const/4 v11, 0x1

    aput-boolean v11, v8, v9

    .line 81
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 82
    .local v6, "responseCode":I
    const/16 v9, 0x16

    const/4 v11, 0x1

    aput-boolean v11, v8, v9

    .line 83
    :goto_3
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_5

    const/16 v9, 0x17

    const/4 v11, 0x1

    aput-boolean v11, v8, v9

    .line 84
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x18

    const/4 v11, 0x1

    aput-boolean v11, v8, v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 104
    .end local v2    # "line":Ljava/lang/String;
    .end local v6    # "responseCode":I
    :catch_0
    move-exception v7

    const/16 v9, 0x21

    aput-boolean v12, v8, v9

    .line 105
    const-string v9, "IOException Data"

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x22

    aput-boolean v12, v8, v9

    .line 106
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 108
    sget-object v7, Lcz/martykan/forecastie/tasks/TaskResult;->IO_EXCEPTION:Lcz/martykan/forecastie/tasks/TaskResult;

    iput-object v7, v4, Lcz/martykan/forecastie/tasks/TaskOutput;->taskResult:Lcz/martykan/forecastie/tasks/TaskResult;

    const/16 v7, 0x23

    aput-boolean v12, v8, v7

    goto/16 :goto_1

    .line 86
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v6    # "responseCode":I
    :cond_5
    :try_start_1
    invoke-static {v10}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->close(Ljava/io/Closeable;)V

    const/16 v9, 0x19

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 87
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    const/16 v7, 0x1a

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 89
    const-string v7, "Task"

    const-string v9, "done successfully"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v7, Lcz/martykan/forecastie/tasks/TaskResult;->SUCCESS:Lcz/martykan/forecastie/tasks/TaskResult;

    iput-object v7, v4, Lcz/martykan/forecastie/tasks/TaskOutput;->taskResult:Lcz/martykan/forecastie/tasks/TaskResult;

    const/16 v7, 0x1b

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 92
    iget-object v7, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->activity:Lcz/martykan/forecastie/activities/MainActivity;

    iget-object v7, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->context:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-static {v7}, Lcz/martykan/forecastie/activities/MainActivity;->saveLastUpdateTime(Landroid/content/SharedPreferences;)J

    .line 93
    const/16 v7, 0x1c

    const/4 v9, 0x1

    aput-boolean v9, v8, v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    .end local v2    # "line":Ljava/lang/String;
    .end local v6    # "responseCode":I
    :goto_4
    const/16 v7, 0x20

    aput-boolean v12, v8, v7

    goto/16 :goto_1

    .line 94
    :cond_6
    :try_start_2
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v10, 0x1ad

    if-ne v9, v10, :cond_7

    const/16 v7, 0x1d

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 96
    const-string v7, "Task"

    const-string v9, "too many requests"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v7, Lcz/martykan/forecastie/tasks/TaskResult;->TOO_MANY_REQUESTS:Lcz/martykan/forecastie/tasks/TaskResult;

    iput-object v7, v4, Lcz/martykan/forecastie/tasks/TaskOutput;->taskResult:Lcz/martykan/forecastie/tasks/TaskResult;

    const/16 v7, 0x1e

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    goto :goto_4

    .line 101
    :cond_7
    const-string v9, "Task"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad response "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v7, Lcz/martykan/forecastie/tasks/TaskResult;->BAD_RESPONSE:Lcz/martykan/forecastie/tasks/TaskResult;

    iput-object v7, v4, Lcz/martykan/forecastie/tasks/TaskOutput;->taskResult:Lcz/martykan/forecastie/tasks/TaskResult;

    const/16 v7, 0x1f

    const/4 v9, 0x1

    aput-boolean v9, v8, v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 112
    :cond_8
    const/16 v7, 0x25

    aput-boolean v12, v8, v7

    .line 114
    invoke-virtual {p0, v5}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->parseResponse(Ljava/lang/String;)Lcz/martykan/forecastie/tasks/ParseResult;

    move-result-object v7

    const/16 v9, 0x26

    aput-boolean v12, v8, v9

    .line 115
    sget-object v9, Lcz/martykan/forecastie/tasks/ParseResult;->CITY_NOT_FOUND:Lcz/martykan/forecastie/tasks/ParseResult;

    invoke-virtual {v9, v7}, Lcz/martykan/forecastie/tasks/ParseResult;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const/16 v9, 0x27

    aput-boolean v12, v8, v9

    .line 119
    :goto_5
    iput-object v7, v4, Lcz/martykan/forecastie/tasks/TaskOutput;->parseResult:Lcz/martykan/forecastie/tasks/ParseResult;

    const/16 v7, 0x2a

    aput-boolean v12, v8, v7

    goto/16 :goto_2

    .line 115
    :cond_9
    const/16 v9, 0x28

    aput-boolean v12, v8, v9

    .line 117
    invoke-direct {p0}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->restorePreviousCity()V

    const/16 v9, 0x29

    aput-boolean v12, v8, v9

    goto :goto_5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->doInBackground([Ljava/lang/String;)Lcz/martykan/forecastie/tasks/TaskOutput;

    move-result-object v1

    const/16 v2, 0x5d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected abstract getAPIName()Ljava/lang/String;
.end method

.method protected final handleTaskOutput(Lcz/martykan/forecastie/tasks/TaskOutput;)V
    .locals 6

    .prologue
    const v3, 0x1020002

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->$jacocoInit()[Z

    move-result-object v0

    .line 138
    sget-object v1, Lcz/martykan/forecastie/tasks/GenericRequestTask$1;->$SwitchMap$cz$martykan$forecastie$tasks$TaskResult:[I

    iget-object v2, p1, Lcz/martykan/forecastie/tasks/TaskOutput;->taskResult:Lcz/martykan/forecastie/tasks/TaskResult;

    invoke-virtual {v2}, Lcz/martykan/forecastie/tasks/TaskResult;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x32

    aput-boolean v4, v0, v1

    .line 161
    :goto_0
    const/16 v1, 0x3c

    aput-boolean v4, v0, v1

    return-void

    .line 140
    :pswitch_0
    iget-object v1, p1, Lcz/martykan/forecastie/tasks/TaskOutput;->parseResult:Lcz/martykan/forecastie/tasks/ParseResult;

    const/16 v2, 0x33

    aput-boolean v4, v0, v2

    .line 141
    sget-object v2, Lcz/martykan/forecastie/tasks/ParseResult;->CITY_NOT_FOUND:Lcz/martykan/forecastie/tasks/ParseResult;

    invoke-virtual {v2, v1}, Lcz/martykan/forecastie/tasks/ParseResult;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x34

    aput-boolean v4, v0, v1

    .line 142
    iget-object v1, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->activity:Lcz/martykan/forecastie/activities/MainActivity;

    invoke-virtual {v1, v3}, Lcz/martykan/forecastie/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->context:Landroid/content/Context;

    const v3, 0x7f070028

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    const/16 v1, 0x35

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 143
    :cond_0
    sget-object v2, Lcz/martykan/forecastie/tasks/ParseResult;->JSON_EXCEPTION:Lcz/martykan/forecastie/tasks/ParseResult;

    invoke-virtual {v2, v1}, Lcz/martykan/forecastie/tasks/ParseResult;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x36

    aput-boolean v4, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x37

    aput-boolean v4, v0, v1

    .line 144
    iget-object v1, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->activity:Lcz/martykan/forecastie/activities/MainActivity;

    invoke-virtual {v1, v3}, Lcz/martykan/forecastie/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->context:Landroid/content/Context;

    const v3, 0x7f07002b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    const/16 v1, 0x38

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 149
    :pswitch_1
    iget-object v1, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->activity:Lcz/martykan/forecastie/activities/MainActivity;

    invoke-virtual {v1, v3}, Lcz/martykan/forecastie/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->context:Landroid/content/Context;

    const v3, 0x7f07002c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    .line 150
    const/16 v1, 0x39

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 153
    :pswitch_2
    iget-object v1, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->activity:Lcz/martykan/forecastie/activities/MainActivity;

    invoke-virtual {v1, v3}, Lcz/martykan/forecastie/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->context:Landroid/content/Context;

    const v3, 0x7f07002a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    .line 154
    const/16 v1, 0x3a

    aput-boolean v4, v0, v1

    goto/16 :goto_0

    .line 157
    :pswitch_3
    iget-object v1, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->activity:Lcz/martykan/forecastie/activities/MainActivity;

    invoke-virtual {v1, v3}, Lcz/martykan/forecastie/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->context:Landroid/content/Context;

    const v3, 0x7f070029

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    const/16 v1, 0x3b

    aput-boolean v4, v0, v1

    goto/16 :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPostExecute(Lcz/martykan/forecastie/tasks/TaskOutput;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->$jacocoInit()[Z

    move-result-object v0

    .line 127
    iget v1, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->loading:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x2c

    aput-boolean v2, v0, v1

    .line 130
    :goto_0
    invoke-direct {p0}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->decLoadingCounter()V

    const/16 v1, 0x2f

    aput-boolean v2, v0, v1

    .line 132
    invoke-virtual {p0}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->updateMainUI()V

    const/16 v1, 0x30

    aput-boolean v2, v0, v1

    .line 134
    invoke-virtual {p0, p1}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->handleTaskOutput(Lcz/martykan/forecastie/tasks/TaskOutput;)V

    .line 135
    const/16 v1, 0x31

    aput-boolean v2, v0, v1

    return-void

    .line 127
    :cond_0
    const/16 v1, 0x2d

    aput-boolean v2, v0, v1

    .line 128
    iget-object v1, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    const/16 v1, 0x2e

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    check-cast p1, Lcz/martykan/forecastie/tasks/TaskOutput;

    invoke-virtual {p0, p1}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->onPostExecute(Lcz/martykan/forecastie/tasks/TaskOutput;)V

    const/16 v1, 0x5c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    invoke-direct {p0}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->incLoadingCounter()V

    aput-boolean v4, v0, v4

    .line 45
    iget-object v1, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 50
    :goto_0
    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    return-void

    .line 45
    :cond_0
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 46
    iget-object v1, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->context:Landroid/content/Context;

    const v3, 0x7f07001e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    .line 47
    iget-object v1, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    .line 48
    iget-object v1, p0, Lcz/martykan/forecastie/tasks/GenericRequestTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method protected abstract parseResponse(Ljava/lang/String;)Lcz/martykan/forecastie/tasks/ParseResult;
.end method

.method protected updateMainUI()V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/tasks/GenericRequestTask;->$jacocoInit()[Z

    move-result-object v0

    .line 217
    const/16 v1, 0x5b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
