.class public Lde/baumann/browser/Fragment/Fragment_clear;
.super Landroid/preference/PreferenceFragment;
.source "Fragment_clear.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f110002

    .line 19
    invoke-virtual {p0, p1}, Lde/baumann/browser/Fragment/Fragment_clear;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 31
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 32
    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_clear;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    .line 41
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v0

    const v1, 0x7f0e0033

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_clear;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 45
    new-instance v1, Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_clear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_clear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b002b

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09004b

    .line 47
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0e004a

    .line 48
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f090019

    .line 49
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 50
    new-instance v4, Lde/baumann/browser/Fragment/Fragment_clear$1;

    invoke-direct {v4, p0, v1, v0}, Lde/baumann/browser/Fragment/Fragment_clear$1;-><init>(Lde/baumann/browser/Fragment/Fragment_clear;Landroid/support/design/widget/BottomSheetDialog;Landroid/content/SharedPreferences;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09000f

    .line 59
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 60
    new-instance v3, Lde/baumann/browser/Fragment/Fragment_clear$2;

    invoke-direct {v3, p0, v1}, Lde/baumann/browser/Fragment/Fragment_clear$2;-><init>(Lde/baumann/browser/Fragment/Fragment_clear;Landroid/support/design/widget/BottomSheetDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {v1, v2}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 67
    invoke-virtual {v1}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    .line 73
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 24
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 25
    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_clear;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 26
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
