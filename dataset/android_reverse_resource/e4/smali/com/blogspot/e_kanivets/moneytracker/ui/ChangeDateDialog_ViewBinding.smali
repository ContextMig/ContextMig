.class public Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog_ViewBinding;
.super Ljava/lang/Object;
.source "ChangeDateDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private target:Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;

.field private view2131296294:Landroid/view/View;

.field private view2131296295:Landroid/view/View;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog_ViewBinding;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3678bc8307d3808L

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog_ViewBinding"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog_ViewBinding;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog_ViewBinding;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog_ViewBinding;-><init>(Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;Landroid/view/View;)V

    .line 25
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;Landroid/view/View;)V
    .locals 6
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog_ViewBinding;->$jacocoInit()[Z

    move-result-object v2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;

    .line 32
    const v1, 0x7f090045

    const-string/jumbo v3, "field \'datePicker\'"

    const-class v4, Landroid/widget/DatePicker;

    invoke-static {p2, v1, v3, v4}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/DatePicker;

    iput-object v1, p1, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;->datePicker:Landroid/widget/DatePicker;

    .line 33
    const v1, 0x7f090027

    const-string/jumbo v3, "method \'ok\'"

    invoke-static {p2, v1, v3}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "view":Landroid/view/View;
    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog_ViewBinding;->view2131296295:Landroid/view/View;

    .line 35
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog_ViewBinding$1;-><init>(Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog_ViewBinding;Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v1, 0x7f090026

    const-string/jumbo v3, "method \'cancel\'"

    invoke-static {p2, v1, v3}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog_ViewBinding;->view2131296294:Landroid/view/View;

    .line 43
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog_ViewBinding$2;-><init>(Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog_ViewBinding;Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    aput-boolean v5, v2, v5

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog_ViewBinding;->$jacocoInit()[Z

    move-result-object v1

    .line 54
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;

    .line 55
    .local v0, "target":Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;
    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Bindings already cleared."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-boolean v4, v1, v3

    throw v2

    .line 56
    :cond_0
    iput-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;

    .line 58
    iput-object v3, v0, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;->datePicker:Landroid/widget/DatePicker;

    .line 60
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog_ViewBinding;->view2131296295:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iput-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog_ViewBinding;->view2131296295:Landroid/view/View;

    .line 62
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog_ViewBinding;->view2131296294:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iput-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog_ViewBinding;->view2131296294:Landroid/view/View;

    .line 64
    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    return-void
.end method
