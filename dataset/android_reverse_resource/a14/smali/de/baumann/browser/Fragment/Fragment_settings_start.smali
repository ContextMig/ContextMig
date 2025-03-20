.class public Lde/baumann/browser/Fragment/Fragment_settings_start;
.super Landroid/preference/PreferenceFragment;
.source "Fragment_settings_start.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private spChange:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lde/baumann/browser/Fragment/Fragment_settings_start;->spChange:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f110005

    .line 30
    invoke-virtual {p0, p1}, Lde/baumann/browser/Fragment/Fragment_settings_start;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 42
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 43
    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings_start;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .line 49
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    .line 55
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings_start;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lde/baumann/browser/Activity/Whitelist_Javascript;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings_start;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 59
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings_start;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lde/baumann/browser/Activity/Whitelist_Cookie;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings_start;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 51
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings_start;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lde/baumann/browser/Activity/Whitelist_AdBlock;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings_start;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 73
    :pswitch_3
    new-instance v0, Lde/baumann/browser/Task/ImportWhitelistJSTask;

    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings_start;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lde/baumann/browser/Task/ImportWhitelistJSTask;-><init>(Landroid/app/Activity;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lde/baumann/browser/Task/ImportWhitelistJSTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 79
    :pswitch_4
    new-instance v0, Lde/baumann/browser/Task/ImportWhitelistCookieTask;

    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings_start;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lde/baumann/browser/Task/ImportWhitelistCookieTask;-><init>(Landroid/app/Activity;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lde/baumann/browser/Task/ImportWhitelistCookieTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 66
    :pswitch_5
    new-instance v0, Lde/baumann/browser/Task/ImportWhitelistAdBlockTask;

    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings_start;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lde/baumann/browser/Task/ImportWhitelistAdBlockTask;-><init>(Landroid/app/Activity;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lde/baumann/browser/Task/ImportWhitelistAdBlockTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 70
    :pswitch_6
    new-instance v0, Lde/baumann/browser/Task/ExportWhitelistJSTask;

    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings_start;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lde/baumann/browser/Task/ExportWhitelistJSTask;-><init>(Landroid/content/Context;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lde/baumann/browser/Task/ExportWhitelistJSTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 76
    :pswitch_7
    new-instance v0, Lde/baumann/browser/Task/ExportWhitelistCookieTask;

    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings_start;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lde/baumann/browser/Task/ExportWhitelistCookieTask;-><init>(Landroid/content/Context;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lde/baumann/browser/Task/ExportWhitelistCookieTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 63
    :pswitch_8
    new-instance v0, Lde/baumann/browser/Task/ExportWhitelistAdBlockTask;

    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings_start;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lde/baumann/browser/Task/ExportWhitelistAdBlockTask;-><init>(Landroid/content/Context;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lde/baumann/browser/Task/ExportWhitelistAdBlockTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x7f0e00b4
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0e00bd
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f0e00d0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .line 35
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 36
    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings_start;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 37
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    .line 90
    iput-boolean p1, p0, Lde/baumann/browser/Fragment/Fragment_settings_start;->spChange:Z

    return-void
.end method
