.class public Lcom/haringeymobile/ukweather/settings/CustomListPreference;
.super Landroid/preference/ListPreference;
.source "CustomListPreference.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/settings/CustomListPreference;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x10dae9c6b01af4e7L    # 1.775122920324494E-227

    const-string v2, "com/haringeymobile/ukweather/settings/CustomListPreference"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/settings/CustomListPreference;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/settings/CustomListPreference;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/settings/CustomListPreference;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/settings/CustomListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f03003f

    aput-boolean v5, v0, v5

    .line 24
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/settings/CustomListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 v2, 0x2

    aput-boolean v5, v0, v2

    .line 26
    invoke-virtual {p1, v1, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x3

    aput-boolean v5, v0, v1

    .line 27
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 28
    const/4 v1, 0x4

    aput-boolean v5, v0, v1

    return-void
.end method
