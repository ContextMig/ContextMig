.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/CancelSearchOnClick;
.super Ljava/lang/Object;
.source "CancelSearchOnClick.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/CancelSearchOnClick;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5380c64b140aea56L    # 1.749525978648666E94

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/CancelSearchOnClick"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/CancelSearchOnClick;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/CancelSearchOnClick;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sput-object p1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/CancelSearchOnClick;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;

    .line 21
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static hideKeyboard()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/CancelSearchOnClick;->$jacocoInit()[Z

    move-result-object v1

    .line 39
    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/CancelSearchOnClick;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;

    invoke-virtual {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;->getActivity()Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    const/4 v2, 0x6

    aput-boolean v4, v1, v2

    .line 40
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x7

    aput-boolean v4, v1, v2

    .line 41
    sget-object v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/CancelSearchOnClick;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;

    invoke-virtual {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;->getSearchAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 42
    const/16 v0, 0x8

    aput-boolean v4, v1, v0

    return-void
.end method

.method public static performClick()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/CancelSearchOnClick;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    sget-object v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/CancelSearchOnClick;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;->getSearchAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 32
    sget-object v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/CancelSearchOnClick;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;->getSearchTextInputLayout()Landroid/support/design/widget/TextInputLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/design/widget/TextInputLayout;->setVisibility(I)V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 33
    sget-object v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/CancelSearchOnClick;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;->getCancelSarchButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 34
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/CancelSearchOnClick;->hideKeyboard()V

    .line 35
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/CancelSearchOnClick;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/CancelSearchOnClick;->performClick()V

    .line 27
    aput-boolean v1, v0, v1

    return-void
.end method
