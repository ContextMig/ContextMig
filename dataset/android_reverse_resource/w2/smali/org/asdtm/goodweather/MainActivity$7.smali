.class Lorg/asdtm/goodweather/MainActivity$7;
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

    sget-object v0, Lorg/asdtm/goodweather/MainActivity$7;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2f66e41e9a45c775L    # 2.4132242256882784E-80

    const-string v2, "org/asdtm/goodweather/MainActivity$7"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/MainActivity$7;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/asdtm/goodweather/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity$7;->$jacocoInit()[Z

    move-result-object v0

    .line 568
    iput-object p1, p0, Lorg/asdtm/goodweather/MainActivity$7;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity$7;->$jacocoInit()[Z

    move-result-object v0

    .line 571
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 572
    aput-boolean v1, v0, v1

    return-void
.end method
