.class public Lde/baumann/browser/View/SearchEngineListPreference;
.super Landroid/preference/ListPreference;
.source "SearchEngineListPreference.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lde/baumann/browser/View/SearchEngineListPreference;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lde/baumann/browser/View/SearchEngineListPreference;->showEditDialog()V

    return-void
.end method

.method static synthetic access$100(Lde/baumann/browser/View/SearchEngineListPreference;Landroid/view/View;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lde/baumann/browser/View/SearchEngineListPreference;->hideSoftInput(Landroid/view/View;)V

    return-void
.end method

.method private hideSoftInput(Landroid/view/View;)V
    .locals 2

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 86
    invoke-virtual {p0}, Lde/baumann/browser/View/SearchEngineListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private showEditDialog()V
    .locals 6

    .line 37
    invoke-virtual {p0}, Lde/baumann/browser/View/SearchEngineListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/baumann/browser/View/SearchEngineListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0}, Lde/baumann/browser/View/SearchEngineListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b002d

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090049

    .line 42
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const v4, 0x7f0e003c

    .line 44
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 45
    invoke-virtual {p0}, Lde/baumann/browser/View/SearchEngineListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e00e0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 49
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f0e0058

    .line 50
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 51
    new-instance v2, Lde/baumann/browser/View/SearchEngineListPreference$2;

    invoke-direct {v2, p0, v3, v0}, Lde/baumann/browser/View/SearchEngineListPreference$2;-><init>(Lde/baumann/browser/View/SearchEngineListPreference;Landroid/widget/EditText;Landroid/content/SharedPreferences;)V

    const v0, 0x7f0e0026

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 70
    new-instance v0, Lde/baumann/browser/View/SearchEngineListPreference$3;

    invoke-direct {v0, p0, v3}, Lde/baumann/browser/View/SearchEngineListPreference$3;-><init>(Lde/baumann/browser/View/SearchEngineListPreference;Landroid/widget/EditText;)V

    const v2, 0x7f0e0023

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 78
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 81
    invoke-direct {p0, v3}, Lde/baumann/browser/View/SearchEngineListPreference;->showSoftInput(Landroid/view/View;)V

    return-void
.end method

.method private showSoftInput(Landroid/view/View;)V
    .locals 2

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 93
    invoke-virtual {p0}, Lde/baumann/browser/View/SearchEngineListPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    .line 26
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 28
    new-instance v0, Lde/baumann/browser/View/SearchEngineListPreference$1;

    invoke-direct {v0, p0}, Lde/baumann/browser/View/SearchEngineListPreference$1;-><init>(Lde/baumann/browser/View/SearchEngineListPreference;)V

    const v1, 0x7f0e0038

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method
