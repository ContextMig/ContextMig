.class Lme/writeily/widget/WidgetConfigure$2;
.super Ljava/lang/Object;
.source "WidgetConfigure.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/writeily/widget/WidgetConfigure;->onCreate(Landroid/os/Bundle;)V
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

    sget-object v0, Lme/writeily/widget/WidgetConfigure$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x462e19286e4089d1L    # 1.1923154391785419E30

    const-string v2, "me/writeily/widget/WidgetConfigure$2"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/widget/WidgetConfigure$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/widget/WidgetConfigure;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/widget/WidgetConfigure$2;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    iput-object p1, p0, Lme/writeily/widget/WidgetConfigure$2;->this$0:Lme/writeily/widget/WidgetConfigure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/widget/WidgetConfigure$2;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    iget-object v1, p0, Lme/writeily/widget/WidgetConfigure$2;->this$0:Lme/writeily/widget/WidgetConfigure;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lme/writeily/widget/WidgetConfigure;->setResult(I)V

    aput-boolean v3, v0, v3

    .line 55
    iget-object v1, p0, Lme/writeily/widget/WidgetConfigure$2;->this$0:Lme/writeily/widget/WidgetConfigure;

    invoke-virtual {v1}, Lme/writeily/widget/WidgetConfigure;->finish()V

    .line 56
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method
