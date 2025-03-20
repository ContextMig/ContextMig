.class Lcz/martykan/forecastie/activities/MapActivity$1;
.super Ljava/lang/Object;
.source "MapActivity.java"

# interfaces
.implements Lcom/roughike/bottombar/OnMenuTabClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/martykan/forecastie/activities/MapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcz/martykan/forecastie/activities/MapActivity;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/activities/MapActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7d047a38de12fadL    # -8.378793688688254E270

    const-string v2, "cz/martykan/forecastie/activities/MapActivity$1"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/activities/MapActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcz/martykan/forecastie/activities/MapActivity;Landroid/webkit/WebView;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MapActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    iput-object p1, p0, Lcz/martykan/forecastie/activities/MapActivity$1;->this$0:Lcz/martykan/forecastie/activities/MapActivity;

    iput-object p2, p0, Lcz/martykan/forecastie/activities/MapActivity$1;->val$webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onMenuTabReSelected(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MapActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onMenuTabSelected(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MapActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    const v1, 0x7f0e00ba

    if-ne p1, v1, :cond_0

    aput-boolean v3, v0, v3

    .line 38
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MapActivity$1;->val$webView:Landroid/webkit/WebView;

    const-string v2, "javascript:map.removeLayer(windLayer);map.removeLayer(tempLayer);map.addLayer(rainLayer);"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 44
    :goto_0
    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    return-void

    .line 39
    :cond_0
    const v1, 0x7f0e00bb

    if-ne p1, v1, :cond_1

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 40
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MapActivity$1;->val$webView:Landroid/webkit/WebView;

    const-string v2, "javascript:map.removeLayer(rainLayer);map.removeLayer(tempLayer);map.addLayer(windLayer);"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 41
    :cond_1
    const v1, 0x7f0e00bc

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    .line 42
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MapActivity$1;->val$webView:Landroid/webkit/WebView;

    const-string v2, "javascript:map.removeLayer(windLayer);map.removeLayer(rainLayer);map.addLayer(tempLayer);"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
