.class Lcom/haringeymobile/ukweather/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haringeymobile/ukweather/MainActivity;->handleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/haringeymobile/ukweather/MainActivity;

.field final synthetic val$rowId:J

.field final synthetic val$sqlOperation:Lcom/haringeymobile/ukweather/database/SqlOperation;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/MainActivity$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1a7b3063752d145bL    # -1.0794436931803861E181

    const-string v2, "com/haringeymobile/ukweather/MainActivity$2"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/MainActivity$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/haringeymobile/ukweather/MainActivity;Lcom/haringeymobile/ukweather/database/SqlOperation;J)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 146
    iput-object p1, p0, Lcom/haringeymobile/ukweather/MainActivity$2;->this$0:Lcom/haringeymobile/ukweather/MainActivity;

    iput-object p2, p0, Lcom/haringeymobile/ukweather/MainActivity$2;->val$sqlOperation:Lcom/haringeymobile/ukweather/database/SqlOperation;

    iput-wide p3, p0, Lcom/haringeymobile/ukweather/MainActivity$2;->val$rowId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/haringeymobile/ukweather/MainActivity$2;->val$sqlOperation:Lcom/haringeymobile/ukweather/database/SqlOperation;

    iget-wide v2, p0, Lcom/haringeymobile/ukweather/MainActivity$2;->val$rowId:J

    invoke-virtual {v1, v2, v3}, Lcom/haringeymobile/ukweather/database/SqlOperation;->setLastOverallQueryTimeToCurrentTime(J)V

    .line 151
    aput-boolean v4, v0, v4

    return-void
.end method
