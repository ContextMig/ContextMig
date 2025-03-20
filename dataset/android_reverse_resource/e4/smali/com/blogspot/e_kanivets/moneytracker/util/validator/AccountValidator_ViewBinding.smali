.class public Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator_ViewBinding;
.super Ljava/lang/Object;
.source "AccountValidator_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private target:Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator_ViewBinding;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x699074bfe085cbebL    # 3.1490735342417814E200

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator_ViewBinding"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator_ViewBinding;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator_ViewBinding;->$jacocoInit()[Z

    move-result-object v1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;

    .line 23
    const v0, 0x7f0900e1

    const-string/jumbo v2, "field \'tilTitle\'"

    const-class v3, Landroid/support/design/widget/TextInputLayout;

    invoke-static {p2, v0, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->tilTitle:Landroid/support/design/widget/TextInputLayout;

    .line 24
    const v0, 0x7f09005d

    const-string/jumbo v2, "field \'etTitle\'"

    const-class v3, Landroid/widget/EditText;

    invoke-static {p2, v0, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->etTitle:Landroid/widget/EditText;

    .line 25
    const v0, 0x7f0900de

    const-string/jumbo v2, "field \'tilInitSum\'"

    const-class v3, Landroid/support/design/widget/TextInputLayout;

    invoke-static {p2, v0, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->tilInitSum:Landroid/support/design/widget/TextInputLayout;

    .line 26
    const v0, 0x7f09005a

    const-string/jumbo v2, "field \'etInitSum\'"

    const-class v3, Landroid/widget/EditText;

    invoke-static {p2, v0, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->etInitSum:Landroid/widget/EditText;

    .line 27
    const v0, 0x7f0900bd

    const-string/jumbo v2, "field \'spinner\'"

    const-class v3, Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {p2, v0, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatSpinner;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->spinner:Landroid/support/v7/widget/AppCompatSpinner;

    .line 28
    const/4 v0, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator_ViewBinding;->$jacocoInit()[Z

    move-result-object v1

    .line 33
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;

    .line 34
    .local v0, "target":Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;
    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Bindings already cleared."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    aput-boolean v4, v1, v4

    throw v2

    .line 35
    :cond_0
    iput-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;

    .line 37
    iput-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->tilTitle:Landroid/support/design/widget/TextInputLayout;

    .line 38
    iput-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->etTitle:Landroid/widget/EditText;

    .line 39
    iput-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->tilInitSum:Landroid/support/design/widget/TextInputLayout;

    .line 40
    iput-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->etInitSum:Landroid/widget/EditText;

    .line 41
    iput-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->spinner:Landroid/support/v7/widget/AppCompatSpinner;

    .line 42
    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    return-void
.end method
