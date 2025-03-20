.class Lcz/martykan/forecastie/activities/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/martykan/forecastie/activities/MainActivity;->getCityByLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcz/martykan/forecastie/activities/MainActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/activities/MainActivity$4;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2f5aa5f0dafd701fL    # 1.404653334147159E-80

    const-string v2, "cz/martykan/forecastie/activities/MainActivity$4"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/activities/MainActivity$4;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcz/martykan/forecastie/activities/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity$4;->$jacocoInit()[Z

    move-result-object v0

    .line 712
    iput-object p1, p0, Lcz/martykan/forecastie/activities/MainActivity$4;->this$0:Lcz/martykan/forecastie/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity$4;->$jacocoInit()[Z

    move-result-object v1

    .line 716
    :try_start_0
    iget-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity$4;->this$0:Lcz/martykan/forecastie/activities/MainActivity;

    iget-object v0, v0, Lcz/martykan/forecastie/activities/MainActivity;->locationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcz/martykan/forecastie/activities/MainActivity$4;->this$0:Lcz/martykan/forecastie/activities/MainActivity;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    aput-boolean v3, v1, v3

    .line 720
    :goto_0
    const/4 v0, 0x4

    aput-boolean v3, v1, v0

    return-void

    .line 717
    :catch_0
    move-exception v0

    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    .line 718
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    const/4 v0, 0x3

    aput-boolean v3, v1, v0

    goto :goto_0
.end method
