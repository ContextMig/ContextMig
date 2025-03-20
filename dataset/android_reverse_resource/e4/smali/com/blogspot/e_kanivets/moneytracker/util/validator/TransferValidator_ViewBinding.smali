.class public Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator_ViewBinding;
.super Ljava/lang/Object;
.source "TransferValidator_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private target:Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator_ViewBinding;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7ca273c1b50c764L

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator_ViewBinding"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator_ViewBinding;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator_ViewBinding;->$jacocoInit()[Z

    move-result-object v1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;

    .line 23
    const v0, 0x7f0900c0

    const-string/jumbo v2, "field \'spinnerFrom\'"

    const-class v3, Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {p2, v0, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatSpinner;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->spinnerFrom:Landroid/support/v7/widget/AppCompatSpinner;

    .line 24
    const v0, 0x7f0900c3

    const-string/jumbo v2, "field \'spinnerTo\'"

    const-class v3, Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {p2, v0, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatSpinner;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->spinnerTo:Landroid/support/v7/widget/AppCompatSpinner;

    .line 25
    const v0, 0x7f0900dc

    const-string/jumbo v2, "field \'tilFromAmount\'"

    const-class v3, Landroid/support/design/widget/TextInputLayout;

    invoke-static {p2, v0, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->tilFromAmount:Landroid/support/design/widget/TextInputLayout;

    .line 26
    const v0, 0x7f090057

    const-string/jumbo v2, "field \'etFromAmount\'"

    const-class v3, Landroid/widget/EditText;

    invoke-static {p2, v0, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->etFromAmount:Landroid/widget/EditText;

    .line 27
    const v0, 0x7f0900e2

    const-string/jumbo v2, "field \'tilToAmount\'"

    const-class v3, Landroid/support/design/widget/TextInputLayout;

    invoke-static {p2, v0, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->tilToAmount:Landroid/support/design/widget/TextInputLayout;

    .line 28
    const v0, 0x7f09005e

    const-string/jumbo v2, "field \'etToAmount\'"

    const-class v3, Landroid/widget/EditText;

    invoke-static {p2, v0, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->etToAmount:Landroid/widget/EditText;

    .line 29
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

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator_ViewBinding;->$jacocoInit()[Z

    move-result-object v1

    .line 34
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;

    .line 35
    .local v0, "target":Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;
    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Bindings already cleared."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    aput-boolean v4, v1, v4

    throw v2

    .line 36
    :cond_0
    iput-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;

    .line 38
    iput-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->spinnerFrom:Landroid/support/v7/widget/AppCompatSpinner;

    .line 39
    iput-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->spinnerTo:Landroid/support/v7/widget/AppCompatSpinner;

    .line 40
    iput-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->tilFromAmount:Landroid/support/design/widget/TextInputLayout;

    .line 41
    iput-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->etFromAmount:Landroid/widget/EditText;

    .line 42
    iput-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->tilToAmount:Landroid/support/design/widget/TextInputLayout;

    .line 43
    iput-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->etToAmount:Landroid/widget/EditText;

    .line 44
    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    return-void
.end method
