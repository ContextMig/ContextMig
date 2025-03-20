.class final Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7968dc8e7f8e27adL    # -6.526468902799753E-277

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/SettingsActivity$1"

    const/16 v3, 0x12

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity$1;->$jacocoInit()[Z

    move-result-object v5

    .line 54
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "stringValue":Ljava/lang/String;
    instance-of v3, p1, Landroid/preference/ListPreference;

    if-eqz v3, :cond_1

    move-object v3, p1

    .line 59
    check-cast v3, Landroid/preference/ListPreference;

    aput-boolean v8, v5, v8

    .line 60
    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 63
    .local v0, "index":I
    if-ltz v0, :cond_0

    const/4 v4, 0x2

    aput-boolean v8, v5, v4

    .line 65
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v4, 0x3

    aput-boolean v8, v5, v4

    .line 63
    :goto_0
    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 68
    const/4 v3, 0x5

    aput-boolean v8, v5, v3

    .line 96
    .end local v0    # "index":I
    :goto_1
    const/16 v3, 0x11

    aput-boolean v8, v5, v3

    return v8

    .line 65
    .restart local v0    # "index":I
    :cond_0
    const/4 v3, 0x4

    aput-boolean v8, v5, v3

    move-object v3, v4

    goto :goto_0

    .line 69
    .end local v0    # "index":I
    :cond_1
    instance-of v3, p1, Landroid/preference/RingtonePreference;

    if-eqz v3, :cond_4

    const/4 v3, 0x6

    aput-boolean v8, v5, v3

    .line 72
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x7

    aput-boolean v8, v5, v3

    .line 74
    const v3, 0x7f07005d

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(I)V

    const/16 v3, 0x8

    aput-boolean v8, v5, v3

    goto :goto_1

    .line 77
    :cond_2
    const/16 v3, 0x9

    aput-boolean v8, v5, v3

    .line 78
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/16 v7, 0xa

    aput-boolean v8, v5, v7

    .line 77
    invoke-static {v3, v6}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 80
    .local v1, "ringtone":Landroid/media/Ringtone;
    if-nez v1, :cond_3

    const/16 v3, 0xb

    aput-boolean v8, v5, v3

    .line 82
    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/16 v3, 0xc

    aput-boolean v8, v5, v3

    .line 89
    :goto_2
    const/16 v3, 0xf

    aput-boolean v8, v5, v3

    goto :goto_1

    .line 86
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    aput-boolean v8, v5, v4

    .line 87
    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/16 v3, 0xe

    aput-boolean v8, v5, v3

    goto :goto_2

    .line 94
    .end local v1    # "ringtone":Landroid/media/Ringtone;
    :cond_4
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/16 v3, 0x10

    aput-boolean v8, v5, v3

    goto :goto_1
.end method
