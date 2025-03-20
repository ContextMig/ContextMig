.class Lcom/moonpi/swiftnotes/MainActivity$13$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moonpi/swiftnotes/MainActivity$13;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lcom/moonpi/swiftnotes/MainActivity$13;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/moonpi/swiftnotes/MainActivity$13$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x31e7bf589d8e31c8L    # 2.752630389033865E-68

    const-string v2, "com/moonpi/swiftnotes/MainActivity$13$1"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/moonpi/swiftnotes/MainActivity$13$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/moonpi/swiftnotes/MainActivity$13;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity$13$1;->$jacocoInit()[Z

    move-result-object v0

    .line 590
    iput-object p1, p0, Lcom/moonpi/swiftnotes/MainActivity$13$1;->this$1:Lcom/moonpi/swiftnotes/MainActivity$13;

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

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity$13$1;->$jacocoInit()[Z

    move-result-object v0

    .line 592
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->access$100()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 593
    aput-boolean v3, v0, v3

    return-void
.end method
