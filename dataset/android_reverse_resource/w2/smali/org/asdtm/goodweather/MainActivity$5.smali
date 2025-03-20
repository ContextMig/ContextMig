.class Lorg/asdtm/goodweather/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/asdtm/goodweather/MainActivity;->detectLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lorg/asdtm/goodweather/MainActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/MainActivity$5;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x43bf2cb91c5f0637L    # -1.8242027282146093E-18

    const-string v2, "org/asdtm/goodweather/MainActivity$5"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/MainActivity$5;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/asdtm/goodweather/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity$5;->$jacocoInit()[Z

    move-result-object v0

    .line 528
    iput-object p1, p0, Lorg/asdtm/goodweather/MainActivity$5;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity$5;->$jacocoInit()[Z

    move-result-object v1

    .line 532
    :try_start_0
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity$5;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v0}, Lorg/asdtm/goodweather/MainActivity;->access$200(Lorg/asdtm/goodweather/MainActivity;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v2, p0, Lorg/asdtm/goodweather/MainActivity$5;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v2}, Lorg/asdtm/goodweather/MainActivity;->access$100(Lorg/asdtm/goodweather/MainActivity;)Landroid/location/LocationListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    aput-boolean v4, v1, v4

    .line 536
    :goto_0
    const/4 v0, 0x4

    aput-boolean v4, v1, v0

    return-void

    .line 533
    :catch_0
    move-exception v0

    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    .line 534
    const-string v2, "MainActivity"

    const-string v3, "Cancellation error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    goto :goto_0
.end method
