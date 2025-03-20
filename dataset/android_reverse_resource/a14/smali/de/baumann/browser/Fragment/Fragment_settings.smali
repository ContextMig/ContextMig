.class public Lde/baumann/browser/Fragment/Fragment_settings;
.super Landroid/preference/PreferenceFragment;
.source "Fragment_settings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private dbChange:Z

.field private spChange:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lde/baumann/browser/Fragment/Fragment_settings;->spChange:Z

    .line 32
    iput-boolean v0, p0, Lde/baumann/browser/Fragment/Fragment_settings;->dbChange:Z

    return-void
.end method

.method private showChangelogDialog()V
    .locals 4

    .line 141
    new-instance v0, Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0035

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09004c

    .line 144
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0e002a

    .line 145
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f09004b

    .line 147
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0e0029

    .line 148
    invoke-virtual {p0, v3}, Lde/baumann/browser/Fragment/Fragment_settings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lde/baumann/browser/Unit/HelperUnit;->textSpannable(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v2, 0x7f090061

    .line 151
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 152
    new-instance v3, Lde/baumann/browser/Fragment/Fragment_settings$2;

    invoke-direct {v3, p0, v0}, Lde/baumann/browser/Fragment/Fragment_settings$2;-><init>(Lde/baumann/browser/Fragment/Fragment_settings;Landroid/support/design/widget/BottomSheetDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f09005e

    .line 159
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const/16 v3, 0x8

    .line 160
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v2, 0x7f090065

    .line 162
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 163
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 165
    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 166
    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    return-void
.end method

.method private showLicenseDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 111
    new-instance v0, Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0035

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09004c

    .line 114
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 115
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f09004b

    .line 117
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 118
    invoke-static {p2}, Lde/baumann/browser/Unit/HelperUnit;->textSpannable(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const p1, 0x7f090061

    .line 121
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 122
    new-instance p2, Lde/baumann/browser/Fragment/Fragment_settings$1;

    invoke-direct {p2, p0, v0}, Lde/baumann/browser/Fragment/Fragment_settings$1;-><init>(Lde/baumann/browser/Fragment/Fragment_settings;Landroid/support/design/widget/BottomSheetDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09005e

    .line 129
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    const/16 p2, 0x8

    .line 130
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    const p1, 0x7f090065

    .line 132
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 133
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 135
    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 136
    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    return-void
.end method


# virtual methods
.method public isDBChange()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lde/baumann/browser/Fragment/Fragment_settings;->dbChange:Z

    return v0
.end method

.method public isSPChange()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lde/baumann/browser/Fragment/Fragment_settings;->spChange:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f110004

    .line 43
    invoke-virtual {p0, p1}, Lde/baumann/browser/Fragment/Fragment_settings;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 58
    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    .line 63
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 70
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lde/baumann/browser/Activity/Settings_UIActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x105

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 74
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lde/baumann/browser/Activity/Settings_StartActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x103

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :sswitch_2
    const v0, 0x7f0e004c

    .line 82
    invoke-virtual {p0, v0}, Lde/baumann/browser/Fragment/Fragment_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0e004b

    invoke-virtual {p0, v1}, Lde/baumann/browser/Fragment/Fragment_settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lde/baumann/browser/Fragment/Fragment_settings;->showLicenseDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lde/baumann/browser/Activity/Settings_DataActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x104

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_4
    const v0, 0x7f0e00ad

    .line 85
    invoke-virtual {p0, v0}, Lde/baumann/browser/Fragment/Fragment_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0e0037

    invoke-virtual {p0, v1}, Lde/baumann/browser/Fragment/Fragment_settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lde/baumann/browser/Fragment/Fragment_settings;->showLicenseDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lde/baumann/browser/Activity/Settings_ClearActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x102

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 91
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package"

    .line 93
    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 88
    :sswitch_7
    invoke-direct {p0}, Lde/baumann/browser/Fragment/Fragment_settings;->showChangelogDialog()V

    .line 101
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e002a -> :sswitch_7
        0x7f0e00a9 -> :sswitch_6
        0x7f0e00ac -> :sswitch_5
        0x7f0e00ad -> :sswitch_4
        0x7f0e00b1 -> :sswitch_3
        0x7f0e00c2 -> :sswitch_2
        0x7f0e00cb -> :sswitch_1
        0x7f0e00cf -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 1

    .line 49
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 51
    invoke-virtual {p0}, Lde/baumann/browser/Fragment/Fragment_settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    .line 106
    iput-boolean p1, p0, Lde/baumann/browser/Fragment/Fragment_settings;->spChange:Z

    return-void
.end method

.method public setDBChange(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lde/baumann/browser/Fragment/Fragment_settings;->dbChange:Z

    return-void
.end method
