.class Lluankevinferreira/expenses/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lluankevinferreira/expenses/MainActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lluankevinferreira/expenses/MainActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lluankevinferreira/expenses/MainActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4f4eb8491845e0c2L    # 1.0855460780701764E74

    const-string v2, "luankevinferreira/expenses/MainActivity$1"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lluankevinferreira/expenses/MainActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lluankevinferreira/expenses/MainActivity;Landroid/content/Intent;)V
    .locals 3

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/MainActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 134
    iput-object p1, p0, Lluankevinferreira/expenses/MainActivity$1;->this$0:Lluankevinferreira/expenses/MainActivity;

    iput-object p2, p0, Lluankevinferreira/expenses/MainActivity$1;->val$intent:Landroid/content/Intent;

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

    invoke-static {}, Lluankevinferreira/expenses/MainActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 137
    iget-object v1, p0, Lluankevinferreira/expenses/MainActivity$1;->this$0:Lluankevinferreira/expenses/MainActivity;

    invoke-static {v1}, Lluankevinferreira/expenses/MainActivity;->access$000(Lluankevinferreira/expenses/MainActivity;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    aput-boolean v4, v0, v4

    .line 138
    iget-object v1, p0, Lluankevinferreira/expenses/MainActivity$1;->this$0:Lluankevinferreira/expenses/MainActivity;

    iget-object v2, p0, Lluankevinferreira/expenses/MainActivity$1;->val$intent:Landroid/content/Intent;

    sget-object v3, Lluankevinferreira/expenses/enumeration/CodeIntentType;->REQUEST_NEW_EXPENSE:Lluankevinferreira/expenses/enumeration/CodeIntentType;

    invoke-virtual {v3}, Lluankevinferreira/expenses/enumeration/CodeIntentType;->getCode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lluankevinferreira/expenses/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 139
    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    return-void
.end method
