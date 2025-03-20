.class public Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding;
.super Ljava/lang/Object;
.source "AppRateDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private target:Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;

.field private view2131296384:Landroid/view/View;

.field private view2131296473:Landroid/view/View;

.field private view2131296526:Landroid/view/View;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6115c80de75e7408L

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding;-><init>(Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;Landroid/view/View;)V

    .line 26
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;Landroid/view/View;)V
    .locals 5
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding;->$jacocoInit()[Z

    move-result-object v1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;

    .line 33
    const v2, 0x7f09010e

    const-string/jumbo v3, "method \'yes\'"

    invoke-static {p2, v2, v3}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "view":Landroid/view/View;
    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding;->view2131296526:Landroid/view/View;

    .line 35
    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding$1;

    invoke-direct {v2, p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding$1;-><init>(Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding;Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v2, 0x7f090080

    const-string/jumbo v3, "method \'maybe\'"

    invoke-static {p2, v2, v3}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding;->view2131296384:Landroid/view/View;

    .line 43
    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding$2;

    invoke-direct {v2, p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding$2;-><init>(Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding;Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v2, 0x7f0900d9

    const-string/jumbo v3, "method \'thanks\'"

    invoke-static {p2, v2, v3}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding;->view2131296473:Landroid/view/View;

    .line 51
    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding$3;

    invoke-direct {v2, p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding$3;-><init>(Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding;Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    aput-boolean v4, v1, v4

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding;->$jacocoInit()[Z

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    throw v1

    .line 63
    :cond_0
    iput-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;

    .line 66
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding;->view2131296526:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iput-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding;->view2131296526:Landroid/view/View;

    .line 68
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding;->view2131296384:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iput-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding;->view2131296384:Landroid/view/View;

    .line 70
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding;->view2131296473:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iput-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_ViewBinding;->view2131296473:Landroid/view/View;

    .line 72
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void
.end method
