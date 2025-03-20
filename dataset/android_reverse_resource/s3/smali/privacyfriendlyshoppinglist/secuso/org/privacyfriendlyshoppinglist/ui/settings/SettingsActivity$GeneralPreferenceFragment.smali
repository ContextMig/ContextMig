.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeneralPreferenceFragment"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xbd8c6bfdc5e5868L

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment"

    const/16 v3, 0x1c

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 181
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$100(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;)Lrx/Observable;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 181
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->deleteStatistics()Lrx/Observable;

    move-result-object v1

    const/16 v2, 0x1a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$0(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;)Lrx/Observable;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->lambda$deleteStatistics$0()Lrx/Observable;

    move-result-object v1

    const/16 v2, 0x1b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private deleteStatistics()Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 287
    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$$Lambda$1;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;)Lrx/functions/Func0;

    move-result-object v2

    const/16 v3, 0x10

    aput-boolean v4, v1, v3

    .line 288
    invoke-static {v2}, Lrx/Observable;->defer(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x11

    aput-boolean v4, v1, v3

    .line 289
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 290
    .local v0, "observable":Lrx/Observable;
    const/16 v2, 0x12

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method private deleteStatisticsSync()Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 295
    new-instance v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/InstanceFactory;

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/InstanceFactory;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x13

    aput-boolean v3, v1, v2

    .line 296
    const-class v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/StatisticsService;

    invoke-virtual {v0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/AbstractInstanceFactory;->createInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/StatisticsService;

    const/16 v2, 0x14

    aput-boolean v3, v1, v2

    .line 297
    invoke-interface {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/StatisticsService;->deleteAll()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 298
    const/4 v0, 0x0

    const/16 v2, 0x15

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method private synthetic lambda$deleteStatistics$0()Lrx/Observable;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 288
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->deleteStatisticsSync()Ljava/lang/Void;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    const/16 v2, 0x19

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 186
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v3, v1, v3

    .line 187
    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->addPreferencesFromResource(I)V

    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    .line 194
    const-string v0, "pref_currency"

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity;->access$000(Landroid/preference/Preference;)V

    const/4 v0, 0x3

    aput-boolean v3, v1, v0

    .line 196
    const-string v0, "pref_checkbox_position"

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    .line 197
    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$1;

    invoke-direct {v2, p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$1;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;Landroid/preference/SwitchPreference;)V

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const/4 v2, 0x5

    aput-boolean v3, v1, v2

    .line 213
    const v2, 0x7f090080

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setSwitchTextOn(I)V

    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    .line 214
    const v2, 0x7f09007e

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setSwitchTextOff(I)V

    const/4 v0, 0x7

    aput-boolean v3, v1, v0

    .line 216
    const-string v0, "pref_move_products"

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    const/16 v2, 0x8

    aput-boolean v3, v1, v2

    .line 217
    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$2;

    invoke-direct {v2, p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$2;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;Landroid/preference/SwitchPreference;)V

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const/16 v0, 0x9

    aput-boolean v3, v1, v0

    .line 235
    const-string v0, "pref_notifications"

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    const/16 v2, 0xa

    aput-boolean v3, v1, v2

    .line 236
    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$3;

    invoke-direct {v2, p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$3;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;Landroid/preference/SwitchPreference;)V

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const/16 v0, 0xb

    aput-boolean v3, v1, v0

    .line 253
    const-string v0, "pref_statistics"

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    const/16 v2, 0xc

    aput-boolean v3, v1, v2

    .line 254
    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$4;

    invoke-direct {v2, p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$4;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;Landroid/preference/SwitchPreference;)V

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const/16 v0, 0xd

    aput-boolean v3, v1, v0

    .line 272
    const-string v0, "pref_statistics_delete"

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/16 v2, 0xe

    aput-boolean v3, v1, v2

    .line 273
    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$5;

    invoke-direct {v2, p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$5;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 283
    const/16 v0, 0xf

    aput-boolean v3, v1, v0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->$jacocoInit()[Z

    move-result-object v3

    .line 304
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 305
    .local v0, "id":I
    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    const/16 v2, 0x16

    aput-boolean v1, v3, v2

    .line 308
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 309
    const/16 v2, 0x17

    aput-boolean v1, v3, v2

    .line 311
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    const/16 v4, 0x18

    aput-boolean v1, v3, v4

    move v1, v2

    goto :goto_0
.end method
