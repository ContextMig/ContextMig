.class public abstract Lcom/haringeymobile/ukweather/RefreshingActivity;
.super Lcom/haringeymobile/ukweather/ThemedActivity;
.source "RefreshingActivity.java"

# interfaces
.implements Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$OnJsonStringRetrievedListener;
.implements Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment$IconCacheRequestListener;
.implements Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$IconCacheRequestListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final WEATHER_INFORMATION_TYPE:Ljava/lang/String; = "weather info type"

.field public static final WEATHER_INFO_JSON_STRING:Ljava/lang/String; = "json string"


# instance fields
.field protected iconCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected workerFragment:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/RefreshingActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6d66e4f227358203L    # 1.0102168617726117E219

    const-string v2, "com/haringeymobile/ukweather/RefreshingActivity"

    const/16 v3, 0x2e

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/RefreshingActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/RefreshingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/ThemedActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getAlertDialogMessage(J)Ljava/lang/String;
    .locals 13
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/RefreshingActivity;->$jacocoInit()[Z

    move-result-object v7

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, p1

    .line 138
    .local v4, "weatherDataAge":J
    const-wide/32 v8, 0x36ee80

    div-long v8, v4, v8

    long-to-int v1, v8

    .line 139
    .local v1, "hours":I
    div-int/lit8 v0, v1, 0x18

    .line 140
    .local v0, "days":I
    rem-int/lit8 v1, v1, 0x18

    .line 141
    if-eqz v0, :cond_0

    const/16 v6, 0x1a

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    .line 145
    :goto_0
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/RefreshingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/16 v6, 0x1d

    const/4 v9, 0x1

    aput-boolean v9, v7, v6

    .line 146
    const/high16 v6, 0x7f0e0000

    invoke-virtual {v8, v6, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x1e

    const/4 v10, 0x1

    aput-boolean v10, v7, v9

    .line 147
    const v9, 0x7f0e0001

    invoke-virtual {v8, v9, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "hoursPlural":Ljava/lang/String;
    if-gtz v0, :cond_2

    const/16 v9, 0x1f

    const/4 v10, 0x1

    aput-boolean v10, v7, v9

    .line 153
    :goto_1
    if-lez v0, :cond_4

    const/16 v9, 0x25

    const/4 v10, 0x1

    aput-boolean v10, v7, v9

    move v3, v0

    .line 154
    .local v3, "number":I
    :goto_2
    if-lez v0, :cond_5

    const/16 v9, 0x27

    const/4 v10, 0x1

    aput-boolean v10, v7, v9

    move-object v2, v6

    .end local v2    # "hoursPlural":Ljava/lang/String;
    :goto_3
    const/16 v6, 0x29

    const/4 v9, 0x1

    aput-boolean v9, v7, v6

    .line 155
    const v6, 0x7f060080

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/16 v10, 0x2a

    const/4 v11, 0x1

    aput-boolean v11, v7, v10

    .line 156
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    const/16 v9, 0x2b

    const/4 v10, 0x1

    aput-boolean v10, v7, v9

    .line 155
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x2c

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    .end local v3    # "number":I
    :goto_4
    return-object v6

    .line 141
    :cond_0
    if-eqz v1, :cond_1

    const/16 v6, 0x1b

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    goto :goto_0

    .line 142
    :cond_1
    const/4 v1, 0x1

    const/16 v6, 0x1c

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    goto :goto_0

    .line 149
    .restart local v2    # "hoursPlural":Ljava/lang/String;
    :cond_2
    if-gtz v1, :cond_3

    const/16 v9, 0x20

    const/4 v10, 0x1

    aput-boolean v10, v7, v9

    goto :goto_1

    :cond_3
    const/16 v9, 0x21

    const/4 v10, 0x1

    aput-boolean v10, v7, v9

    .line 150
    const v9, 0x7f06007f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v11, 0x22

    const/4 v12, 0x1

    aput-boolean v12, v7, v11

    .line 151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    const/4 v6, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v6, 0x3

    aput-object v2, v9, v6

    const/16 v6, 0x23

    const/4 v10, 0x1

    aput-boolean v10, v7, v6

    .line 150
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x24

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    goto :goto_4

    .line 153
    :cond_4
    const/16 v9, 0x26

    const/4 v10, 0x1

    aput-boolean v10, v7, v9

    move v3, v1

    goto/16 :goto_2

    .line 154
    .restart local v3    # "number":I
    :cond_5
    const/16 v6, 0x28

    const/4 v9, 0x1

    aput-boolean v9, v7, v6

    goto/16 :goto_3
.end method

.method private setIconMemoryCache()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/RefreshingActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 49
    const/4 v3, 0x3

    aput-boolean v8, v2, v3

    .line 50
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/RefreshingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-static {v3}, Lcom/haringeymobile/ukweather/weather/IconCacheRetainFragment;->findOrCreateRetainFragment(Landroid/support/v4/app/FragmentManager;)Lcom/haringeymobile/ukweather/weather/IconCacheRetainFragment;

    move-result-object v1

    .line 51
    .local v1, "retainFragment":Lcom/haringeymobile/ukweather/weather/IconCacheRetainFragment;
    iget-object v3, v1, Lcom/haringeymobile/ukweather/weather/IconCacheRetainFragment;->iconCache:Landroid/support/v4/util/LruCache;

    iput-object v3, p0, Lcom/haringeymobile/ukweather/RefreshingActivity;->iconCache:Landroid/support/v4/util/LruCache;

    .line 52
    iget-object v3, p0, Lcom/haringeymobile/ukweather/RefreshingActivity;->iconCache:Landroid/support/v4/util/LruCache;

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    aput-boolean v8, v2, v3

    .line 68
    :goto_0
    iget-object v3, p0, Lcom/haringeymobile/ukweather/RefreshingActivity;->iconCache:Landroid/support/v4/util/LruCache;

    iput-object v3, v1, Lcom/haringeymobile/ukweather/weather/IconCacheRetainFragment;->iconCache:Landroid/support/v4/util/LruCache;

    .line 69
    const/16 v3, 0x8

    aput-boolean v8, v2, v3

    return-void

    .line 52
    :cond_0
    const/4 v3, 0x5

    aput-boolean v8, v2, v3

    .line 54
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    long-to-int v0, v4

    .line 56
    .local v0, "maxMemory":I
    div-int/lit8 v3, v0, 0x8

    const/4 v4, 0x6

    aput-boolean v8, v2, v4

    .line 58
    new-instance v4, Lcom/haringeymobile/ukweather/RefreshingActivity$1;

    invoke-direct {v4, p0, v3}, Lcom/haringeymobile/ukweather/RefreshingActivity$1;-><init>(Lcom/haringeymobile/ukweather/RefreshingActivity;I)V

    iput-object v4, p0, Lcom/haringeymobile/ukweather/RefreshingActivity;->iconCache:Landroid/support/v4/util/LruCache;

    const/4 v3, 0x7

    aput-boolean v8, v2, v3

    goto :goto_0
.end method


# virtual methods
.method protected abstract displayRetrievedData(Ljava/lang/String;Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)V
.end method

.method public getIconMemoryCache()Landroid/support/v4/util/LruCache;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/RefreshingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/haringeymobile/ukweather/RefreshingActivity;->iconCache:Landroid/support/v4/util/LruCache;

    const/16 v2, 0x2d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/RefreshingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    invoke-super {p0, p1}, Lcom/haringeymobile/ukweather/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v2, v0, v2

    .line 42
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/RefreshingActivity;->setIconMemoryCache()V

    .line 43
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onOldJsonStringRetrieved(Ljava/lang/String;Lcom/haringeymobile/ukweather/weather/WeatherInfoType;J)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/RefreshingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 105
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060042

    const/16 v3, 0x12

    aput-boolean v5, v0, v3

    .line 106
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f020084

    const/16 v3, 0x13

    aput-boolean v5, v0, v3

    .line 107
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x14

    aput-boolean v5, v0, v2

    .line 108
    invoke-direct {p0, p3, p4}, Lcom/haringeymobile/ukweather/RefreshingActivity;->getAlertDialogMessage(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/haringeymobile/ukweather/RefreshingActivity$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/haringeymobile/ukweather/RefreshingActivity$3;-><init>(Lcom/haringeymobile/ukweather/RefreshingActivity;Ljava/lang/String;Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)V

    const/16 v4, 0x15

    aput-boolean v5, v0, v4

    .line 109
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/haringeymobile/ukweather/RefreshingActivity$2;

    invoke-direct {v3, p0}, Lcom/haringeymobile/ukweather/RefreshingActivity$2;-><init>(Lcom/haringeymobile/ukweather/RefreshingActivity;)V

    const/16 v4, 0x16

    aput-boolean v5, v0, v4

    .line 117
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x17

    aput-boolean v5, v0, v2

    .line 124
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    const/16 v2, 0x18

    aput-boolean v5, v0, v2

    .line 125
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 126
    const/16 v1, 0x19

    aput-boolean v5, v0, v1

    return-void
.end method

.method public onRecentJsonStringRetrieved(Ljava/lang/String;Lcom/haringeymobile/ukweather/weather/WeatherInfoType;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/RefreshingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 74
    if-nez p3, :cond_0

    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    .line 77
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/haringeymobile/ukweather/RefreshingActivity;->displayRetrievedData(Ljava/lang/String;Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)V

    .line 78
    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    return-void

    .line 74
    :cond_0
    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/haringeymobile/ukweather/RefreshingActivity;->saveRetrievedData(Ljava/lang/String;Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)V

    const/16 v1, 0xb

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method protected saveRetrievedData(Ljava/lang/String;Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/RefreshingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 88
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/haringeymobile/ukweather/database/GeneralDatabaseService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0xd

    aput-boolean v3, v0, v2

    .line 89
    const-string v2, "com.haringeymobile.ukweather.update_weather_info_records"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0xe

    aput-boolean v3, v0, v2

    .line 90
    const-string v2, "json string"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0xf

    aput-boolean v3, v0, v2

    .line 91
    const-string v2, "weather info type"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v2, 0x10

    aput-boolean v3, v0, v2

    .line 92
    invoke-virtual {p0, v1}, Lcom/haringeymobile/ukweather/RefreshingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 93
    const/16 v1, 0x11

    aput-boolean v3, v0, v1

    return-void
.end method
