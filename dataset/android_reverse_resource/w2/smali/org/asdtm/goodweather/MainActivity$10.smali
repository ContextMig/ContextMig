.class Lorg/asdtm/goodweather/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/asdtm/goodweather/MainActivity;->requestLocationPermission()V
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

    sget-object v0, Lorg/asdtm/goodweather/MainActivity$10;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6c5694abbac0cc7dL

    const-string v2, "org/asdtm/goodweather/MainActivity$10"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/MainActivity$10;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/asdtm/goodweather/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity$10;->$jacocoInit()[Z

    move-result-object v0

    .line 638
    iput-object p1, p0, Lorg/asdtm/goodweather/MainActivity$10;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity$10;->$jacocoInit()[Z

    move-result-object v0

    .line 641
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity$10;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity;->access$1200()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 642
    aput-boolean v4, v0, v4

    return-void
.end method
