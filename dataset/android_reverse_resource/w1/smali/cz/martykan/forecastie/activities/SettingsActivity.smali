.class public Lcz/martykan/forecastie/activities/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/martykan/forecastie/activities/SettingsActivity$DummyLocationListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field SAMPLE_DATE:Ljava/util/Date;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/activities/SettingsActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x56aaa3d70dc65529L    # 3.128258744995085E109

    const-string v2, "cz/martykan/forecastie/activities/SettingsActivity"

    const/16 v3, 0x81

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/activities/SettingsActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    .line 37
    new-instance v1, Ljava/util/Date;

    const-wide v2, 0x15241f01880L

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcz/martykan/forecastie/activities/SettingsActivity;->SAMPLE_DATE:Ljava/util/Date;

    aput-boolean v4, v0, v4

    return-void
.end method

.method private checkKey(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 212
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x71

    aput-boolean v4, v0, v2

    .line 213
    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v1, 0x72

    aput-boolean v4, v0, v1

    .line 216
    :goto_0
    const/16 v1, 0x75

    aput-boolean v4, v0, v1

    return-void

    .line 213
    :cond_0
    const/16 v2, 0x73

    aput-boolean v4, v0, v2

    .line 214
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0x74

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method private getTheme(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/SettingsActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 219
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const/16 v3, 0x76

    aput-boolean v1, v2, v3

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 227
    const v0, 0x7f0a0091

    const/16 v3, 0x80

    aput-boolean v1, v2, v3

    :goto_1
    return v0

    .line 219
    :sswitch_0
    const-string v3, "dark"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x77

    aput-boolean v1, v2, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x78

    aput-boolean v1, v2, v3

    goto :goto_0

    :sswitch_1
    const-string v3, "classic"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x79

    aput-boolean v1, v2, v3

    goto :goto_0

    :cond_1
    const/16 v0, 0x7a

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v3, "classicdark"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x7b

    aput-boolean v1, v2, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    const/16 v3, 0x7c

    aput-boolean v1, v2, v3

    goto :goto_0

    .line 221
    :pswitch_0
    const v0, 0x7f0a0095

    const/16 v3, 0x7d

    aput-boolean v1, v2, v3

    goto :goto_1

    .line 223
    :pswitch_1
    const v0, 0x7f0a0093

    const/16 v3, 0x7e

    aput-boolean v1, v2, v3

    goto :goto_1

    .line 225
    :pswitch_2
    const v0, 0x7f0a0094

    const/16 v3, 0x7f

    aput-boolean v1, v2, v3

    goto :goto_1

    .line 219
    nop

    :sswitch_data_0
    .sparse-switch
        -0x84270f8 -> :sswitch_2
        0x2eef76 -> :sswitch_0
        0x32e13892 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private privacyGuardWorkaround()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/SettingsActivity;->$jacocoInit()[Z

    move-result-object v6

    .line 153
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const/16 v1, 0x50

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v6, v1

    .line 155
    new-instance v5, Lcz/martykan/forecastie/activities/SettingsActivity$DummyLocationListener;

    invoke-direct {v5, p0}, Lcz/martykan/forecastie/activities/SettingsActivity$DummyLocationListener;-><init>(Lcz/martykan/forecastie/activities/SettingsActivity;)V

    const/16 v1, 0x51

    const/4 v2, 0x1

    aput-boolean v2, v6, v1

    .line 156
    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const/16 v1, 0x52

    const/4 v2, 0x1

    aput-boolean v2, v6, v1

    .line 157
    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    const/16 v0, 0x53

    aput-boolean v7, v6, v0

    .line 161
    :goto_0
    const/16 v0, 0x55

    aput-boolean v7, v6, v0

    return-void

    .line 158
    :catch_0
    move-exception v0

    const/16 v0, 0x54

    aput-boolean v7, v6, v0

    goto :goto_0
.end method

.method private requestReadLocationPermission()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 123
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Calling request location permission"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v1, 0x3f

    aput-boolean v4, v0, v1

    .line 124
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x40

    aput-boolean v4, v0, v1

    .line 125
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x41

    aput-boolean v4, v0, v1

    .line 137
    :goto_0
    const/16 v1, 0x44

    aput-boolean v4, v0, v1

    return-void

    .line 130
    :cond_0
    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v1, v2

    invoke-static {p0, v1, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const/16 v1, 0x42

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 135
    :cond_1
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/SettingsActivity;->privacyGuardWorkaround()V

    const/16 v1, 0x43

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method private setCustomDateEnabled()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Lcz/martykan/forecastie/activities/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x58

    aput-boolean v6, v0, v2

    .line 170
    const-string v2, "dateFormatCustom"

    invoke-virtual {p0, v2}, Lcz/martykan/forecastie/activities/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const/16 v3, 0x59

    aput-boolean v6, v0, v3

    .line 171
    const-string v3, "custom"

    const-string v4, "dateFormat"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 172
    const/16 v1, 0x5a

    aput-boolean v6, v0, v1

    return-void
.end method

.method private setListPreferenceSummary(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/SettingsActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 164
    invoke-virtual {p0, p1}, Lcz/martykan/forecastie/activities/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    const/16 v2, 0x56

    aput-boolean v3, v1, v2

    .line 165
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 166
    const/16 v0, 0x57

    aput-boolean v3, v1, v0

    return-void
.end method

.method private updateDateFormatList()V
    .locals 15

    .prologue
    const/4 v6, 0x0

    const/4 v14, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/SettingsActivity;->$jacocoInit()[Z

    move-result-object v7

    .line 175
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const/16 v4, 0x5b

    aput-boolean v14, v7, v4

    .line 176
    invoke-virtual {p0}, Lcz/martykan/forecastie/activities/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/16 v4, 0x5c

    aput-boolean v14, v7, v4

    .line 178
    const-string v4, "dateFormat"

    invoke-virtual {p0, v4}, Lcz/martykan/forecastie/activities/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    const/16 v5, 0x5d

    aput-boolean v14, v7, v5

    .line 179
    const/high16 v5, 0x7f0c0000

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "dateFormatsValues":[Ljava/lang/String;
    array-length v5, v0

    new-array v10, v5, [Ljava/lang/String;

    const/16 v5, 0x5e

    aput-boolean v14, v7, v5

    .line 182
    const-string v5, "dateFormatCustom"

    invoke-virtual {p0, v5}, Lcz/martykan/forecastie/activities/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    const/16 v11, 0x5f

    aput-boolean v14, v7, v11

    .line 183
    aget-object v11, v0, v6

    invoke-virtual {v5, v11}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    const/16 v5, 0x60

    aput-boolean v14, v7, v5

    .line 185
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 186
    .local v3, "sdformat":Ljava/text/SimpleDateFormat;
    const/16 v5, 0x61

    aput-boolean v14, v7, v5

    move v1, v6

    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 187
    aget-object v5, v0, v1

    const/16 v11, 0x62

    aput-boolean v14, v7, v11

    .line 188
    const-string v11, "custom"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v5, 0x63

    const/4 v11, 0x1

    :try_start_0
    aput-boolean v11, v7, v5

    .line 191
    const-string v5, "dateFormatCustom"

    const/4 v11, 0x0

    aget-object v11, v0, v11

    invoke-interface {v8, v5, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    const/16 v5, 0x64

    const/4 v11, 0x1

    aput-boolean v11, v7, v5

    .line 192
    iget-object v5, p0, Lcz/martykan/forecastie/activities/SettingsActivity;->SAMPLE_DATE:Ljava/util/Date;

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 195
    .local v2, "renderedCustom":Ljava/lang/String;
    const/16 v5, 0x65

    aput-boolean v14, v7, v5

    .line 196
    .end local v2    # "renderedCustom":Ljava/lang/String;
    :goto_1
    const-string v5, "%s:\n%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const v12, 0x7f070036

    const/16 v13, 0x68

    aput-boolean v14, v7, v13

    .line 197
    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    aput-object v2, v11, v14

    const/16 v12, 0x69

    aput-boolean v14, v7, v12

    .line 196
    invoke-static {v5, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v1

    .line 199
    const/16 v5, 0x6a

    aput-boolean v14, v7, v5

    .line 186
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .local v1, "i":I
    const/16 v5, 0x6d

    aput-boolean v14, v7, v5

    goto :goto_0

    .line 193
    .end local v1    # "i":I
    :catch_0
    move-exception v5

    const/16 v5, 0x66

    aput-boolean v14, v7, v5

    .line 194
    const v5, 0x7f07001f

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x67

    aput-boolean v14, v7, v5

    goto :goto_1

    .line 200
    :cond_0
    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    const/16 v5, 0x6b

    aput-boolean v14, v7, v5

    .line 201
    iget-object v5, p0, Lcz/martykan/forecastie/activities/SettingsActivity;->SAMPLE_DATE:Ljava/util/Date;

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v1

    const/16 v5, 0x6c

    aput-boolean v14, v7, v5

    goto :goto_2

    .line 205
    :cond_1
    aget-object v5, v0, v6

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    const/16 v5, 0x6e

    aput-boolean v14, v7, v5

    .line 206
    invoke-virtual {v4, v10}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    const/16 v4, 0x6f

    aput-boolean v14, v7, v4

    .line 208
    const-string v4, "dateFormat"

    invoke-direct {p0, v4}, Lcz/martykan/forecastie/activities/SettingsActivity;->setListPreferenceSummary(Ljava/lang/String;)V

    .line 209
    const/16 v4, 0x70

    aput-boolean v14, v7, v4

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/SettingsActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 41
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "theme"

    const-string v3, "fresh"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcz/martykan/forecastie/activities/SettingsActivity;->getTheme(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/SettingsActivity;->setTheme(I)V

    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    .line 45
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    aput-boolean v4, v1, v2

    .line 46
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04003b

    invoke-virtual {v2, v3, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x5

    aput-boolean v4, v1, v3

    .line 47
    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    .line 48
    const v0, 0x7f0e00b1

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const/4 v2, 0x7

    aput-boolean v4, v1, v2

    .line 49
    new-instance v2, Lcz/martykan/forecastie/activities/SettingsActivity$1;

    invoke-direct {v2, p0}, Lcz/martykan/forecastie/activities/SettingsActivity$1;-><init>(Lcz/martykan/forecastie/activities/SettingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x8

    aput-boolean v4, v1, v0

    .line 56
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/SettingsActivity;->addPreferencesFromResource(I)V

    .line 57
    const/16 v0, 0x9

    aput-boolean v4, v1, v0

    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 79
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const/16 v1, 0x15

    aput-boolean v3, v0, v1

    .line 80
    invoke-virtual {p0}, Lcz/martykan/forecastie/activities/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x16

    aput-boolean v3, v0, v2

    .line 81
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 82
    const/16 v1, 0x17

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/SettingsActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 141
    if-eq p1, v2, :cond_0

    const/16 v0, 0x45

    aput-boolean v2, v3, v0

    .line 149
    :goto_0
    const/16 v0, 0x4f

    aput-boolean v2, v3, v0

    return-void

    .line 142
    :cond_0
    array-length v1, p3

    if-gtz v1, :cond_1

    const/16 v1, 0x46

    aput-boolean v2, v3, v1

    :goto_1
    const/16 v1, 0x49

    aput-boolean v2, v3, v1

    move v1, v0

    :goto_2
    const/16 v0, 0x4a

    aput-boolean v2, v3, v0

    .line 143
    const-string v0, "updateLocationAutomatically"

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const/16 v4, 0x4b

    aput-boolean v2, v3, v4

    .line 144
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 145
    if-nez v1, :cond_3

    const/16 v0, 0x4c

    aput-boolean v2, v3, v0

    goto :goto_0

    .line 142
    :cond_1
    aget v1, p3, v0

    if-eqz v1, :cond_2

    const/16 v1, 0x47

    aput-boolean v2, v3, v1

    goto :goto_1

    :cond_2
    const/16 v0, 0x48

    aput-boolean v2, v3, v0

    move v1, v2

    goto :goto_2

    .line 145
    :cond_3
    const/16 v0, 0x4d

    aput-boolean v2, v3, v0

    .line 146
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/SettingsActivity;->privacyGuardWorkaround()V

    const/16 v0, 0x4e

    aput-boolean v2, v3, v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 61
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    .line 62
    invoke-virtual {p0}, Lcz/martykan/forecastie/activities/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/16 v1, 0xb

    aput-boolean v2, v0, v1

    .line 64
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/SettingsActivity;->setCustomDateEnabled()V

    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    .line 65
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/SettingsActivity;->updateDateFormatList()V

    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    .line 68
    const-string v1, "unit"

    invoke-direct {p0, v1}, Lcz/martykan/forecastie/activities/SettingsActivity;->setListPreferenceSummary(Ljava/lang/String;)V

    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    .line 69
    const-string v1, "lengthUnit"

    invoke-direct {p0, v1}, Lcz/martykan/forecastie/activities/SettingsActivity;->setListPreferenceSummary(Ljava/lang/String;)V

    const/16 v1, 0xf

    aput-boolean v2, v0, v1

    .line 70
    const-string v1, "speedUnit"

    invoke-direct {p0, v1}, Lcz/martykan/forecastie/activities/SettingsActivity;->setListPreferenceSummary(Ljava/lang/String;)V

    const/16 v1, 0x10

    aput-boolean v2, v0, v1

    .line 71
    const-string v1, "pressureUnit"

    invoke-direct {p0, v1}, Lcz/martykan/forecastie/activities/SettingsActivity;->setListPreferenceSummary(Ljava/lang/String;)V

    const/16 v1, 0x11

    aput-boolean v2, v0, v1

    .line 72
    const-string v1, "refreshInterval"

    invoke-direct {p0, v1}, Lcz/martykan/forecastie/activities/SettingsActivity;->setListPreferenceSummary(Ljava/lang/String;)V

    const/16 v1, 0x12

    aput-boolean v2, v0, v1

    .line 73
    const-string v1, "windDirectionFormat"

    invoke-direct {p0, v1}, Lcz/martykan/forecastie/activities/SettingsActivity;->setListPreferenceSummary(Ljava/lang/String;)V

    const/16 v1, 0x13

    aput-boolean v2, v0, v1

    .line 74
    const-string v1, "theme"

    invoke-direct {p0, v1}, Lcz/martykan/forecastie/activities/SettingsActivity;->setListPreferenceSummary(Ljava/lang/String;)V

    .line 75
    const/16 v1, 0x14

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/SettingsActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 86
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    const/16 v4, 0x18

    aput-boolean v2, v3, v4

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x2f

    aput-boolean v2, v3, v0

    .line 120
    :goto_1
    const/16 v0, 0x3e

    aput-boolean v2, v3, v0

    return-void

    .line 86
    :sswitch_0
    const-string v4, "unit"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x19

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_0
    const/16 v0, 0x1a

    aput-boolean v2, v3, v0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v4, "lengthUnit"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x1b

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_1
    const/16 v0, 0x1c

    aput-boolean v2, v3, v0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v4, "speedUnit"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x1d

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    const/16 v4, 0x1e

    aput-boolean v2, v3, v4

    goto :goto_0

    :sswitch_3
    const-string v4, "pressureUnit"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x1f

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    const/16 v4, 0x20

    aput-boolean v2, v3, v4

    goto :goto_0

    :sswitch_4
    const-string v4, "windDirectionFormat"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const/16 v4, 0x21

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    const/16 v4, 0x22

    aput-boolean v2, v3, v4

    goto :goto_0

    :sswitch_5
    const-string v4, "refreshInterval"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x23

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    const/16 v4, 0x24

    aput-boolean v2, v3, v4

    goto :goto_0

    :sswitch_6
    const-string v4, "dateFormat"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const/16 v4, 0x25

    aput-boolean v2, v3, v4

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x6

    const/16 v4, 0x26

    aput-boolean v2, v3, v4

    goto/16 :goto_0

    :sswitch_7
    const-string v4, "dateFormatCustom"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v4, 0x27

    aput-boolean v2, v3, v4

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x7

    const/16 v4, 0x28

    aput-boolean v2, v3, v4

    goto/16 :goto_0

    :sswitch_8
    const-string v4, "theme"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const/16 v4, 0x29

    aput-boolean v2, v3, v4

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x8

    const/16 v4, 0x2a

    aput-boolean v2, v3, v4

    goto/16 :goto_0

    :sswitch_9
    const-string v4, "updateLocationAutomatically"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const/16 v4, 0x2b

    aput-boolean v2, v3, v4

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x9

    const/16 v4, 0x2c

    aput-boolean v2, v3, v4

    goto/16 :goto_0

    :sswitch_a
    const-string v4, "apiKey"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const/16 v4, 0x2d

    aput-boolean v2, v3, v4

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0xa

    const/16 v4, 0x2e

    aput-boolean v2, v3, v4

    goto/16 :goto_0

    .line 92
    :pswitch_0
    invoke-direct {p0, p2}, Lcz/martykan/forecastie/activities/SettingsActivity;->setListPreferenceSummary(Ljava/lang/String;)V

    .line 93
    const/16 v0, 0x30

    aput-boolean v2, v3, v0

    goto/16 :goto_1

    .line 95
    :pswitch_1
    invoke-direct {p0, p2}, Lcz/martykan/forecastie/activities/SettingsActivity;->setListPreferenceSummary(Ljava/lang/String;)V

    const/16 v0, 0x31

    aput-boolean v2, v3, v0

    .line 96
    invoke-static {p0}, Lcz/martykan/forecastie/AlarmReceiver;->setRecurringAlarm(Landroid/content/Context;)V

    .line 97
    const/16 v0, 0x32

    aput-boolean v2, v3, v0

    goto/16 :goto_1

    .line 99
    :pswitch_2
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/SettingsActivity;->setCustomDateEnabled()V

    const/16 v0, 0x33

    aput-boolean v2, v3, v0

    .line 100
    invoke-direct {p0, p2}, Lcz/martykan/forecastie/activities/SettingsActivity;->setListPreferenceSummary(Ljava/lang/String;)V

    .line 101
    const/16 v0, 0x34

    aput-boolean v2, v3, v0

    goto/16 :goto_1

    .line 103
    :pswitch_3
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/SettingsActivity;->updateDateFormatList()V

    .line 104
    const/16 v0, 0x35

    aput-boolean v2, v3, v0

    goto/16 :goto_1

    .line 107
    :pswitch_4
    invoke-virtual {p0, v1, v1}, Lcz/martykan/forecastie/activities/SettingsActivity;->overridePendingTransition(II)V

    const/16 v0, 0x36

    aput-boolean v2, v3, v0

    .line 108
    invoke-virtual {p0}, Lcz/martykan/forecastie/activities/SettingsActivity;->finish()V

    const/16 v0, 0x37

    aput-boolean v2, v3, v0

    .line 109
    invoke-virtual {p0, v1, v1}, Lcz/martykan/forecastie/activities/SettingsActivity;->overridePendingTransition(II)V

    const/16 v0, 0x38

    aput-boolean v2, v3, v0

    .line 110
    invoke-virtual {p0}, Lcz/martykan/forecastie/activities/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 111
    const/16 v0, 0x39

    aput-boolean v2, v3, v0

    goto/16 :goto_1

    .line 113
    :pswitch_5
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, v2, :cond_b

    const/16 v0, 0x3a

    aput-boolean v2, v3, v0

    goto/16 :goto_1

    :cond_b
    const/16 v0, 0x3b

    aput-boolean v2, v3, v0

    .line 114
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/SettingsActivity;->requestReadLocationPermission()V

    const/16 v0, 0x3c

    aput-boolean v2, v3, v0

    goto/16 :goto_1

    .line 118
    :pswitch_6
    invoke-direct {p0, p2}, Lcz/martykan/forecastie/activities/SettingsActivity;->checkKey(Ljava/lang/String;)V

    const/16 v0, 0x3d

    aput-boolean v2, v3, v0

    goto/16 :goto_1

    .line 86
    :sswitch_data_0
    .sparse-switch
        -0x61e62d95 -> :sswitch_2
        -0x541ec21b -> :sswitch_a
        -0x42ae035b -> :sswitch_9
        -0x37c76ea -> :sswitch_7
        0x36d984 -> :sswitch_0
        0x69375c9 -> :sswitch_8
        0x940d945 -> :sswitch_6
        0x1acf072e -> :sswitch_4
        0x4532a58a -> :sswitch_1
        0x46e7b969 -> :sswitch_3
        0x7265d0c0 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
