.class public Lde/baumann/browser/Activity/Settings_ClearActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Settings_ClearActivity.java"


# static fields
.field public static final DB_CHANGE:Ljava/lang/String; = "DB_CHANGE"


# instance fields
.field private dbChange:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lde/baumann/browser/Activity/Settings_ClearActivity;->dbChange:Z

    return-void
.end method

.method static synthetic access$000(Lde/baumann/browser/Activity/Settings_ClearActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lde/baumann/browser/Activity/Settings_ClearActivity;->clear()V

    return-void
.end method

.method private clear()V
    .locals 9

    .line 98
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f0e00d5

    .line 99
    invoke-virtual {p0, v1}, Lde/baumann/browser/Activity/Settings_ClearActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const v3, 0x7f0e00d6

    .line 100
    invoke-virtual {p0, v3}, Lde/baumann/browser/Activity/Settings_ClearActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const v4, 0x7f0e00d7

    .line 101
    invoke-virtual {p0, v4}, Lde/baumann/browser/Activity/Settings_ClearActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const v5, 0x7f0e00d8

    .line 102
    invoke-virtual {p0, v5}, Lde/baumann/browser/Activity/Settings_ClearActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "sp_clearIndexedDB"

    .line 103
    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 105
    new-instance v2, Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {v2, p0}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0b0034

    const/4 v7, 0x0

    .line 107
    invoke-static {p0, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f09004b

    .line 108
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0e0111

    .line 109
    invoke-virtual {p0, v8}, Lde/baumann/browser/Activity/Settings_ClearActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v2, v6}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 112
    invoke-virtual {v2}, Landroid/support/design/widget/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 113
    invoke-virtual {v2}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    if-eqz v1, :cond_0

    .line 116
    invoke-static {p0}, Lde/baumann/browser/Unit/BrowserUnit;->clearBookmarks(Landroid/content/Context;)V

    :cond_0
    if-eqz v3, :cond_1

    .line 119
    invoke-static {p0}, Lde/baumann/browser/Unit/BrowserUnit;->clearCache(Landroid/content/Context;)V

    :cond_1
    if-eqz v4, :cond_2

    .line 122
    invoke-static {}, Lde/baumann/browser/Unit/BrowserUnit;->clearCookie()V

    :cond_2
    if-eqz v5, :cond_3

    .line 125
    invoke-static {p0}, Lde/baumann/browser/Unit/BrowserUnit;->clearHistory(Landroid/content/Context;)V

    :cond_3
    if-eqz v0, :cond_4

    .line 128
    invoke-static {p0}, Lde/baumann/browser/Unit/BrowserUnit;->clearIndexedDB(Landroid/content/Context;)V

    .line 131
    :cond_4
    invoke-virtual {v2}, Landroid/support/design/widget/BottomSheetDialog;->hide()V

    .line 132
    invoke-virtual {v2}, Landroid/support/design/widget/BottomSheetDialog;->dismiss()V

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lde/baumann/browser/Activity/Settings_ClearActivity;->dbChange:Z

    const v0, 0x7f0e00f1

    .line 135
    invoke-static {p0, v0}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 32
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {p0}, Lde/baumann/browser/Unit/HelperUnit;->setTheme(Landroid/content/Context;)V

    const p1, 0x7f0b001b

    .line 35
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/Settings_ClearActivity;->setContentView(I)V

    const p1, 0x7f090105

    .line 36
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/Settings_ClearActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    .line 37
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/Settings_ClearActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 38
    invoke-virtual {p0}, Lde/baumann/browser/Activity/Settings_ClearActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 40
    invoke-virtual {p0}, Lde/baumann/browser/Activity/Settings_ClearActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    new-instance v0, Lde/baumann/browser/Fragment/Fragment_clear;

    invoke-direct {v0}, Lde/baumann/browser/Fragment/Fragment_clear;-><init>()V

    const v1, 0x7f09003d

    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 45
    invoke-virtual {p0}, Lde/baumann/browser/Activity/Settings_ClearActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 46
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 90
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "DB_CHANGE"

    .line 91
    iget-boolean v0, p0, Lde/baumann/browser/Activity/Settings_ClearActivity;->dbChange:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p2, -0x1

    .line 92
    invoke-virtual {p0, p2, p1}, Lde/baumann/browser/Activity/Settings_ClearActivity;->setResult(ILandroid/content/Intent;)V

    .line 93
    invoke-virtual {p0}, Lde/baumann/browser/Activity/Settings_ClearActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 51
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_1

    const v0, 0x7f090037

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    new-instance p1, Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {p1, p0}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b002b

    const/4 v1, 0x0

    .line 61
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09004b

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e00ed

    .line 63
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f090019

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 65
    new-instance v2, Lde/baumann/browser/Activity/Settings_ClearActivity$1;

    invoke-direct {v2, p0, p1}, Lde/baumann/browser/Activity/Settings_ClearActivity$1;-><init>(Lde/baumann/browser/Activity/Settings_ClearActivity;Landroid/support/design/widget/BottomSheetDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09000f

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 73
    new-instance v2, Lde/baumann/browser/Activity/Settings_ClearActivity$2;

    invoke-direct {v2, p0, p1}, Lde/baumann/browser/Activity/Settings_ClearActivity$2;-><init>(Lde/baumann/browser/Activity/Settings_ClearActivity;Landroid/support/design/widget/BottomSheetDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {p1, v0}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 80
    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    goto :goto_0

    .line 53
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "DB_CHANGE"

    .line 54
    iget-boolean v1, p0, Lde/baumann/browser/Activity/Settings_ClearActivity;->dbChange:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 55
    invoke-virtual {p0, v0, p1}, Lde/baumann/browser/Activity/Settings_ClearActivity;->setResult(ILandroid/content/Intent;)V

    .line 56
    invoke-virtual {p0}, Lde/baumann/browser/Activity/Settings_ClearActivity;->finish()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
