.class Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x48a2fe2c6183edadL    # -5.2028997314089724E-42

    const-string v2, "org/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment$1"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 131
    iput-object p1, p0, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment$1;->this$0:Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 134
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    aput-boolean v3, v0, v3

    .line 135
    iget-object v2, p0, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment$1;->this$0:Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;

    invoke-virtual {v2}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/asdtm/goodweather/service/NotificationService;->setNotificationServiceAlarm(Landroid/content/Context;Z)V

    .line 137
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return v3
.end method
