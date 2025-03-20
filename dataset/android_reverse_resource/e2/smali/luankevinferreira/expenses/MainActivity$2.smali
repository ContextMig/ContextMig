.class Lluankevinferreira/expenses/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lluankevinferreira/expenses/MainActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lluankevinferreira/expenses/MainActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lluankevinferreira/expenses/MainActivity$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6d43655670a8f387L    # 2.1396153033157192E218

    const-string v2, "luankevinferreira/expenses/MainActivity$2"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lluankevinferreira/expenses/MainActivity$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lluankevinferreira/expenses/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/MainActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 154
    iput-object p1, p0, Lluankevinferreira/expenses/MainActivity$2;->this$0:Lluankevinferreira/expenses/MainActivity;

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

    invoke-static {}, Lluankevinferreira/expenses/MainActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 157
    iget-object v1, p0, Lluankevinferreira/expenses/MainActivity$2;->this$0:Lluankevinferreira/expenses/MainActivity;

    invoke-static {v1}, Lluankevinferreira/expenses/MainActivity;->access$000(Lluankevinferreira/expenses/MainActivity;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    .line 158
    aput-boolean v3, v0, v3

    return-void
.end method
