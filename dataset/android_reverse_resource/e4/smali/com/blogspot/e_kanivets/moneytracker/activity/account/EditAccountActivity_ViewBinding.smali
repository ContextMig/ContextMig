.class public Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity_ViewBinding;
.super Ljava/lang/Object;
.source "EditAccountActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private target:Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;

.field private view2131296355:Landroid/view/View;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity_ViewBinding;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5333bae72f58ab05L    # -6.7763491183191406E-93

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity_ViewBinding"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity_ViewBinding;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity_ViewBinding;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity_ViewBinding;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;Landroid/view/View;)V

    .line 24
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;Landroid/view/View;)V
    .locals 6
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity_ViewBinding;->$jacocoInit()[Z

    move-result-object v2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;

    .line 31
    const v1, 0x7f0900e1

    const-string/jumbo v3, "field \'tilTitle\'"

    const-class v4, Landroid/support/design/widget/TextInputLayout;

    invoke-static {p2, v1, v3, v4}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TextInputLayout;

    iput-object v1, p1, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->tilTitle:Landroid/support/design/widget/TextInputLayout;

    .line 32
    const v1, 0x7f09005d

    const-string/jumbo v3, "field \'etTitle\'"

    const-class v4, Landroid/widget/EditText;

    invoke-static {p2, v1, v3, v4}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p1, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->etTitle:Landroid/widget/EditText;

    .line 33
    const v1, 0x7f090058

    const-string/jumbo v3, "field \'etGoal\'"

    const-class v4, Landroid/widget/EditText;

    invoke-static {p2, v1, v3, v4}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p1, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->etGoal:Landroid/widget/EditText;

    .line 34
    const v1, 0x7f090107

    const-string/jumbo v3, "field \'viewColor\'"

    invoke-static {p2, v1, v3}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->viewColor:Landroid/view/View;

    .line 35
    const v1, 0x7f090063

    const-string/jumbo v3, "method \'done\'"

    invoke-static {p2, v1, v3}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "view":Landroid/view/View;
    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity_ViewBinding;->view2131296355:Landroid/view/View;

    .line 37
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity_ViewBinding$1;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity_ViewBinding;Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
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

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity_ViewBinding;->$jacocoInit()[Z

    move-result-object v1

    .line 48
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;

    .line 49
    .local v0, "target":Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;
    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Bindings already cleared."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-boolean v4, v1, v3

    throw v2

    .line 50
    :cond_0
    iput-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;

    .line 52
    iput-object v3, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->tilTitle:Landroid/support/design/widget/TextInputLayout;

    .line 53
    iput-object v3, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->etTitle:Landroid/widget/EditText;

    .line 54
    iput-object v3, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->etGoal:Landroid/widget/EditText;

    .line 55
    iput-object v3, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->viewColor:Landroid/view/View;

    .line 57
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity_ViewBinding;->view2131296355:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iput-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity_ViewBinding;->view2131296355:Landroid/view/View;

    .line 59
    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    return-void
.end method
