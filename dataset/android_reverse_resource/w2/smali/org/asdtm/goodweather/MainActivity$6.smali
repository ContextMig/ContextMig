.class Lorg/asdtm/goodweather/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/asdtm/goodweather/MainActivity;->showSettingsAlert()V
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

    sget-object v0, Lorg/asdtm/goodweather/MainActivity$6;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3c98746351a7ffeeL    # -5.3019436164055184E16

    const-string v2, "org/asdtm/goodweather/MainActivity$6"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/MainActivity$6;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/asdtm/goodweather/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity$6;->$jacocoInit()[Z

    move-result-object v0

    .line 558
    iput-object p1, p0, Lorg/asdtm/goodweather/MainActivity$6;->this$0:Lorg/asdtm/goodweather/MainActivity;

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

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity$6;->$jacocoInit()[Z

    move-result-object v0

    .line 561
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-boolean v3, v0, v3

    .line 563
    iget-object v2, p0, Lorg/asdtm/goodweather/MainActivity$6;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-virtual {v2, v1}, Lorg/asdtm/goodweather/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 564
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method
