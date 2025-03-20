.class public Lde/baumann/browser/Activity/Whitelist_Cookie;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Whitelist_Cookie.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private adapter:Lde/baumann/browser/View/Adapter_Cookie;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lde/baumann/browser/Activity/Whitelist_Cookie;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lde/baumann/browser/Activity/Whitelist_Cookie;->list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lde/baumann/browser/Activity/Whitelist_Cookie;)Lde/baumann/browser/View/Adapter_Cookie;
    .locals 0

    .line 27
    iget-object p0, p0, Lde/baumann/browser/Activity/Whitelist_Cookie;->adapter:Lde/baumann/browser/View/Adapter_Cookie;

    return-object p0
.end method

.method private hideSoftInput(Landroid/view/View;)V
    .locals 2

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    const-string v0, "input_method"

    .line 136
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/Whitelist_Cookie;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 34
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {p0}, Lde/baumann/browser/Unit/HelperUnit;->setTheme(Landroid/content/Context;)V

    const p1, 0x7f0b004e

    .line 37
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/Whitelist_Cookie;->setContentView(I)V

    const p1, 0x7f090105

    .line 38
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/Whitelist_Cookie;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    .line 39
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/Whitelist_Cookie;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 40
    invoke-virtual {p0}, Lde/baumann/browser/Activity/Whitelist_Cookie;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 42
    new-instance p1, Lde/baumann/browser/Database/RecordAction;

    invoke-direct {p1, p0}, Lde/baumann/browser/Database/RecordAction;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, v0}, Lde/baumann/browser/Database/RecordAction;->open(Z)V

    .line 44
    invoke-virtual {p1}, Lde/baumann/browser/Database/RecordAction;->listDomainsCookie()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lde/baumann/browser/Activity/Whitelist_Cookie;->list:Ljava/util/List;

    .line 45
    invoke-virtual {p1}, Lde/baumann/browser/Database/RecordAction;->close()V

    const p1, 0x7f090134

    .line 47
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/Whitelist_Cookie;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    const v0, 0x7f090137

    .line 48
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/Whitelist_Cookie;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 50
    new-instance v0, Lde/baumann/browser/View/Adapter_Cookie;

    iget-object v1, p0, Lde/baumann/browser/Activity/Whitelist_Cookie;->list:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lde/baumann/browser/View/Adapter_Cookie;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lde/baumann/browser/Activity/Whitelist_Cookie;->adapter:Lde/baumann/browser/View/Adapter_Cookie;

    .line 51
    iget-object v0, p0, Lde/baumann/browser/Activity/Whitelist_Cookie;->adapter:Lde/baumann/browser/View/Adapter_Cookie;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    iget-object p1, p0, Lde/baumann/browser/Activity/Whitelist_Cookie;->adapter:Lde/baumann/browser/View/Adapter_Cookie;

    invoke-virtual {p1}, Lde/baumann/browser/View/Adapter_Cookie;->notifyDataSetChanged()V

    const p1, 0x7f090135

    .line 54
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/Whitelist_Cookie;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 55
    new-instance v0, Lde/baumann/browser/Activity/Whitelist_Cookie$1;

    invoke-direct {v0, p0}, Lde/baumann/browser/Activity/Whitelist_Cookie$1;-><init>(Lde/baumann/browser/Activity/Whitelist_Cookie;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 90
    invoke-virtual {p0}, Lde/baumann/browser/Activity/Whitelist_Cookie;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 91
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_1

    const v0, 0x7f09013a

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    new-instance p1, Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {p1, p0}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b002b

    const/4 v1, 0x0

    .line 103
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09004b

    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e00ed

    .line 105
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f090019

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 107
    new-instance v2, Lde/baumann/browser/Activity/Whitelist_Cookie$2;

    invoke-direct {v2, p0, p1}, Lde/baumann/browser/Activity/Whitelist_Cookie$2;-><init>(Lde/baumann/browser/Activity/Whitelist_Cookie;Landroid/support/design/widget/BottomSheetDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09000f

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 118
    new-instance v2, Lde/baumann/browser/Activity/Whitelist_Cookie$3;

    invoke-direct {v2, p0, p1}, Lde/baumann/browser/Activity/Whitelist_Cookie$3;-><init>(Lde/baumann/browser/Activity/Whitelist_Cookie;Landroid/support/design/widget/BottomSheetDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {p1, v0}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 125
    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p0}, Lde/baumann/browser/Activity/Whitelist_Cookie;->finish()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 1

    const v0, 0x7f090136

    .line 84
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/Whitelist_Cookie;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/baumann/browser/Activity/Whitelist_Cookie;->hideSoftInput(Landroid/view/View;)V

    .line 85
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method
