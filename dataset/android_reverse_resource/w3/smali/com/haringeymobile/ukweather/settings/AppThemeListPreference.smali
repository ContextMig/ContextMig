.class public Lcom/haringeymobile/ukweather/settings/AppThemeListPreference;
.super Landroid/preference/ListPreference;
.source "AppThemeListPreference.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final DEFAULT_APP_THEME_VALUE:Ljava/lang/String; = "0"

.field private static final DEFAULT_COLOUR_VALUE:I


# instance fields
.field private resourceIds:[I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/settings/AppThemeListPreference;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x177f95b07d8ca8c6L    # -2.3965990621906677E195

    const-string v2, "com/haringeymobile/ukweather/settings/AppThemeListPreference"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/settings/AppThemeListPreference;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/settings/AppThemeListPreference;->$jacocoInit()[Z

    move-result-object v2

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/haringeymobile/ukweather/settings/AppThemeListPreference;->resourceIds:[I

    aput-boolean v6, v2, v1

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    aput-boolean v6, v2, v6

    .line 32
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/haringeymobile/ukweather/settings/AppThemeListPreference;->resourceIds:[I

    const/4 v4, 0x2

    aput-boolean v6, v2, v4

    .line 33
    const/4 v4, 0x3

    aput-boolean v6, v2, v4

    move v0, v1

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    const/4 v4, 0x4

    aput-boolean v6, v2, v4

    .line 34
    iget-object v4, p0, Lcom/haringeymobile/ukweather/settings/AppThemeListPreference;->resourceIds:[I

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    aput v5, v4, v0

    .line 33
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x5

    aput-boolean v6, v2, v4

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    const/4 v1, 0x6

    aput-boolean v6, v2, v1

    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/settings/AppThemeListPreference;->$jacocoInit()[Z

    move-result-object v6

    .line 42
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/settings/AppThemeListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/settings/AppThemeListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/haringeymobile/ukweather/settings/AppThemeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    const/4 v0, 0x7

    aput-boolean v7, v6, v0

    .line 44
    new-instance v0, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter;

    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/settings/AppThemeListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c008a

    const/16 v3, 0x8

    aput-boolean v7, v6, v3

    .line 45
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/settings/AppThemeListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/haringeymobile/ukweather/settings/AppThemeListPreference;->resourceIds:[I

    invoke-direct/range {v0 .. v5}, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[II)V

    const/16 v1, 0x9

    aput-boolean v7, v6, v1

    .line 46
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v0, 0xa

    aput-boolean v7, v6, v0

    .line 47
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 48
    const/16 v0, 0xb

    aput-boolean v7, v6, v0

    return-void
.end method
