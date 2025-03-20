.class public Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity_ViewBinding;
.super Ljava/lang/Object;
.source "AboutActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private target:Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity_ViewBinding;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7cfb081fb86e6946L    # -4.103899926810765E-294

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/AboutActivity_ViewBinding"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity_ViewBinding;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity_ViewBinding;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity_ViewBinding;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity;Landroid/view/View;)V

    .line 20
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity;Landroid/view/View;)V
    .locals 5
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity_ViewBinding;->$jacocoInit()[Z

    move-result-object v1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity;

    .line 26
    const v0, 0x7f0900f0

    const-string/jumbo v2, "field \'tvAbout\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v0, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity;->tvAbout:Landroid/widget/TextView;

    .line 27
    aput-boolean v4, v1, v4

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity_ViewBinding;->$jacocoInit()[Z

    move-result-object v1

    .line 32
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity;

    .line 33
    .local v0, "target":Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity;
    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Bindings already cleared."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-boolean v4, v1, v3

    throw v2

    .line 34
    :cond_0
    iput-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity;

    .line 36
    iput-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity;->tvAbout:Landroid/widget/TextView;

    .line 37
    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    return-void
.end method
