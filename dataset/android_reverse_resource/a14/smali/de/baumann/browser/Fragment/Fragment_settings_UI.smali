.class public Lde/baumann/browser/Fragment/Fragment_settings_UI;
.super Landroid/preference/PreferenceFragment;
.source "Fragment_settings_UI.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f110006

    .line 18
    invoke-virtual {p0, p1}, Lde/baumann/browser/Fragment/Fragment_settings_UI;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 30
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 31
    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings_UI;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 23
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 24
    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings_UI;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 25
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const-string v0, "sp_exit"

    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sp_toggle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sp_add"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sp_darkUI"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nav_position"

    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sp_hideOmni"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "start_tab"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 40
    :cond_0
    new-instance p2, Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings_UI;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings_UI;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b002b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09004b

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e0109

    .line 43
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f090019

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 45
    new-instance v2, Lde/baumann/browser/Fragment/Fragment_settings_UI$1;

    invoke-direct {v2, p0, p1}, Lde/baumann/browser/Fragment/Fragment_settings_UI$1;-><init>(Lde/baumann/browser/Fragment/Fragment_settings_UI;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09000f

    .line 52
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 53
    new-instance v1, Lde/baumann/browser/Fragment/Fragment_settings_UI$2;

    invoke-direct {v1, p0, p2}, Lde/baumann/browser/Fragment/Fragment_settings_UI$2;-><init>(Lde/baumann/browser/Fragment/Fragment_settings_UI;Landroid/support/design/widget/BottomSheetDialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {p2, v0}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 60
    invoke-virtual {p2}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    :cond_1
    return-void
.end method
