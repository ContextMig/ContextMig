.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/ShowSearchFieldOnClickListener;
.super Ljava/lang/Object;
.source "ShowSearchFieldOnClickListener.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/ShowSearchFieldOnClickListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x368a9c0ede32d325L    # 5.826249098855976E-46

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/ShowSearchFieldOnClickListener"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/ShowSearchFieldOnClickListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/ShowSearchFieldOnClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/ShowSearchFieldOnClickListener;->activity:Landroid/app/Activity;

    .line 25
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private showKeyboard()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/ShowSearchFieldOnClickListener;->$jacocoInit()[Z

    move-result-object v1

    .line 46
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/ShowSearchFieldOnClickListener;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/ShowSearchFieldOnClickListener;->activity:Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/16 v2, 0xb

    aput-boolean v3, v1, v2

    .line 47
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 48
    const/16 v0, 0xc

    aput-boolean v3, v1, v0

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8

    .prologue
    const v7, 0x7f1000d8

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/ShowSearchFieldOnClickListener;->$jacocoInit()[Z

    move-result-object v3

    .line 30
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/ShowSearchFieldOnClickListener;->activity:Landroid/app/Activity;

    const v1, 0x7f1000d6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    aput-boolean v5, v3, v5

    .line 31
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/ShowSearchFieldOnClickListener;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    const/4 v2, 0x2

    aput-boolean v5, v3, v2

    .line 32
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/ShowSearchFieldOnClickListener;->activity:Landroid/app/Activity;

    const v4, 0x7f1000d7

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const/4 v4, 0x3

    aput-boolean v5, v3, v4

    .line 33
    invoke-virtual {v0, v6}, Landroid/support/design/widget/TextInputLayout;->setVisibility(I)V

    const/4 v0, 0x4

    aput-boolean v5, v3, v0

    .line 34
    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/4 v0, 0x5

    aput-boolean v5, v3, v0

    .line 35
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x6

    aput-boolean v5, v3, v0

    .line 39
    :goto_0
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/ShowSearchFieldOnClickListener;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    const/16 v1, 0x9

    aput-boolean v5, v3, v1

    .line 40
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const/16 v0, 0xa

    aput-boolean v5, v3, v0

    return v5

    .line 35
    :cond_0
    const/4 v0, 0x7

    aput-boolean v5, v3, v0

    .line 37
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/ShowSearchFieldOnClickListener;->showKeyboard()V

    const/16 v0, 0x8

    aput-boolean v5, v3, v0

    goto :goto_0
.end method
