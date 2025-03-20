.class public Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity$NotificationPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationPreferenceFragment"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity$NotificationPreferenceFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x38b6a37c6483a9c3L    # -2.6336766031337317E35

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/SettingsActivity$NotificationPreferenceFragment"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity$NotificationPreferenceFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity$NotificationPreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 296
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity$NotificationPreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 299
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v2, v0, v2

    .line 301
    invoke-virtual {p0, v2}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity$NotificationPreferenceFragment;->setHasOptionsMenu(Z)V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 307
    const-string v1, "notifications_new_message_ringtone"

    invoke-virtual {p0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity$NotificationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v1}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;->access$000(Landroid/preference/Preference;)V

    .line 308
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity$NotificationPreferenceFragment;->$jacocoInit()[Z

    move-result-object v3

    .line 312
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 313
    .local v0, "id":I
    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    const/4 v2, 0x4

    aput-boolean v1, v3, v2

    .line 314
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity$NotificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity$NotificationPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 315
    const/4 v2, 0x5

    aput-boolean v1, v3, v2

    .line 317
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    const/4 v4, 0x6

    aput-boolean v1, v3, v4

    move v1, v2

    goto :goto_0
.end method
