.class public Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;
.super Ljava/lang/Object;
.source "ClearErrorTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private til:Landroid/support/design/widget/TextInputLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x162fbc051dd89247L    # -4.980188523741383E201

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/support/design/widget/TextInputLayout;)V
    .locals 3
    .param p1    # Landroid/support/design/widget/TextInputLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;->til:Landroid/support/design/widget/TextInputLayout;

    .line 21
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;->til:Landroid/support/design/widget/TextInputLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 36
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;->til:Landroid/support/design/widget/TextInputLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 37
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    aput-boolean v1, v0, v1

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
