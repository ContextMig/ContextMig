.class Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$3;
.super Ljava/lang/Object;
.source "PreferencesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xab183bb2dfb98e9L

    const-string v2, "com/benoitletondor/easybudgetapp/view/PreferencesFragment$3"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$3;->$jacocoInit()[Z

    move-result-object v0

    .line 147
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$3;->$jacocoInit()[Z

    move-result-object v1

    .line 153
    :try_start_0
    new-instance v0, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    const/4 v3, 0x1

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 154
    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    const/4 v3, 0x2

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 155
    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->buildAppInvitesReferrerDeeplink(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;->setDeepLink(Landroid/net/Uri;)Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;

    move-result-object v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 156
    invoke-virtual {v0}, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 158
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Landroid/support/v4/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    const/4 v0, 0x5

    aput-boolean v5, v1, v0

    .line 165
    :goto_0
    const/4 v0, 0x0

    const/16 v2, 0x8

    aput-boolean v5, v1, v2

    return v0

    .line 160
    :catch_0
    move-exception v0

    const/4 v2, 0x6

    aput-boolean v5, v1, v2

    .line 162
    const-string v2, "An error occured during app invites activity start"

    invoke-static {v2, v0}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x7

    aput-boolean v5, v1, v0

    goto :goto_0
.end method
