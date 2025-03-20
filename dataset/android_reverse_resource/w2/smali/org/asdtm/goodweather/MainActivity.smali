.class public Lorg/asdtm/goodweather/MainActivity;
.super Lorg/asdtm/goodweather/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final LOCATION_TIMEOUT_IN_MS:J = 0x7530L

.field private static PERMISSIONS_LOCATION:[Ljava/lang/String; = null

.field private static final REQUEST_LOCATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MainActivity"

.field public static mCitySearch:Lorg/asdtm/goodweather/model/CitySearch;

.field public static mWeather:Lorg/asdtm/goodweather/model/Weather;


# instance fields
.field private connectionDetector:Lorg/asdtm/goodweather/ConnectionDetector;

.field fabListener:Landroid/view/View$OnClickListener;

.field private isNetworkAvailable:Ljava/lang/Boolean;

.field private locationManager:Landroid/location/LocationManager;

.field private mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

.field private mCloudinessView:Landroid/widget/TextView;

.field private mDescriptionView:Landroid/widget/TextView;

.field private mHumidityView:Landroid/widget/TextView;

.field private mIconCloudiness:Ljava/lang/String;

.field private mIconCloudinessView:Landroid/widget/TextView;

.field private mIconHumidity:Ljava/lang/String;

.field private mIconHumidityView:Landroid/widget/TextView;

.field private mIconPressure:Ljava/lang/String;

.field private mIconPressureView:Landroid/widget/TextView;

.field private mIconSunrise:Ljava/lang/String;

.field private mIconSunriseView:Landroid/widget/TextView;

.field private mIconSunset:Ljava/lang/String;

.field private mIconSunsetView:Landroid/widget/TextView;

.field private mIconWeatherView:Landroid/widget/TextView;

.field private mIconWind:Ljava/lang/String;

.field private mIconWindView:Landroid/widget/TextView;

.field private mLastUpdateView:Landroid/widget/TextView;

.field private mLocationListener:Landroid/location/LocationListener;

.field private mPercentSign:Ljava/lang/String;

.field private mPrefWeather:Landroid/content/SharedPreferences;

.field private mPressureMeasurement:Ljava/lang/String;

.field private mPressureView:Landroid/widget/TextView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSpeedScale:Ljava/lang/String;

.field private mSunriseView:Landroid/widget/TextView;

.field private mSunsetView:Landroid/widget/TextView;

.field private mSwipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private mTemperatureView:Landroid/widget/TextView;

.field private mToolbarMenu:Landroid/view/Menu;

.field private mWeatherUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mWindSpeedView:Landroid/widget/TextView;

.field public storedContext:Landroid/content/Context;

.field private swipeRefreshListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/MainActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x68748d05072b41fcL    # 1.5001931061602214E195

    const-string v2, "org/asdtm/goodweather/MainActivity"

    const/16 v3, 0x112

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/MainActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 107
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v1, v2

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v1, v4

    sput-object v1, Lorg/asdtm/goodweather/MainActivity;->PERMISSIONS_LOCATION:[Ljava/lang/String;

    const/16 v1, 0x111

    aput-boolean v4, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    invoke-direct {p0}, Lorg/asdtm/goodweather/BaseActivity;-><init>()V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 252
    new-instance v1, Lorg/asdtm/goodweather/MainActivity$1;

    invoke-direct {v1, p0}, Lorg/asdtm/goodweather/MainActivity$1;-><init>(Lorg/asdtm/goodweather/MainActivity;)V

    iput-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->mLocationListener:Landroid/location/LocationListener;

    aput-boolean v2, v0, v2

    .line 314
    new-instance v1, Lorg/asdtm/goodweather/MainActivity$2;

    invoke-direct {v1, p0}, Lorg/asdtm/goodweather/MainActivity$2;-><init>(Lorg/asdtm/goodweather/MainActivity;)V

    iput-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->swipeRefreshListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 477
    new-instance v1, Lorg/asdtm/goodweather/MainActivity$4;

    invoke-direct {v1, p0}, Lorg/asdtm/goodweather/MainActivity$4;-><init>(Lorg/asdtm/goodweather/MainActivity;)V

    iput-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->fabListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lorg/asdtm/goodweather/MainActivity;)Landroid/app/ProgressDialog;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/16 v2, 0x100

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lorg/asdtm/goodweather/MainActivity;)Landroid/location/LocationListener;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->mLocationListener:Landroid/location/LocationListener;

    const/16 v2, 0x101

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$1000(Lorg/asdtm/goodweather/MainActivity;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->mSpeedScale:Ljava/lang/String;

    const/16 v2, 0x10f

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$1002(Lorg/asdtm/goodweather/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iput-object p1, p0, Lorg/asdtm/goodweather/MainActivity;->mSpeedScale:Ljava/lang/String;

    const/16 v1, 0x10d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method static synthetic access$1100(Lorg/asdtm/goodweather/MainActivity;)Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->mPrefWeather:Landroid/content/SharedPreferences;

    const/16 v2, 0x10e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    sget-object v1, Lorg/asdtm/goodweather/MainActivity;->PERMISSIONS_LOCATION:[Ljava/lang/String;

    const/16 v2, 0x110

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lorg/asdtm/goodweather/MainActivity;)Landroid/location/LocationManager;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->locationManager:Landroid/location/LocationManager;

    const/16 v2, 0x102

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300(Lorg/asdtm/goodweather/MainActivity;)Lorg/asdtm/goodweather/ConnectionDetector;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->connectionDetector:Lorg/asdtm/goodweather/ConnectionDetector;

    const/16 v2, 0x105

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$302(Lorg/asdtm/goodweather/MainActivity;Lorg/asdtm/goodweather/ConnectionDetector;)Lorg/asdtm/goodweather/ConnectionDetector;
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iput-object p1, p0, Lorg/asdtm/goodweather/MainActivity;->connectionDetector:Lorg/asdtm/goodweather/ConnectionDetector;

    const/16 v1, 0x103

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method static synthetic access$400(Lorg/asdtm/goodweather/MainActivity;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->isNetworkAvailable:Ljava/lang/Boolean;

    const/16 v2, 0x109

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$402(Lorg/asdtm/goodweather/MainActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iput-object p1, p0, Lorg/asdtm/goodweather/MainActivity;->isNetworkAvailable:Ljava/lang/Boolean;

    const/16 v1, 0x104

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method static synthetic access$500(Lorg/asdtm/goodweather/MainActivity;)Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/16 v2, 0x107

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$502(Lorg/asdtm/goodweather/MainActivity;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iput-object p1, p0, Lorg/asdtm/goodweather/MainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/16 v1, 0x106

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method static synthetic access$600(Lorg/asdtm/goodweather/MainActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lorg/asdtm/goodweather/MainActivity;->getAndWriteAddressFromGeocoder(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const/16 v1, 0x108

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$700(Lorg/asdtm/goodweather/MainActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->mSwipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/16 v2, 0x10a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$800(Lorg/asdtm/goodweather/MainActivity;Z)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    invoke-direct {p0, p1}, Lorg/asdtm/goodweather/MainActivity;->setUpdateButtonState(Z)V

    const/16 v1, 0x10b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$900(Lorg/asdtm/goodweather/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    invoke-direct {p0}, Lorg/asdtm/goodweather/MainActivity;->updateCurrentWeather()V

    const/16 v1, 0x10c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private detectLocation()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v4

    .line 518
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v3, "gps"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xb8

    aput-boolean v1, v4, v0

    .line 519
    :goto_0
    const/16 v0, 0xbc

    aput-boolean v1, v4, v0

    move v0, v2

    :goto_1
    const/16 v3, 0xbd

    aput-boolean v1, v4, v3

    .line 520
    iget-object v3, p0, Lorg/asdtm/goodweather/MainActivity;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v3}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v3

    const-string v5, "network"

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0xbe

    aput-boolean v1, v4, v3

    .line 521
    :goto_2
    const/16 v3, 0xc2

    aput-boolean v1, v4, v3

    move v3, v2

    :goto_3
    const/16 v5, 0xc3

    aput-boolean v1, v4, v5

    .line 523
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-direct {v5, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/asdtm/goodweather/MainActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/16 v5, 0xc4

    aput-boolean v1, v4, v5

    .line 524
    iget-object v5, p0, Lorg/asdtm/goodweather/MainActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v6, 0x7f080041

    invoke-virtual {p0, v6}, Lorg/asdtm/goodweather/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/16 v5, 0xc5

    aput-boolean v1, v4, v5

    .line 525
    iget-object v5, p0, Lorg/asdtm/goodweather/MainActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const/16 v5, 0xc6

    aput-boolean v1, v4, v5

    .line 526
    iget-object v5, p0, Lorg/asdtm/goodweather/MainActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/16 v5, 0xc7

    aput-boolean v1, v4, v5

    .line 527
    iget-object v5, p0, Lorg/asdtm/goodweather/MainActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const/16 v2, 0xc8

    aput-boolean v1, v4, v2

    .line 528
    iget-object v2, p0, Lorg/asdtm/goodweather/MainActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v5, -0x2

    const/high16 v6, 0x1040000

    invoke-virtual {p0, v6}, Lorg/asdtm/goodweather/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/asdtm/goodweather/MainActivity$5;

    invoke-direct {v7, p0}, Lorg/asdtm/goodweather/MainActivity$5;-><init>(Lorg/asdtm/goodweather/MainActivity;)V

    invoke-virtual {v2, v5, v6, v7}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 539
    if-eqz v3, :cond_4

    const/16 v0, 0xc9

    aput-boolean v1, v4, v0

    .line 540
    invoke-virtual {p0}, Lorg/asdtm/goodweather/MainActivity;->networkRequestLocation()V

    const/16 v0, 0xca

    aput-boolean v1, v4, v0

    .line 541
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    const/16 v0, 0xcb

    aput-boolean v1, v4, v0

    .line 550
    :goto_4
    const/16 v0, 0xd0

    aput-boolean v1, v4, v0

    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->locationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    const/16 v5, 0xb9

    aput-boolean v1, v4, v5

    .line 519
    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xba

    aput-boolean v1, v4, v0

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0xbb

    aput-boolean v1, v4, v0

    move v0, v1

    goto/16 :goto_1

    .line 520
    :cond_2
    iget-object v3, p0, Lorg/asdtm/goodweather/MainActivity;->locationManager:Landroid/location/LocationManager;

    const-string v5, "network"

    const/16 v6, 0xbf

    aput-boolean v1, v4, v6

    .line 521
    invoke-virtual {v3, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0xc0

    aput-boolean v1, v4, v3

    goto/16 :goto_2

    :cond_3
    const/16 v3, 0xc1

    aput-boolean v1, v4, v3

    move v3, v1

    goto/16 :goto_3

    .line 543
    :cond_4
    if-eqz v0, :cond_5

    const/16 v0, 0xcc

    aput-boolean v1, v4, v0

    .line 544
    invoke-virtual {p0}, Lorg/asdtm/goodweather/MainActivity;->gpsRequestLocation()V

    const/16 v0, 0xcd

    aput-boolean v1, v4, v0

    .line 545
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    const/16 v0, 0xce

    aput-boolean v1, v4, v0

    goto :goto_4

    .line 547
    :cond_5
    invoke-virtual {p0}, Lorg/asdtm/goodweather/MainActivity;->showSettingsAlert()V

    const/16 v0, 0xcf

    aput-boolean v1, v4, v0

    goto :goto_4
.end method

.method private getAndWriteAddressFromGeocoder(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v7

    .line 300
    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    const/16 v0, 0x50

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v7, v0

    .line 302
    const-string v0, ","

    const-string v2, "."

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x51

    const/4 v3, 0x1

    aput-boolean v3, v7, v2

    .line 303
    const-string v2, ","

    const-string v3, "."

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x52

    const/4 v3, 0x1

    aput-boolean v3, v7, v2

    .line 304
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v1

    const/16 v0, 0x53

    const/4 v2, 0x1

    aput-boolean v2, v7, v0

    .line 305
    if-nez v1, :cond_0

    const/16 v0, 0x54

    const/4 v1, 0x1

    aput-boolean v1, v7, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 311
    :goto_0
    const/16 v0, 0x59

    aput-boolean v8, v7, v0

    .line 312
    :goto_1
    const/16 v0, 0x5c

    aput-boolean v8, v7, v0

    return-void

    .line 305
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    const/16 v0, 0x55

    const/4 v1, 0x1

    aput-boolean v1, v7, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    :goto_2
    const/16 v1, 0x5a

    aput-boolean v8, v7, v1

    .line 310
    const-string v1, "MainActivity"

    const-string v2, "Unable to get address from latitude and longitude"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x5b

    aput-boolean v8, v7, v0

    goto :goto_1

    .line 305
    :cond_1
    const/16 v0, 0x56

    const/4 v2, 0x1

    :try_start_2
    aput-boolean v2, v7, v0

    .line 306
    const-string v2, "geo_city_name"

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v0, 0x57

    const/4 v2, 0x1

    aput-boolean v2, v7, v0

    .line 307
    const-string v2, "geo_country_name"

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v0, 0x58

    const/4 v1, 0x1

    aput-boolean v1, v7, v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 309
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private initializeTextView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 375
    invoke-virtual {p0}, Lorg/asdtm/goodweather/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "fonts/weathericons-regular-webfont.ttf"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    const/16 v0, 0x7b

    aput-boolean v5, v1, v0

    .line 377
    invoke-virtual {p0}, Lorg/asdtm/goodweather/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "fonts/Roboto-Thin.ttf"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    const/16 v0, 0x7c

    aput-boolean v5, v1, v0

    .line 379
    invoke-virtual {p0}, Lorg/asdtm/goodweather/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v4, "fonts/Roboto-Light.ttf"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    const/16 v0, 0x7d

    aput-boolean v5, v1, v0

    .line 382
    const v0, 0x7f0f00c6

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mIconWeatherView:Landroid/widget/TextView;

    const/16 v0, 0x7e

    aput-boolean v5, v1, v0

    .line 383
    const v0, 0x7f0f00c7

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mTemperatureView:Landroid/widget/TextView;

    const/16 v0, 0x7f

    aput-boolean v5, v1, v0

    .line 384
    const v0, 0x7f0f00c8

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mDescriptionView:Landroid/widget/TextView;

    const/16 v0, 0x80

    aput-boolean v5, v1, v0

    .line 385
    const v0, 0x7f0f00d1

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mPressureView:Landroid/widget/TextView;

    const/16 v0, 0x81

    aput-boolean v5, v1, v0

    .line 386
    const v0, 0x7f0f00cf

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mHumidityView:Landroid/widget/TextView;

    const/16 v0, 0x82

    aput-boolean v5, v1, v0

    .line 387
    const v0, 0x7f0f00cd

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mWindSpeedView:Landroid/widget/TextView;

    const/16 v0, 0x83

    aput-boolean v5, v1, v0

    .line 388
    const v0, 0x7f0f00d3

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mCloudinessView:Landroid/widget/TextView;

    const/16 v0, 0x84

    aput-boolean v5, v1, v0

    .line 389
    const v0, 0x7f0f00c9

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mLastUpdateView:Landroid/widget/TextView;

    const/16 v0, 0x85

    aput-boolean v5, v1, v0

    .line 390
    const v0, 0x7f0f00d5

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mSunriseView:Landroid/widget/TextView;

    const/16 v0, 0x86

    aput-boolean v5, v1, v0

    .line 391
    const v0, 0x7f0f00d7

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mSunsetView:Landroid/widget/TextView;

    const/16 v0, 0x87

    aput-boolean v5, v1, v0

    .line 392
    const v0, 0x7f0f00c4

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    const/16 v0, 0x88

    aput-boolean v5, v1, v0

    .line 394
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mIconWeatherView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v0, 0x89

    aput-boolean v5, v1, v0

    .line 395
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mTemperatureView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v0, 0x8a

    aput-boolean v5, v1, v0

    .line 396
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mWindSpeedView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v0, 0x8b

    aput-boolean v5, v1, v0

    .line 397
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mHumidityView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v0, 0x8c

    aput-boolean v5, v1, v0

    .line 398
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mPressureView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v0, 0x8d

    aput-boolean v5, v1, v0

    .line 399
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mCloudinessView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v0, 0x8e

    aput-boolean v5, v1, v0

    .line 400
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mSunriseView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v0, 0x8f

    aput-boolean v5, v1, v0

    .line 401
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mSunsetView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v0, 0x90

    aput-boolean v5, v1, v0

    .line 406
    const v0, 0x7f0f00cc

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mIconWindView:Landroid/widget/TextView;

    const/16 v0, 0x91

    aput-boolean v5, v1, v0

    .line 407
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mIconWindView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v0, 0x92

    aput-boolean v5, v1, v0

    .line 408
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mIconWindView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/asdtm/goodweather/MainActivity;->mIconWind:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x93

    aput-boolean v5, v1, v0

    .line 409
    const v0, 0x7f0f00ce

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mIconHumidityView:Landroid/widget/TextView;

    const/16 v0, 0x94

    aput-boolean v5, v1, v0

    .line 410
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mIconHumidityView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v0, 0x95

    aput-boolean v5, v1, v0

    .line 411
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mIconHumidityView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/asdtm/goodweather/MainActivity;->mIconHumidity:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x96

    aput-boolean v5, v1, v0

    .line 412
    const v0, 0x7f0f00d0

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mIconPressureView:Landroid/widget/TextView;

    const/16 v0, 0x97

    aput-boolean v5, v1, v0

    .line 413
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mIconPressureView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v0, 0x98

    aput-boolean v5, v1, v0

    .line 414
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mIconPressureView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/asdtm/goodweather/MainActivity;->mIconPressure:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x99

    aput-boolean v5, v1, v0

    .line 415
    const v0, 0x7f0f00d2

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mIconCloudinessView:Landroid/widget/TextView;

    const/16 v0, 0x9a

    aput-boolean v5, v1, v0

    .line 416
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mIconCloudinessView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v0, 0x9b

    aput-boolean v5, v1, v0

    .line 417
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mIconCloudinessView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/asdtm/goodweather/MainActivity;->mIconCloudiness:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x9c

    aput-boolean v5, v1, v0

    .line 418
    const v0, 0x7f0f00d4

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mIconSunriseView:Landroid/widget/TextView;

    const/16 v0, 0x9d

    aput-boolean v5, v1, v0

    .line 419
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mIconSunriseView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v0, 0x9e

    aput-boolean v5, v1, v0

    .line 420
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mIconSunriseView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/asdtm/goodweather/MainActivity;->mIconSunrise:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x9f

    aput-boolean v5, v1, v0

    .line 421
    const v0, 0x7f0f00d6

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mIconSunsetView:Landroid/widget/TextView;

    const/16 v0, 0xa0

    aput-boolean v5, v1, v0

    .line 422
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mIconSunsetView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v0, 0xa1

    aput-boolean v5, v1, v0

    .line 423
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity;->mIconSunsetView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/asdtm/goodweather/MainActivity;->mIconSunset:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    const/16 v0, 0xa2

    aput-boolean v5, v1, v0

    return-void
.end method

.method private initializeWeatherReceiver()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 452
    new-instance v1, Lorg/asdtm/goodweather/MainActivity$3;

    invoke-direct {v1, p0}, Lorg/asdtm/goodweather/MainActivity$3;-><init>(Lorg/asdtm/goodweather/MainActivity;)V

    iput-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->mWeatherUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 470
    const/16 v1, 0xb4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private preLoadWeather()V
    .locals 19

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 331
    invoke-static/range {p0 .. p0}, Lorg/asdtm/goodweather/utils/Utils;->getSpeedScale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/asdtm/goodweather/MainActivity;->mSpeedScale:Ljava/lang/String;

    .line 332
    const/16 v3, 0x5d

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 333
    invoke-static/range {p0 .. p0}, Lorg/asdtm/goodweather/utils/AppPreference;->getLastUpdateTimeMillis(Landroid/content/Context;)J

    move-result-wide v4

    const/16 v3, 0x5e

    const/4 v6, 0x1

    aput-boolean v6, v2, v3

    .line 332
    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lorg/asdtm/goodweather/utils/Utils;->setLastUpdateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5f

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    .line 335
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/asdtm/goodweather/MainActivity;->mPrefWeather:Landroid/content/SharedPreferences;

    const-string v5, "icon"

    const-string v6, "01d"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x60

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 336
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/asdtm/goodweather/MainActivity;->mPrefWeather:Landroid/content/SharedPreferences;

    const-string v6, "temperature"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    const/16 v6, 0x61

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 337
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/asdtm/goodweather/MainActivity;->mPrefWeather:Landroid/content/SharedPreferences;

    const-string v7, "description"

    const-string v8, "clear sky"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x62

    const/4 v8, 0x1

    aput-boolean v8, v2, v7

    .line 339
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/asdtm/goodweather/MainActivity;->mPrefWeather:Landroid/content/SharedPreferences;

    const-string v8, "humidity"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/16 v8, 0x63

    const/4 v9, 0x1

    aput-boolean v9, v2, v8

    .line 340
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/asdtm/goodweather/MainActivity;->mPrefWeather:Landroid/content/SharedPreferences;

    const-string v9, "pressure"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    const/16 v9, 0x64

    const/4 v10, 0x1

    aput-boolean v10, v2, v9

    .line 341
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/asdtm/goodweather/MainActivity;->mPrefWeather:Landroid/content/SharedPreferences;

    const-string v10, "wind_speed"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v9

    const/16 v10, 0x65

    const/4 v11, 0x1

    aput-boolean v11, v2, v10

    .line 342
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/asdtm/goodweather/MainActivity;->mPrefWeather:Landroid/content/SharedPreferences;

    const-string v11, "clouds"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    const/16 v11, 0x66

    const/4 v12, 0x1

    aput-boolean v12, v2, v11

    .line 343
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/asdtm/goodweather/MainActivity;->mPrefWeather:Landroid/content/SharedPreferences;

    const-string v12, "sunrise"

    const-wide/16 v14, -0x1

    invoke-interface {v11, v12, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    const/16 v11, 0x67

    const/4 v14, 0x1

    aput-boolean v14, v2, v11

    .line 344
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/asdtm/goodweather/MainActivity;->mPrefWeather:Landroid/content/SharedPreferences;

    const-string v14, "sunset"

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-interface {v11, v14, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    const/16 v11, 0x68

    const/16 v16, 0x1

    aput-boolean v16, v2, v11

    .line 346
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    const-string v16, "%.0f"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v11, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v11, 0x69

    const/16 v16, 0x1

    aput-boolean v16, v2, v11

    .line 347
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    const-string v16, "%.1f"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v11, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x6a

    const/16 v16, 0x1

    aput-boolean v16, v2, v11

    .line 348
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    const-string v16, "%.1f"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v11, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/16 v11, 0x6b

    const/16 v16, 0x1

    aput-boolean v16, v2, v11

    .line 349
    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lorg/asdtm/goodweather/utils/Utils;->unixTimeToFormatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x6c

    const/4 v13, 0x1

    aput-boolean v13, v2, v12

    .line 350
    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lorg/asdtm/goodweather/utils/Utils;->unixTimeToFormatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x6d

    const/4 v14, 0x1

    aput-boolean v14, v2, v13

    .line 352
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/asdtm/goodweather/MainActivity;->mIconWeatherView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lorg/asdtm/goodweather/utils/Utils;->getStrIcon(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x6e

    const/4 v13, 0x1

    aput-boolean v13, v2, v4

    .line 353
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/asdtm/goodweather/MainActivity;->mTemperatureView:Landroid/widget/TextView;

    const v13, 0x7f0800aa

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lorg/asdtm/goodweather/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x6f

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    .line 354
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/asdtm/goodweather/MainActivity;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x70

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    .line 355
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/asdtm/goodweather/MainActivity;->mLastUpdateView:Landroid/widget/TextView;

    const v5, 0x7f080068

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v6, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/asdtm/goodweather/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/asdtm/goodweather/MainActivity;->mHumidityView:Landroid/widget/TextView;

    const v4, 0x7f080067

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v13, 0x71

    const/4 v14, 0x1

    aput-boolean v14, v2, v13

    .line 357
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/asdtm/goodweather/MainActivity;->mPercentSign:Ljava/lang/String;

    aput-object v7, v5, v6

    const/16 v6, 0x72

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 356
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/asdtm/goodweather/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x73

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/asdtm/goodweather/MainActivity;->mPressureView:Landroid/widget/TextView;

    const v4, 0x7f080070

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/asdtm/goodweather/MainActivity;->mPressureMeasurement:Ljava/lang/String;

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/asdtm/goodweather/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x74

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 362
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/asdtm/goodweather/MainActivity;->mWindSpeedView:Landroid/widget/TextView;

    const v4, 0x7f080077

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/asdtm/goodweather/MainActivity;->mSpeedScale:Ljava/lang/String;

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/asdtm/goodweather/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/asdtm/goodweather/MainActivity;->mCloudinessView:Landroid/widget/TextView;

    const v4, 0x7f080062

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0x75

    const/4 v8, 0x1

    aput-boolean v8, v2, v7

    .line 364
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/asdtm/goodweather/MainActivity;->mPercentSign:Ljava/lang/String;

    aput-object v7, v5, v6

    const/16 v6, 0x76

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 363
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/asdtm/goodweather/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x77

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 366
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/asdtm/goodweather/MainActivity;->mSunriseView:Landroid/widget/TextView;

    const v4, 0x7f080073

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/asdtm/goodweather/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x78

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 367
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/asdtm/goodweather/MainActivity;->mSunsetView:Landroid/widget/TextView;

    const v4, 0x7f080074

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v12, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/asdtm/goodweather/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x79

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 368
    invoke-static/range {p0 .. p0}, Lorg/asdtm/goodweather/utils/Utils;->getCityAndCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/asdtm/goodweather/MainActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 369
    const/16 v3, 0x7a

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    return-void
.end method

.method private requestLocation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 627
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 628
    .local v0, "fineLocationPermission":I
    if-eqz v0, :cond_0

    const/16 v2, 0xe5

    aput-boolean v3, v1, v2

    .line 629
    invoke-direct {p0}, Lorg/asdtm/goodweather/MainActivity;->requestLocationPermission()V

    const/16 v2, 0xe6

    aput-boolean v3, v1, v2

    .line 633
    :goto_0
    const/16 v2, 0xe8

    aput-boolean v3, v1, v2

    return-void

    .line 631
    :cond_0
    invoke-direct {p0}, Lorg/asdtm/goodweather/MainActivity;->detectLocation()V

    const/16 v2, 0xe7

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method private requestLocationPermission()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 636
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe9

    aput-boolean v5, v0, v1

    .line 637
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08006c

    invoke-static {v1, v2, v3}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lorg/asdtm/goodweather/MainActivity$10;

    invoke-direct {v3, p0}, Lorg/asdtm/goodweather/MainActivity$10;-><init>(Lorg/asdtm/goodweather/MainActivity;)V

    const/16 v4, 0xea

    aput-boolean v5, v0, v4

    .line 638
    invoke-virtual {v1, v2, v3}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    const/16 v2, 0xeb

    aput-boolean v5, v0, v2

    .line 643
    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    const/16 v1, 0xec

    aput-boolean v5, v0, v1

    .line 647
    :goto_0
    const/16 v1, 0xee

    aput-boolean v5, v0, v1

    return-void

    .line 645
    :cond_0
    sget-object v1, Lorg/asdtm/goodweather/MainActivity;->PERMISSIONS_LOCATION:[Ljava/lang/String;

    invoke-static {p0, v1, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const/16 v1, 0xed

    aput-boolean v5, v0, v1

    goto :goto_0
.end method

.method private setUpdateButtonState(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 438
    iget-object v2, p0, Lorg/asdtm/goodweather/MainActivity;->mToolbarMenu:Landroid/view/Menu;

    if-nez v2, :cond_0

    const/16 v2, 0xab

    aput-boolean v4, v1, v2

    .line 449
    .local v0, "progressUpdate":Landroid/widget/ProgressBar;
    :goto_0
    const/16 v2, 0xb3

    aput-boolean v4, v1, v2

    return-void

    .line 438
    .end local v0    # "progressUpdate":Landroid/widget/ProgressBar;
    :cond_0
    const/16 v2, 0xac

    aput-boolean v4, v1, v2

    .line 439
    iget-object v2, p0, Lorg/asdtm/goodweather/MainActivity;->mToolbarMenu:Landroid/view/Menu;

    const v3, 0x7f0f0101

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0xad

    aput-boolean v4, v1, v3

    .line 440
    const v3, 0x7f0f00ca

    invoke-virtual {p0, v3}, Lorg/asdtm/goodweather/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 441
    .restart local v0    # "progressUpdate":Landroid/widget/ProgressBar;
    if-eqz p1, :cond_1

    const/16 v3, 0xae

    aput-boolean v4, v1, v3

    .line 442
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v2, 0xaf

    aput-boolean v4, v1, v2

    .line 443
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/16 v2, 0xb0

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 445
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/16 v3, 0xb1

    aput-boolean v4, v1, v3

    .line 446
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v2, 0xb2

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method private updateCurrentWeather()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 152
    sget-object v3, Lorg/asdtm/goodweather/MainActivity;->mWeather:Lorg/asdtm/goodweather/model/Weather;

    invoke-static {p0, v3}, Lorg/asdtm/goodweather/utils/AppPreference;->saveWeather(Landroid/content/Context;Lorg/asdtm/goodweather/model/Weather;)V

    const/16 v3, 0x17

    aput-boolean v12, v2, v3

    .line 153
    const-string v3, "config"

    invoke-virtual {p0, v3, v13}, Lorg/asdtm/goodweather/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lorg/asdtm/goodweather/MainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/16 v3, 0x18

    aput-boolean v12, v2, v3

    .line 155
    iget-object v3, p0, Lorg/asdtm/goodweather/MainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/16 v4, 0x19

    aput-boolean v12, v2, v4

    .line 157
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/Utils;->getSpeedScale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/asdtm/goodweather/MainActivity;->mSpeedScale:Ljava/lang/String;

    const/16 v4, 0x1a

    aput-boolean v12, v2, v4

    .line 158
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%.0f"

    new-array v6, v12, [Ljava/lang/Object;

    sget-object v7, Lorg/asdtm/goodweather/MainActivity;->mWeather:Lorg/asdtm/goodweather/model/Weather;

    iget-object v7, v7, Lorg/asdtm/goodweather/model/Weather;->temperature:Lorg/asdtm/goodweather/model/Weather$Temperature;

    const/16 v8, 0x1b

    aput-boolean v12, v2, v8

    .line 159
    invoke-virtual {v7}, Lorg/asdtm/goodweather/model/Weather$Temperature;->getTemp()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v13

    const/16 v7, 0x1c

    aput-boolean v12, v2, v7

    .line 158
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1d

    aput-boolean v12, v2, v5

    .line 160
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "%.1f"

    new-array v7, v12, [Ljava/lang/Object;

    sget-object v8, Lorg/asdtm/goodweather/MainActivity;->mWeather:Lorg/asdtm/goodweather/model/Weather;

    iget-object v8, v8, Lorg/asdtm/goodweather/model/Weather;->currentCondition:Lorg/asdtm/goodweather/model/Weather$CurrentCondition;

    const/16 v9, 0x1e

    aput-boolean v12, v2, v9

    .line 161
    invoke-virtual {v8}, Lorg/asdtm/goodweather/model/Weather$CurrentCondition;->getPressure()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v13

    const/16 v8, 0x1f

    aput-boolean v12, v2, v8

    .line 160
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    aput-boolean v12, v2, v6

    .line 162
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "%.1f"

    new-array v8, v12, [Ljava/lang/Object;

    sget-object v9, Lorg/asdtm/goodweather/MainActivity;->mWeather:Lorg/asdtm/goodweather/model/Weather;

    iget-object v9, v9, Lorg/asdtm/goodweather/model/Weather;->wind:Lorg/asdtm/goodweather/model/Weather$Wind;

    invoke-virtual {v9}, Lorg/asdtm/goodweather/model/Weather$Wind;->getSpeed()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v13

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "wind":Ljava/lang/String;
    const/16 v6, 0x21

    aput-boolean v12, v2, v6

    .line 165
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/AppPreference;->saveLastUpdateTimeMillis(Landroid/content/Context;)J

    move-result-wide v6

    const/16 v8, 0x22

    aput-boolean v12, v2, v8

    .line 164
    invoke-static {p0, v6, v7}, Lorg/asdtm/goodweather/utils/Utils;->setLastUpdateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x23

    aput-boolean v12, v2, v7

    .line 166
    sget-object v7, Lorg/asdtm/goodweather/MainActivity;->mWeather:Lorg/asdtm/goodweather/model/Weather;

    iget-object v7, v7, Lorg/asdtm/goodweather/model/Weather;->sys:Lorg/asdtm/goodweather/model/Weather$Sys;

    invoke-virtual {v7}, Lorg/asdtm/goodweather/model/Weather$Sys;->getSunrise()J

    move-result-wide v8

    invoke-static {p0, v8, v9}, Lorg/asdtm/goodweather/utils/Utils;->unixTimeToFormatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x24

    aput-boolean v12, v2, v8

    .line 167
    sget-object v8, Lorg/asdtm/goodweather/MainActivity;->mWeather:Lorg/asdtm/goodweather/model/Weather;

    iget-object v8, v8, Lorg/asdtm/goodweather/model/Weather;->sys:Lorg/asdtm/goodweather/model/Weather$Sys;

    invoke-virtual {v8}, Lorg/asdtm/goodweather/model/Weather$Sys;->getSunset()J

    move-result-wide v8

    invoke-static {p0, v8, v9}, Lorg/asdtm/goodweather/utils/Utils;->unixTimeToFormatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "sunset":Ljava/lang/String;
    iget-object v8, p0, Lorg/asdtm/goodweather/MainActivity;->mIconWeatherView:Landroid/widget/TextView;

    sget-object v9, Lorg/asdtm/goodweather/MainActivity;->mWeather:Lorg/asdtm/goodweather/model/Weather;

    iget-object v9, v9, Lorg/asdtm/goodweather/model/Weather;->currentWeather:Lorg/asdtm/goodweather/model/Weather$CurrentWeather;

    const/16 v10, 0x25

    aput-boolean v12, v2, v10

    .line 170
    invoke-virtual {v9}, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;->getIdIcon()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lorg/asdtm/goodweather/utils/Utils;->getStrIcon(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x26

    aput-boolean v12, v2, v10

    .line 169
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v8, 0x27

    aput-boolean v12, v2, v8

    .line 171
    iget-object v8, p0, Lorg/asdtm/goodweather/MainActivity;->mTemperatureView:Landroid/widget/TextView;

    const v9, 0x7f0800aa

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v4, v10, v13

    invoke-virtual {p0, v9, v10}, Lorg/asdtm/goodweather/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x28

    aput-boolean v12, v2, v4

    .line 172
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/AppPreference;->hideDescription(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x29

    aput-boolean v12, v2, v4

    .line 173
    iget-object v4, p0, Lorg/asdtm/goodweather/MainActivity;->mDescriptionView:Landroid/widget/TextView;

    sget-object v8, Lorg/asdtm/goodweather/MainActivity;->mWeather:Lorg/asdtm/goodweather/model/Weather;

    iget-object v8, v8, Lorg/asdtm/goodweather/model/Weather;->currentWeather:Lorg/asdtm/goodweather/model/Weather$CurrentWeather;

    invoke-virtual {v8}, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x2a

    aput-boolean v12, v2, v4

    .line 176
    :goto_0
    iget-object v4, p0, Lorg/asdtm/goodweather/MainActivity;->mHumidityView:Landroid/widget/TextView;

    const v8, 0x7f080067

    new-array v9, v14, [Ljava/lang/Object;

    sget-object v10, Lorg/asdtm/goodweather/MainActivity;->mWeather:Lorg/asdtm/goodweather/model/Weather;

    iget-object v10, v10, Lorg/asdtm/goodweather/model/Weather;->currentCondition:Lorg/asdtm/goodweather/model/Weather$CurrentCondition;

    const/16 v11, 0x2c

    aput-boolean v12, v2, v11

    .line 177
    invoke-virtual {v10}, Lorg/asdtm/goodweather/model/Weather$CurrentCondition;->getHumidity()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    iget-object v10, p0, Lorg/asdtm/goodweather/MainActivity;->mPercentSign:Ljava/lang/String;

    aput-object v10, v9, v12

    const/16 v10, 0x2d

    aput-boolean v12, v2, v10

    .line 176
    invoke-virtual {p0, v8, v9}, Lorg/asdtm/goodweather/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x2e

    aput-boolean v12, v2, v4

    .line 179
    iget-object v4, p0, Lorg/asdtm/goodweather/MainActivity;->mPressureView:Landroid/widget/TextView;

    const v8, 0x7f080070

    new-array v9, v14, [Ljava/lang/Object;

    aput-object v5, v9, v13

    iget-object v5, p0, Lorg/asdtm/goodweather/MainActivity;->mPressureMeasurement:Ljava/lang/String;

    aput-object v5, v9, v12

    invoke-virtual {p0, v8, v9}, Lorg/asdtm/goodweather/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x2f

    aput-boolean v12, v2, v4

    .line 181
    iget-object v4, p0, Lorg/asdtm/goodweather/MainActivity;->mWindSpeedView:Landroid/widget/TextView;

    const v5, 0x7f080077

    new-array v8, v14, [Ljava/lang/Object;

    aput-object v1, v8, v13

    iget-object v9, p0, Lorg/asdtm/goodweather/MainActivity;->mSpeedScale:Ljava/lang/String;

    aput-object v9, v8, v12

    invoke-virtual {p0, v5, v8}, Lorg/asdtm/goodweather/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v4, p0, Lorg/asdtm/goodweather/MainActivity;->mCloudinessView:Landroid/widget/TextView;

    const v5, 0x7f080062

    new-array v8, v14, [Ljava/lang/Object;

    sget-object v9, Lorg/asdtm/goodweather/MainActivity;->mWeather:Lorg/asdtm/goodweather/model/Weather;

    iget-object v9, v9, Lorg/asdtm/goodweather/model/Weather;->cloud:Lorg/asdtm/goodweather/model/Weather$Cloud;

    const/16 v10, 0x30

    aput-boolean v12, v2, v10

    .line 183
    invoke-virtual {v9}, Lorg/asdtm/goodweather/model/Weather$Cloud;->getClouds()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v13

    iget-object v9, p0, Lorg/asdtm/goodweather/MainActivity;->mPercentSign:Ljava/lang/String;

    aput-object v9, v8, v12

    const/16 v9, 0x31

    aput-boolean v12, v2, v9

    .line 182
    invoke-virtual {p0, v5, v8}, Lorg/asdtm/goodweather/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x32

    aput-boolean v12, v2, v4

    .line 185
    iget-object v4, p0, Lorg/asdtm/goodweather/MainActivity;->mLastUpdateView:Landroid/widget/TextView;

    const v5, 0x7f080068

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v6, v8, v13

    invoke-virtual {p0, v5, v8}, Lorg/asdtm/goodweather/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x33

    aput-boolean v12, v2, v4

    .line 186
    iget-object v4, p0, Lorg/asdtm/goodweather/MainActivity;->mSunriseView:Landroid/widget/TextView;

    const v5, 0x7f080073

    new-array v6, v12, [Ljava/lang/Object;

    aput-object v7, v6, v13

    invoke-virtual {p0, v5, v6}, Lorg/asdtm/goodweather/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x34

    aput-boolean v12, v2, v4

    .line 187
    iget-object v4, p0, Lorg/asdtm/goodweather/MainActivity;->mSunsetView:Landroid/widget/TextView;

    const v5, 0x7f080074

    new-array v6, v12, [Ljava/lang/Object;

    aput-object v0, v6, v13

    invoke-virtual {p0, v5, v6}, Lorg/asdtm/goodweather/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x35

    aput-boolean v12, v2, v4

    .line 189
    const-string v4, "city"

    sget-object v5, Lorg/asdtm/goodweather/MainActivity;->mWeather:Lorg/asdtm/goodweather/model/Weather;

    iget-object v5, v5, Lorg/asdtm/goodweather/model/Weather;->location:Lorg/asdtm/goodweather/model/CitySearch;

    invoke-virtual {v5}, Lorg/asdtm/goodweather/model/CitySearch;->getCityName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 190
    const-string v4, "country_code"

    sget-object v5, Lorg/asdtm/goodweather/MainActivity;->mWeather:Lorg/asdtm/goodweather/model/Weather;

    iget-object v5, v5, Lorg/asdtm/goodweather/model/Weather;->location:Lorg/asdtm/goodweather/model/CitySearch;

    const/16 v6, 0x36

    aput-boolean v12, v2, v6

    .line 191
    invoke-virtual {v5}, Lorg/asdtm/goodweather/model/CitySearch;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x37

    aput-boolean v12, v2, v6

    .line 190
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v4, 0x38

    aput-boolean v12, v2, v4

    .line 192
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 193
    const/16 v3, 0x39

    aput-boolean v12, v2, v3

    return-void

    .line 175
    :cond_0
    iget-object v4, p0, Lorg/asdtm/goodweather/MainActivity;->mDescriptionView:Landroid/widget/TextView;

    const-string v8, " "

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x2b

    aput-boolean v12, v2, v4

    goto/16 :goto_0
.end method

.method private weatherConditionsIcons()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 427
    const v1, 0x7f08009f

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->mIconWind:Ljava/lang/String;

    const/16 v1, 0xa3

    aput-boolean v2, v0, v1

    .line 428
    const v1, 0x7f080094

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->mIconHumidity:Ljava/lang/String;

    const/16 v1, 0xa4

    aput-boolean v2, v0, v1

    .line 429
    const v1, 0x7f08008d

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->mIconPressure:Ljava/lang/String;

    const/16 v1, 0xa5

    aput-boolean v2, v0, v1

    .line 430
    const v1, 0x7f080091

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->mIconCloudiness:Ljava/lang/String;

    const/16 v1, 0xa6

    aput-boolean v2, v0, v1

    .line 431
    const v1, 0x7f0800a8

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->mPercentSign:Ljava/lang/String;

    const/16 v1, 0xa7

    aput-boolean v2, v0, v1

    .line 432
    const v1, 0x7f080040

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->mPressureMeasurement:Ljava/lang/String;

    const/16 v1, 0xa8

    aput-boolean v2, v0, v1

    .line 433
    const v1, 0x7f08009b

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->mIconSunrise:Ljava/lang/String;

    const/16 v1, 0xa9

    aput-boolean v2, v0, v1

    .line 434
    const v1, 0x7f08009c

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->mIconSunset:Ljava/lang/String;

    .line 435
    const/16 v1, 0xaa

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public gpsRequestLocation()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 579
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd7

    aput-boolean v6, v0, v1

    .line 598
    :goto_0
    const/16 v1, 0xdd

    aput-boolean v6, v0, v1

    return-void

    .line 579
    :cond_0
    const/16 v1, 0xd8

    aput-boolean v6, v0, v1

    .line 580
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/16 v2, 0xd9

    aput-boolean v6, v0, v2

    .line 581
    iget-object v2, p0, Lorg/asdtm/goodweather/MainActivity;->locationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    iget-object v4, p0, Lorg/asdtm/goodweather/MainActivity;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v2, v3, v4, v1}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    const/16 v2, 0xda

    aput-boolean v6, v0, v2

    .line 582
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 v1, 0xdb

    aput-boolean v6, v0, v1

    .line 583
    new-instance v1, Lorg/asdtm/goodweather/MainActivity$8;

    invoke-direct {v1, p0}, Lorg/asdtm/goodweather/MainActivity$8;-><init>(Lorg/asdtm/goodweather/MainActivity;)V

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v1, 0xdc

    aput-boolean v6, v0, v1

    goto :goto_0
.end method

.method public networkRequestLocation()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 601
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xde

    aput-boolean v6, v0, v1

    .line 624
    :goto_0
    const/16 v1, 0xe4

    aput-boolean v6, v0, v1

    return-void

    .line 601
    :cond_0
    const/16 v1, 0xdf

    aput-boolean v6, v0, v1

    .line 602
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/16 v2, 0xe0

    aput-boolean v6, v0, v2

    .line 603
    iget-object v2, p0, Lorg/asdtm/goodweather/MainActivity;->locationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    iget-object v4, p0, Lorg/asdtm/goodweather/MainActivity;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v2, v3, v4, v1}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    const/16 v2, 0xe1

    aput-boolean v6, v0, v2

    .line 604
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 v1, 0xe2

    aput-boolean v6, v0, v1

    .line 605
    new-instance v1, Lorg/asdtm/goodweather/MainActivity$9;

    invoke-direct {v1, p0}, Lorg/asdtm/goodweather/MainActivity$9;-><init>(Lorg/asdtm/goodweather/MainActivity;)V

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v1, 0xe3

    aput-boolean v6, v0, v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 114
    invoke-virtual {p0}, Lorg/asdtm/goodweather/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lorg/asdtm/goodweather/GoodWeatherApp;

    invoke-virtual {v1, p0}, Lorg/asdtm/goodweather/GoodWeatherApp;->applyTheme(Landroid/app/Activity;)V

    const/4 v1, 0x4

    aput-boolean v4, v2, v1

    .line 115
    invoke-super {p0, p1}, Lorg/asdtm/goodweather/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x5

    aput-boolean v4, v2, v1

    .line 116
    const v1, 0x7f04001d

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/MainActivity;->setContentView(I)V

    const/4 v1, 0x6

    aput-boolean v4, v2, v1

    .line 118
    new-instance v1, Lorg/asdtm/goodweather/model/Weather;

    invoke-direct {v1}, Lorg/asdtm/goodweather/model/Weather;-><init>()V

    sput-object v1, Lorg/asdtm/goodweather/MainActivity;->mWeather:Lorg/asdtm/goodweather/model/Weather;

    const/4 v1, 0x7

    aput-boolean v4, v2, v1

    .line 119
    new-instance v1, Lorg/asdtm/goodweather/model/CitySearch;

    invoke-direct {v1}, Lorg/asdtm/goodweather/model/CitySearch;-><init>()V

    sput-object v1, Lorg/asdtm/goodweather/MainActivity;->mCitySearch:Lorg/asdtm/goodweather/model/CitySearch;

    const/16 v1, 0x8

    aput-boolean v4, v2, v1

    .line 121
    invoke-direct {p0}, Lorg/asdtm/goodweather/MainActivity;->weatherConditionsIcons()V

    const/16 v1, 0x9

    aput-boolean v4, v2, v1

    .line 122
    invoke-direct {p0}, Lorg/asdtm/goodweather/MainActivity;->initializeTextView()V

    const/16 v1, 0xa

    aput-boolean v4, v2, v1

    .line 123
    invoke-direct {p0}, Lorg/asdtm/goodweather/MainActivity;->initializeWeatherReceiver()V

    const/16 v1, 0xb

    aput-boolean v4, v2, v1

    .line 125
    new-instance v1, Lorg/asdtm/goodweather/ConnectionDetector;

    invoke-direct {v1, p0}, Lorg/asdtm/goodweather/ConnectionDetector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->connectionDetector:Lorg/asdtm/goodweather/ConnectionDetector;

    const/16 v1, 0xc

    aput-boolean v4, v2, v1

    .line 126
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->locationManager:Landroid/location/LocationManager;

    const/16 v1, 0xd

    aput-boolean v4, v2, v1

    .line 128
    const-string v1, "weather_pref"

    invoke-virtual {p0, v1, v5}, Lorg/asdtm/goodweather/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->mPrefWeather:Landroid/content/SharedPreferences;

    const/16 v1, 0xe

    aput-boolean v4, v2, v1

    .line 129
    const-string v1, "config"

    invoke-virtual {p0, v1, v5}, Lorg/asdtm/goodweather/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/16 v1, 0xf

    aput-boolean v4, v2, v1

    .line 131
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/Utils;->getCityAndCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/MainActivity;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x10

    aput-boolean v4, v2, v1

    .line 136
    const v1, 0x7f0f00c3

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->mSwipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 137
    const/16 v1, 0x96

    const/16 v3, 0x11

    aput-boolean v4, v2, v3

    .line 138
    iget-object v3, p0, Lorg/asdtm/goodweather/MainActivity;->mSwipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v3, v5, v5, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    const/16 v1, 0x12

    aput-boolean v4, v2, v1

    .line 139
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->mSwipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    const/16 v1, 0x13

    aput-boolean v4, v2, v1

    .line 141
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->mSwipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object v3, p0, Lorg/asdtm/goodweather/MainActivity;->swipeRefreshListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    const/16 v1, 0x14

    aput-boolean v4, v2, v1

    .line 146
    const v1, 0x7f0f00cb

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    .line 147
    .local v0, "fab":Landroid/support/design/widget/FloatingActionButton;
    iput-object p0, p0, Lorg/asdtm/goodweather/MainActivity;->storedContext:Landroid/content/Context;

    const/16 v1, 0x15

    aput-boolean v4, v2, v1

    .line 148
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->fabListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const/16 v1, 0x16

    aput-boolean v4, v2, v1

    return-void

    .line 139
    :array_0
    .array-data 4
        0x7f0d004f
        0x7f0d004e
        0x7f0d004d
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 219
    iput-object p1, p0, Lorg/asdtm/goodweather/MainActivity;->mToolbarMenu:Landroid/view/Menu;

    const/16 v1, 0x42

    aput-boolean v3, v0, v1

    .line 220
    invoke-virtual {p0}, Lorg/asdtm/goodweather/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/16 v2, 0x43

    aput-boolean v3, v0, v2

    .line 221
    const/high16 v2, 0x7f100000

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 223
    const/16 v1, 0x44

    aput-boolean v3, v0, v1

    return v3
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 213
    invoke-super {p0}, Lorg/asdtm/goodweather/BaseActivity;->onDestroy()V

    const/16 v1, 0x40

    aput-boolean v3, v0, v1

    .line 214
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lorg/asdtm/goodweather/MainActivity;->mWeatherUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 215
    const/16 v1, 0x41

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 474
    iget-object v3, p0, Lorg/asdtm/goodweather/MainActivity;->mSwipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-nez p2, :cond_0

    const/16 v0, 0xb5

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 475
    const/16 v0, 0xb7

    aput-boolean v1, v2, v0

    return-void

    .line 474
    :cond_0
    const/4 v0, 0x0

    const/16 v4, 0xb6

    aput-boolean v1, v2, v4

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 228
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 249
    invoke-super {p0, p1}, Lorg/asdtm/goodweather/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/16 v3, 0x4f

    aput-boolean v0, v2, v3

    move v0, v1

    :goto_0
    return v0

    .line 230
    :pswitch_0
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->connectionDetector:Lorg/asdtm/goodweather/ConnectionDetector;

    invoke-virtual {v1}, Lorg/asdtm/goodweather/ConnectionDetector;->isNetworkAvailableAndConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x45

    aput-boolean v0, v2, v1

    .line 231
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lorg/asdtm/goodweather/service/CurrentWeatherService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/16 v1, 0x46

    aput-boolean v0, v2, v1

    .line 232
    invoke-direct {p0, v0}, Lorg/asdtm/goodweather/MainActivity;->setUpdateButtonState(Z)V

    const/16 v1, 0x47

    aput-boolean v0, v2, v1

    .line 239
    :goto_1
    const/16 v1, 0x4b

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 234
    :cond_0
    const v1, 0x7f08001c

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    const/16 v3, 0x48

    aput-boolean v0, v2, v3

    .line 236
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x49

    aput-boolean v0, v2, v1

    .line 237
    invoke-direct {p0, v4}, Lorg/asdtm/goodweather/MainActivity;->setUpdateButtonState(Z)V

    const/16 v1, 0x4a

    aput-boolean v0, v2, v1

    goto :goto_1

    .line 241
    :pswitch_1
    invoke-direct {p0}, Lorg/asdtm/goodweather/MainActivity;->requestLocation()V

    .line 242
    const/16 v1, 0x4c

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 244
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lorg/asdtm/goodweather/SearchActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x4d

    aput-boolean v0, v2, v3

    .line 245
    invoke-virtual {p0, v1, v0}, Lorg/asdtm/goodweather/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 246
    const/16 v1, 0x4e

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x7f0f0101
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 207
    invoke-super {p0}, Lorg/asdtm/goodweather/BaseActivity;->onPause()V

    const/16 v1, 0x3e

    aput-boolean v2, v0, v1

    .line 208
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v1, p0}, Landroid/support/design/widget/AppBarLayout;->removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 209
    const/16 v1, 0x3f

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v2, 0x1020002

    const/4 v4, -0x1

    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 651
    packed-switch p1, :pswitch_data_0

    .line 660
    invoke-super {p0, p1, p2, p3}, Lorg/asdtm/goodweather/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v1, 0xf2

    aput-boolean v3, v0, v1

    .line 663
    :goto_0
    const/16 v1, 0xf3

    aput-boolean v3, v0, v1

    return-void

    .line 653
    :pswitch_0
    invoke-static {p3}, Lorg/asdtm/goodweather/utils/PermissionUtil;->verifyPermissions([I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xef

    aput-boolean v3, v0, v1

    .line 654
    invoke-virtual {p0, v2}, Lorg/asdtm/goodweather/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08006a

    invoke-static {v1, v2, v4}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    const/16 v1, 0xf0

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 656
    :cond_0
    invoke-virtual {p0, v2}, Lorg/asdtm/goodweather/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08006d

    invoke-static {v1, v2, v4}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    .line 658
    const/16 v1, 0xf1

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 651
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 197
    invoke-super {p0}, Lorg/asdtm/goodweather/BaseActivity;->onResume()V

    const/16 v1, 0x3a

    aput-boolean v5, v0, v1

    .line 198
    invoke-direct {p0}, Lorg/asdtm/goodweather/MainActivity;->preLoadWeather()V

    const/16 v1, 0x3b

    aput-boolean v5, v0, v1

    .line 199
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v1, p0}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    const/16 v1, 0x3c

    aput-boolean v5, v0, v1

    .line 200
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lorg/asdtm/goodweather/MainActivity;->mWeatherUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "org.asdtm.goodweather.action.WEATHER_UPDATE_RESULT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 203
    const/16 v1, 0x3d

    aput-boolean v5, v0, v1

    return-void
.end method

.method protected onStop()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 666
    invoke-super {p0}, Lorg/asdtm/goodweather/BaseActivity;->onStop()V

    .line 668
    const-string v1, "jacoco"

    const/16 v3, 0xf4

    aput-boolean v9, v2, v3

    .line 671
    const-string v3, "StorageSt"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xf5

    aput-boolean v9, v2, v3

    .line 672
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "coverage.exec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xf6

    aput-boolean v9, v2, v4

    .line 673
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xf7

    const/4 v5, 0x1

    :try_start_0
    aput-boolean v5, v2, v3

    .line 675
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    const/16 v3, 0xf8

    const/4 v5, 0x1

    aput-boolean v5, v2, v3

    .line 676
    const-string v3, "com.vladium.emma.rt.RT"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 677
    .local v0, "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "dumpCoverageData"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const/16 v7, 0xf9

    const/4 v8, 0x1

    aput-boolean v8, v2, v7

    .line 678
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/16 v6, 0xfa

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 677
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/16 v5, 0xfb

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 680
    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xfc

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 681
    const-string v3, "generateCoverageReport: ok"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    const/16 v1, 0xff

    aput-boolean v9, v2, v1

    return-void

    .line 682
    :catch_0
    move-exception v1

    const/16 v3, 0xfd

    aput-boolean v9, v2, v3

    .line 683
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Is emma jar on classpath?"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0xfe

    aput-boolean v9, v2, v1

    throw v3
.end method

.method public showSettingsAlert()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 553
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v2, 0xd1

    aput-boolean v4, v0, v2

    .line 554
    const v2, 0x7f080086

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v2, 0xd2

    aput-boolean v4, v0, v2

    .line 555
    const v2, 0x7f080019

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v2, 0xd3

    aput-boolean v4, v0, v2

    .line 557
    const v2, 0x7f08001b

    new-instance v3, Lorg/asdtm/goodweather/MainActivity$6;

    invoke-direct {v3, p0}, Lorg/asdtm/goodweather/MainActivity$6;-><init>(Lorg/asdtm/goodweather/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v2, 0xd4

    aput-boolean v4, v0, v2

    .line 567
    const v2, 0x7f08001a

    new-instance v3, Lorg/asdtm/goodweather/MainActivity$7;

    invoke-direct {v3, p0}, Lorg/asdtm/goodweather/MainActivity$7;-><init>(Lorg/asdtm/goodweather/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v2, 0xd5

    aput-boolean v4, v0, v2

    .line 575
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 576
    const/16 v1, 0xd6

    aput-boolean v4, v0, v1

    return-void
.end method
