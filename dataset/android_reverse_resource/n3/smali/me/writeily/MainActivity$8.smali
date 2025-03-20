.class Lme/writeily/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/writeily/MainActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/MainActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/MainActivity$8;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6314cc9726ba3f0fL    # 1.9623832253970585E169

    const-string v2, "me/writeily/MainActivity$8"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/MainActivity$8;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/MainActivity$8;->$jacocoInit()[Z

    move-result-object v0

    .line 378
    iput-object p1, p0, Lme/writeily/MainActivity$8;->this$0:Lme/writeily/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/MainActivity$8;->$jacocoInit()[Z

    move-result-object v0

    .line 382
    iget-object v1, p0, Lme/writeily/MainActivity$8;->this$0:Lme/writeily/MainActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lme/writeily/MainActivity;->access$602(Lme/writeily/MainActivity;Z)Z

    .line 383
    aput-boolean v3, v0, v3

    return-void
.end method
