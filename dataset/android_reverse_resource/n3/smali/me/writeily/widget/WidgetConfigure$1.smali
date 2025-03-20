.class Lme/writeily/widget/WidgetConfigure$1;
.super Landroid/content/BroadcastReceiver;
.source "WidgetConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/writeily/widget/WidgetConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/widget/WidgetConfigure;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/widget/WidgetConfigure$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x418e6641ac0e978dL    # -6.55671969924665E-8

    const-string v2, "me/writeily/widget/WidgetConfigure$1"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/widget/WidgetConfigure$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/widget/WidgetConfigure;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/widget/WidgetConfigure$1;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    iput-object p1, p0, Lme/writeily/widget/WidgetConfigure$1;->this$0:Lme/writeily/widget/WidgetConfigure;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/widget/WidgetConfigure$1;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "filesystem_select_folder_dialog_tag"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aput-boolean v3, v0, v3

    .line 29
    :goto_0
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    return-void

    .line 24
    :cond_0
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 25
    const-string v1, "filesystem_file_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    .line 26
    iget-object v2, p0, Lme/writeily/widget/WidgetConfigure$1;->this$0:Lme/writeily/widget/WidgetConfigure;

    invoke-virtual {v2, v1}, Lme/writeily/widget/WidgetConfigure;->complete(Ljava/lang/String;)V

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
