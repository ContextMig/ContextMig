.class public Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator_ViewBinding;
.super Ljava/lang/Object;
.source "RecordValidator_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private target:Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator_ViewBinding;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3d2461dc0806d22L

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator_ViewBinding"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator_ViewBinding;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator_ViewBinding;->$jacocoInit()[Z

    move-result-object v1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;

    .line 23
    const v0, 0x7f0900e1

    const-string/jumbo v2, "field \'tilTitle\'"

    const-class v3, Landroid/support/design/widget/TextInputLayout;

    invoke-static {p2, v0, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->tilTitle:Landroid/support/design/widget/TextInputLayout;

    .line 24
    const v0, 0x7f09005d

    const-string/jumbo v2, "field \'etTitle\'"

    const-class v3, Landroid/widget/EditText;

    invoke-static {p2, v0, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->etTitle:Landroid/widget/EditText;

    .line 25
    const v0, 0x7f0900db

    const-string/jumbo v2, "field \'tilCategory\'"

    const-class v3, Landroid/support/design/widget/TextInputLayout;

    invoke-static {p2, v0, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->tilCategory:Landroid/support/design/widget/TextInputLayout;

    .line 26
    const v0, 0x7f090056

    const-string/jumbo v2, "field \'etCategory\'"

    const-class v3, Landroid/widget/EditText;

    invoke-static {p2, v0, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->etCategory:Landroid/widget/EditText;

    .line 27
    const v0, 0x7f0900df

    const-string/jumbo v2, "field \'tilPrice\'"

    const-class v3, Landroid/support/design/widget/TextInputLayout;

    invoke-static {p2, v0, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->tilPrice:Landroid/support/design/widget/TextInputLayout;

    .line 28
    const v0, 0x7f09005b

    const-string/jumbo v2, "field \'etPrice\'"

    const-class v3, Landroid/widget/EditText;

    invoke-static {p2, v0, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->etPrice:Landroid/widget/EditText;

    .line 29
    const v0, 0x7f0900be

    const-string/jumbo v2, "field \'spinnerAccount\'"

    const-class v3, Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {p2, v0, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatSpinner;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->spinnerAccount:Landroid/support/v7/widget/AppCompatSpinner;

    .line 30
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

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator_ViewBinding;->$jacocoInit()[Z

    move-result-object v1

    .line 35
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;

    .line 36
    .local v0, "target":Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;
    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Bindings already cleared."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    aput-boolean v4, v1, v4

    throw v2

    .line 37
    :cond_0
    iput-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;

    .line 39
    iput-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->tilTitle:Landroid/support/design/widget/TextInputLayout;

    .line 40
    iput-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->etTitle:Landroid/widget/EditText;

    .line 41
    iput-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->tilCategory:Landroid/support/design/widget/TextInputLayout;

    .line 42
    iput-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->etCategory:Landroid/widget/EditText;

    .line 43
    iput-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->tilPrice:Landroid/support/design/widget/TextInputLayout;

    .line 44
    iput-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->etPrice:Landroid/widget/EditText;

    .line 45
    iput-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->spinnerAccount:Landroid/support/v7/widget/AppCompatSpinner;

    .line 46
    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    return-void
.end method
