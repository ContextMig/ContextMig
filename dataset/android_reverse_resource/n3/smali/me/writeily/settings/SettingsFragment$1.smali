.class Lme/writeily/settings/SettingsFragment$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/writeily/settings/SettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/settings/SettingsFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/settings/SettingsFragment$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3e985a3ea6d016d7L    # -1.2398090787098484E7

    const-string v2, "me/writeily/settings/SettingsFragment$1"

    const/16 v3, 0x16

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/settings/SettingsFragment$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/settings/SettingsFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/settings/SettingsFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    iput-object p1, p0, Lme/writeily/settings/SettingsFragment$1;->this$0:Lme/writeily/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const v6, 0x7f0600ab

    const/4 v5, 0x3

    const/4 v1, 0x1

    invoke-static {}, Lme/writeily/settings/SettingsFragment$1;->$jacocoInit()[Z

    move-result-object v2

    .line 43
    check-cast p2, Ljava/lang/String;

    aput-boolean v1, v2, v1

    .line 44
    if-nez p2, :cond_0

    const/4 v0, 0x2

    aput-boolean v1, v2, v0

    .line 45
    :goto_0
    iget-object v0, p0, Lme/writeily/settings/SettingsFragment$1;->this$0:Lme/writeily/settings/SettingsFragment;

    iget-object v0, v0, Lme/writeily/settings/SettingsFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v3, 0x5

    aput-boolean v1, v2, v3

    .line 46
    const-string v3, "user_pin"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v3, 0x6

    aput-boolean v1, v2, v3

    .line 47
    iget-object v3, p0, Lme/writeily/settings/SettingsFragment$1;->this$0:Lme/writeily/settings/SettingsFragment;

    const v4, 0x7f0600aa

    invoke-virtual {v3, v4}, Lme/writeily/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lme/writeily/settings/SettingsFragment$1;->this$0:Lme/writeily/settings/SettingsFragment;

    invoke-virtual {v4, v6}, Lme/writeily/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x7

    aput-boolean v1, v2, v0

    .line 48
    iget-object v0, p0, Lme/writeily/settings/SettingsFragment$1;->this$0:Lme/writeily/settings/SettingsFragment;

    iget-object v0, v0, Lme/writeily/settings/SettingsFragment;->pinPreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lme/writeily/settings/SettingsFragment$1;->this$0:Lme/writeily/settings/SettingsFragment;

    iget-object v3, v3, Lme/writeily/settings/SettingsFragment;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v4, p0, Lme/writeily/settings/SettingsFragment$1;->this$0:Lme/writeily/settings/SettingsFragment;

    const/16 v5, 0x8

    aput-boolean v1, v2, v5

    .line 49
    invoke-virtual {v4, v6}, Lme/writeily/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lme/writeily/settings/SettingsFragment$1;->this$0:Lme/writeily/settings/SettingsFragment;

    const v6, 0x7f060059

    invoke-virtual {v5, v6}, Lme/writeily/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    aput-boolean v1, v2, v4

    .line 48
    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 50
    const/16 v0, 0xa

    aput-boolean v1, v2, v0

    move v0, v1

    .line 60
    :goto_1
    return v0

    .line 44
    :cond_0
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    aput-boolean v1, v2, v5

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lme/writeily/settings/SettingsFragment$1;->this$0:Lme/writeily/settings/SettingsFragment;

    invoke-virtual {v0, v6}, Lme/writeily/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    aput-boolean v1, v2, v0

    goto :goto_0

    .line 51
    :cond_2
    iget-object v0, p0, Lme/writeily/settings/SettingsFragment$1;->this$0:Lme/writeily/settings/SettingsFragment;

    const v3, 0x7f0600ad

    invoke-virtual {v0, v3}, Lme/writeily/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xb

    aput-boolean v1, v2, v0

    .line 52
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lme/writeily/settings/SettingsFragment$1;->this$0:Lme/writeily/settings/SettingsFragment;

    iget-object v3, v3, Lme/writeily/settings/SettingsFragment;->context:Landroid/content/Context;

    const-class v4, Lme/writeily/PinActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0xc

    aput-boolean v1, v2, v3

    .line 53
    const-string v3, "set_pin"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0xd

    aput-boolean v1, v2, v3

    .line 54
    iget-object v3, p0, Lme/writeily/settings/SettingsFragment$1;->this$0:Lme/writeily/settings/SettingsFragment;

    invoke-virtual {v3, v0, v5}, Lme/writeily/settings/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/16 v0, 0xe

    aput-boolean v1, v2, v0

    .line 55
    const/16 v0, 0xf

    aput-boolean v1, v2, v0

    .line 60
    :goto_2
    const/4 v0, 0x0

    const/16 v3, 0x15

    aput-boolean v1, v2, v3

    goto :goto_1

    .line 55
    :cond_3
    iget-object v0, p0, Lme/writeily/settings/SettingsFragment$1;->this$0:Lme/writeily/settings/SettingsFragment;

    const v3, 0x7f0600a2

    invoke-virtual {v0, v3}, Lme/writeily/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x10

    aput-boolean v1, v2, v0

    goto :goto_2

    :cond_4
    const/16 v0, 0x11

    aput-boolean v1, v2, v0

    .line 56
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lme/writeily/settings/SettingsFragment$1;->this$0:Lme/writeily/settings/SettingsFragment;

    iget-object v3, v3, Lme/writeily/settings/SettingsFragment;->context:Landroid/content/Context;

    const-class v4, Lme/writeily/AlphanumericPinActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x12

    aput-boolean v1, v2, v3

    .line 57
    const-string v3, "set_pin"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x13

    aput-boolean v1, v2, v3

    .line 58
    iget-object v3, p0, Lme/writeily/settings/SettingsFragment$1;->this$0:Lme/writeily/settings/SettingsFragment;

    invoke-virtual {v3, v0, v5}, Lme/writeily/settings/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/16 v0, 0x14

    aput-boolean v1, v2, v0

    goto :goto_2
.end method
