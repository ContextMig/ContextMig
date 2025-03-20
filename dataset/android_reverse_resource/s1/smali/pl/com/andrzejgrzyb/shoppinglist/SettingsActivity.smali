.class public Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;
.super Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity$DataSyncPreferenceFragment;,
        Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity$NotificationPreferenceFragment;,
        Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity$GeneralPreferenceFragment;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static final ALWAYS_SIMPLE_PREFS:Z

.field private static sBindPreferenceSummaryToValueListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4ebe30ef0dae5760L

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/SettingsActivity"

    const/16 v3, 0x3e

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    new-instance v1, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity$1;

    invoke-direct {v1}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity$1;-><init>()V

    sput-object v1, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->sBindPreferenceSummaryToValueListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    const/16 v1, 0x3d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Landroid/preference/Preference;)V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    invoke-static {p0}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->bindPreferenceSummaryToValue(Landroid/preference/Preference;)V

    const/16 v1, 0x3c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static bindPreferenceSummaryToValue(Landroid/preference/Preference;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 133
    sget-object v1, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->sBindPreferenceSummaryToValueListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 137
    sget-object v1, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->sBindPreferenceSummaryToValueListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    const/16 v2, 0xa

    aput-boolean v5, v0, v2

    .line 139
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/16 v3, 0xb

    aput-boolean v5, v0, v3

    .line 140
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    aput-boolean v5, v0, v3

    .line 137
    invoke-interface {v1, p0, v2}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 141
    const/16 v1, 0xd

    aput-boolean v5, v0, v1

    return-void
.end method

.method private static isSimplePreferences(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v0, v3, :cond_0

    const/4 v0, 0x4

    aput-boolean v1, v2, v0

    .line 119
    :goto_0
    const/4 v0, 0x7

    aput-boolean v1, v2, v0

    move v0, v1

    .line 117
    :goto_1
    const/16 v3, 0x9

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x5

    aput-boolean v1, v2, v0

    .line 119
    invoke-static {p0}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->isXLargeTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x6

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/16 v3, 0x8

    aput-boolean v1, v2, v3

    goto :goto_1
.end method

.method private static isXLargeTablet(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-lt v0, v3, :cond_0

    aput-boolean v1, v2, v1

    move v0, v1

    :goto_0
    const/4 v3, 0x3

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x2

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method private setupActionBar()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 155
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 156
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-nez v0, :cond_0

    const/16 v2, 0x12

    aput-boolean v3, v1, v2

    .line 160
    :goto_0
    const/16 v2, 0x15

    aput-boolean v3, v1, v2

    return-void

    .line 156
    :cond_0
    const/16 v2, 0x13

    aput-boolean v3, v1, v2

    .line 158
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/16 v2, 0x14

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method private setupSimplePreferencesScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 187
    invoke-static {p0}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->isSimplePreferences(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    const/16 v1, 0x1e

    aput-boolean v3, v0, v1

    .line 217
    :goto_0
    return-void

    .line 195
    :cond_0
    const/high16 v1, 0x7f060000

    invoke-virtual {p0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->addPreferencesFromResource(I)V

    const/16 v1, 0x1f

    aput-boolean v3, v0, v1

    .line 212
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v1}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->bindPreferenceSummaryToValue(Landroid/preference/Preference;)V

    const/16 v1, 0x20

    aput-boolean v3, v0, v1

    .line 216
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 217
    const/16 v1, 0x21

    aput-boolean v3, v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 243
    const-class v0, Landroid/preference/PreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2a

    aput-boolean v1, v2, v0

    .line 246
    :goto_0
    const/16 v0, 0x31

    aput-boolean v1, v2, v0

    move v0, v1

    .line 243
    :goto_1
    const/16 v3, 0x33

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const-class v0, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity$GeneralPreferenceFragment;

    const/16 v3, 0x2b

    aput-boolean v1, v2, v3

    .line 244
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2c

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    const-class v0, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity$DataSyncPreferenceFragment;

    const/16 v3, 0x2d

    aput-boolean v1, v2, v3

    .line 245
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2e

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_2
    const-class v0, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity$NotificationPreferenceFragment;

    const/16 v3, 0x2f

    aput-boolean v1, v2, v3

    .line 246
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x30

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const/16 v3, 0x32

    aput-boolean v1, v2, v3

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 352
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x3a

    aput-boolean v3, v0, v2

    .line 353
    invoke-virtual {p0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 354
    const/16 v1, 0x3b

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 233
    invoke-static {p0}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->isSimplePreferences(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x27

    aput-boolean v2, v0, v1

    .line 236
    :goto_0
    const/16 v1, 0x29

    aput-boolean v2, v0, v1

    return-void

    .line 233
    :cond_0
    const/16 v1, 0x28

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 145
    invoke-super {p0, p1}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    .line 146
    invoke-static {p0}, Lpl/com/andrzejgrzyb/shoppinglist/LocaleHelper;->onCreate(Landroid/content/Context;)V

    const/16 v1, 0xf

    aput-boolean v2, v0, v1

    .line 147
    const v1, 0x7f070051

    invoke-virtual {p0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->setTitle(I)V

    const/16 v1, 0x10

    aput-boolean v2, v0, v1

    .line 148
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->setupActionBar()V

    .line 149
    const/16 v1, 0x11

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onIsMultiPane()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 224
    invoke-static {p0}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->isXLargeTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x22

    aput-boolean v1, v2, v0

    :goto_0
    const/4 v0, 0x0

    const/16 v3, 0x25

    aput-boolean v1, v2, v3

    :goto_1
    const/16 v3, 0x26

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    invoke-static {p0}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->isSimplePreferences(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x23

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x24

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 164
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 165
    .local v0, "id":I
    const v2, 0x102002c

    if-ne v0, v2, :cond_1

    const/16 v2, 0x16

    aput-boolean v1, v3, v2

    .line 166
    invoke-super {p0, p1, p2}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    aput-boolean v1, v3, v2

    .line 169
    :goto_0
    const/16 v2, 0x1a

    aput-boolean v1, v3, v2

    .line 171
    :goto_1
    return v1

    .line 166
    :cond_0
    const/16 v2, 0x18

    aput-boolean v1, v3, v2

    .line 167
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->navigateUpFromSameTask(Landroid/app/Activity;)V

    const/16 v2, 0x19

    aput-boolean v1, v3, v2

    goto :goto_0

    .line 171
    :cond_1
    invoke-super {p0, p1, p2}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    const/16 v4, 0x1b

    aput-boolean v1, v3, v4

    move v1, v2

    goto :goto_1
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 176
    invoke-super {p0, p1}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    const/16 v1, 0x1c

    aput-boolean v2, v0, v1

    .line 178
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->setupSimplePreferencesScreen()V

    .line 179
    const/16 v1, 0x1d

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 252
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x34

    aput-boolean v3, v0, v1

    .line 258
    :goto_0
    const/16 v1, 0x39

    aput-boolean v3, v0, v1

    return-void

    .line 252
    :cond_0
    const/16 v1, 0x35

    aput-boolean v3, v0, v1

    .line 254
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x36

    aput-boolean v3, v0, v2

    .line 255
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->finish()V

    const/16 v2, 0x37

    aput-boolean v3, v0, v2

    .line 256
    invoke-virtual {p0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    const/16 v1, 0x38

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
