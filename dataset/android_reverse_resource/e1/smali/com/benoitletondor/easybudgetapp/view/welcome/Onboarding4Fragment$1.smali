.class Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding4Fragment$1;
.super Ljava/lang/Object;
.source "Onboarding4Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding4Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding4Fragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding4Fragment$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xa76b95adc3eebbfL

    const-string v2, "com/benoitletondor/easybudgetapp/view/welcome/Onboarding4Fragment$1"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding4Fragment$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding4Fragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding4Fragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 47
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding4Fragment$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding4Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding4Fragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding4Fragment$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding4Fragment;

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding4Fragment;->done()V

    .line 52
    aput-boolean v2, v0, v2

    return-void
.end method
