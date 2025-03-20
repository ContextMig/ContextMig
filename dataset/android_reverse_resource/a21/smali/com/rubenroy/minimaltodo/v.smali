.class public Lcom/rubenroy/minimaltodo/v;
.super Landroid/preference/PreferenceFragment;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field a:Lcom/rubenroy/minimaltodo/AnalyticsApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/v;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/v;->a:Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/v;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/v;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/rubenroy/minimaltodo/s;

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/v;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/rubenroy/minimaltodo/s;-><init>(Landroid/content/res/Resources;)V

    iget-object v1, v0, Lcom/rubenroy/minimaltodo/s;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/v;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.avjindersekhon.themepref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "com.avjindersekhon.recreateactivity"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, v0, Lcom/rubenroy/minimaltodo/s;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/v;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/v;->a:Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    const-string v2, "Settings"

    const-string v3, "Night Mode used"

    invoke-virtual {v0, p0, v2, v3}, Lcom/rubenroy/minimaltodo/AnalyticsApplication;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.avjindersekhon.savedtheme"

    const-string v2, "com.avjindersekon.darktheme"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    :cond_0
    return-void

    :cond_1
    const-string v0, "com.avjindersekhon.savedtheme"

    const-string v2, "com.avjindersekon.lighttheme"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
