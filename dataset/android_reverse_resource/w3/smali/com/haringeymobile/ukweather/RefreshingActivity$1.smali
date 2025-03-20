.class Lcom/haringeymobile/ukweather/RefreshingActivity$1;
.super Landroid/support/v4/util/LruCache;
.source "RefreshingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haringeymobile/ukweather/RefreshingActivity;->setIconMemoryCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/haringeymobile/ukweather/RefreshingActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/RefreshingActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2e5abfea92b5ad13L    # -2.064117455651194E85

    const-string v2, "com/haringeymobile/ukweather/RefreshingActivity$1"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/RefreshingActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/haringeymobile/ukweather/RefreshingActivity;I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/RefreshingActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iput-object p1, p0, Lcom/haringeymobile/ukweather/RefreshingActivity$1;->this$0:Lcom/haringeymobile/ukweather/RefreshingActivity;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/RefreshingActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/haringeymobile/ukweather/RefreshingActivity$1;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/RefreshingActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 63
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    div-int/lit16 v1, v1, 0x400

    aput-boolean v2, v0, v2

    return v1
.end method
