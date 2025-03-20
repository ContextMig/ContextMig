.class public Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/asdtm/goodweather/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AboutPreferenceFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment$LicensesDialogFragment;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x186c9094216fe89aL    # 5.008680693129084E-191

    const-string v2, "org/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment"

    const/16 v3, 0x25

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 276
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private fDroidIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 327
    const-string v0, "android.intent.action.VIEW"

    .line 328
    .local v0, "ACTION_VIEW":Ljava/lang/String;
    const-string v2, "https://f-droid.org/repository/browse/?fdid=%s"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x17

    aput-boolean v6, v1, v5

    .line 329
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x18

    aput-boolean v6, v1, v4

    .line 328
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x19

    aput-boolean v6, v1, v3

    .line 331
    new-instance v3, Landroid/content/Intent;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v2, 0x1a

    aput-boolean v6, v1, v2

    return-object v3
.end method

.method private getVersionName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 317
    :try_start_0
    iget-object v1, p0, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .local v0, "versionName":Ljava/lang/String;
    const/16 v1, 0x13

    aput-boolean v5, v2, v1

    .line 323
    .end local v0    # "versionName":Ljava/lang/String;
    :goto_0
    const/16 v1, 0x16

    aput-boolean v5, v2, v1

    return-object v0

    .line 319
    :catch_0
    move-exception v1

    const/16 v3, 0x14

    aput-boolean v5, v2, v3

    .line 320
    const-string v3, "SettingsActivity"

    const-string v4, "Get version name error"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    const-string v0, "666"

    const/16 v1, 0x15

    aput-boolean v5, v2, v1

    goto :goto_0
.end method

.method private googlePlayIntent()Landroid/content/Intent;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->$jacocoInit()[Z

    move-result-object v3

    .line 335
    const-string v0, "android.intent.action.VIEW"

    .line 336
    .local v0, "ACTION_VIEW":Ljava/lang/String;
    const-string v4, "market://details?id=%s"

    new-array v5, v7, [Ljava/lang/Object;

    const/16 v6, 0x1b

    aput-boolean v7, v3, v6

    .line 337
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/16 v6, 0x1c

    aput-boolean v7, v3, v6

    .line 336
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "googlePlayAppUri":Ljava/lang/String;
    const-string v4, "http://play.google.com/store/apps/details?id=%s"

    new-array v5, v7, [Ljava/lang/Object;

    const/16 v6, 0x1d

    aput-boolean v7, v3, v6

    .line 339
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/16 v6, 0x1e

    aput-boolean v7, v3, v6

    .line 338
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f

    aput-boolean v7, v3, v5

    .line 341
    new-instance v2, Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v5, 0x20

    aput-boolean v7, v3, v5

    .line 342
    iget-object v5, p0, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v2, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    const/16 v4, 0x21

    aput-boolean v7, v3, v4

    .line 346
    :goto_0
    const/16 v4, 0x24

    aput-boolean v7, v3, v4

    return-object v2

    .line 342
    :cond_0
    const/16 v5, 0x22

    aput-boolean v7, v3, v5

    .line 343
    new-instance v2, Landroid/content/Intent;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v2, "intent":Landroid/content/Intent;
    const/16 v4, 0x23

    aput-boolean v7, v3, v4

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 282
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v3, v0, v3

    .line 283
    const/high16 v1, 0x7f070000

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->addPreferencesFromResource(I)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 285
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 286
    const-string v1, "about_version_pref_key"

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 287
    const-string v1, "about_f_droid_pref_key"

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->fDroidIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 288
    const-string v1, "about_google_play_pref_key"

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->googlePlayIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 289
    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v7, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 293
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x7

    aput-boolean v7, v1, v3

    .line 294
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v7, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    const/16 v4, 0x8

    aput-boolean v7, v1, v4

    .line 295
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v7, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    const/16 v5, 0x9

    aput-boolean v7, v1, v5

    .line 296
    const/high16 v5, 0x42600000    # 56.0f

    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v7, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v0, v5

    .line 298
    .local v0, "topMargin":I
    if-nez v2, :cond_0

    const/16 v3, 0xa

    aput-boolean v7, v1, v3

    .line 301
    :goto_0
    const/16 v3, 0xd

    aput-boolean v7, v1, v3

    return-object v2

    .line 298
    :cond_0
    const/16 v5, 0xb

    aput-boolean v7, v1, v5

    .line 299
    invoke-virtual {v2, v3, v0, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    const/16 v3, 0xc

    aput-boolean v7, v1, v3

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 307
    const-string v1, "about_open_source_licenses_pref_key"

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xe

    aput-boolean v4, v0, v1

    .line 311
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    const/16 v2, 0x12

    aput-boolean v4, v0, v2

    return v1

    .line 307
    :cond_0
    const/16 v1, 0xf

    aput-boolean v4, v0, v1

    .line 308
    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment$LicensesDialogFragment;->newInstance()Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment$LicensesDialogFragment;

    move-result-object v1

    const/16 v2, 0x10

    aput-boolean v4, v0, v2

    .line 309
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "LicensesDialog"

    invoke-virtual {v1, v2, v3}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment$LicensesDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/16 v1, 0x11

    aput-boolean v4, v0, v1

    goto :goto_0
.end method
