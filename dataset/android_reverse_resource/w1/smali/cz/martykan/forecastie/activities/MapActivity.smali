.class public Lcz/martykan/forecastie/activities/MapActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MapActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private mBottomBar:Lcom/roughike/bottombar/BottomBar;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/activities/MapActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x70a19a1b2a2656c0L    # 3.497905632279126E234

    const-string v2, "cz/martykan/forecastie/activities/MapActivity"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/activities/MapActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MapActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MapActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 21
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    aput-boolean v6, v1, v6

    .line 22
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x2

    aput-boolean v6, v1, v0

    .line 23
    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/MapActivity;->setContentView(I)V

    const/4 v0, 0x3

    aput-boolean v6, v1, v0

    .line 25
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v3, 0x4

    aput-boolean v6, v1, v3

    .line 26
    const-string v3, "apiKey"

    invoke-virtual {p0}, Lcz/martykan/forecastie/activities/MapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07007a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x5

    aput-boolean v6, v1, v0

    .line 28
    const v0, 0x7f0e006e

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/MapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const/4 v4, 0x6

    aput-boolean v6, v1, v4

    .line 29
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v4, 0x7

    aput-boolean v6, v1, v4

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file:///android_asset/map.html?lat="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "latitude"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&lon="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "longitude"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&appid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-boolean v6, v1, v2

    .line 32
    invoke-static {p0, p1}, Lcom/roughike/bottombar/BottomBar;->attach(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/roughike/bottombar/BottomBar;

    move-result-object v2

    iput-object v2, p0, Lcz/martykan/forecastie/activities/MapActivity;->mBottomBar:Lcom/roughike/bottombar/BottomBar;

    const/16 v2, 0x9

    aput-boolean v6, v1, v2

    .line 33
    iget-object v2, p0, Lcz/martykan/forecastie/activities/MapActivity;->mBottomBar:Lcom/roughike/bottombar/BottomBar;

    const v3, 0x7f0f0001

    invoke-virtual {v2, v3}, Lcom/roughike/bottombar/BottomBar;->setItems(I)V

    const/16 v2, 0xa

    aput-boolean v6, v1, v2

    .line 34
    iget-object v2, p0, Lcz/martykan/forecastie/activities/MapActivity;->mBottomBar:Lcom/roughike/bottombar/BottomBar;

    new-instance v3, Lcz/martykan/forecastie/activities/MapActivity$1;

    invoke-direct {v3, p0, v0}, Lcz/martykan/forecastie/activities/MapActivity$1;-><init>(Lcz/martykan/forecastie/activities/MapActivity;Landroid/webkit/WebView;)V

    invoke-virtual {v2, v3}, Lcom/roughike/bottombar/BottomBar;->setOnMenuTabClickListener(Lcom/roughike/bottombar/OnMenuTabClickListener;)V

    .line 50
    const/16 v0, 0xb

    aput-boolean v6, v1, v0

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MapActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    .line 55
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MapActivity;->mBottomBar:Lcom/roughike/bottombar/BottomBar;

    invoke-virtual {v1, p1}, Lcom/roughike/bottombar/BottomBar;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 56
    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    return-void
.end method
