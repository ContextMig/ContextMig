.class public Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment$LicensesDialogFragment;
.super Landroid/app/DialogFragment;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LicensesDialogFragment"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment$LicensesDialogFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x59a2973d71277d68L    # 6.144773465024554E123

    const-string v2, "org/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment$LicensesDialogFragment"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment$LicensesDialogFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment$LicensesDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 349
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static newInstance()Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment$LicensesDialogFragment;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment$LicensesDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 352
    new-instance v1, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment$LicensesDialogFragment;

    invoke-direct {v1}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment$LicensesDialogFragment;-><init>()V

    aput-boolean v2, v0, v2

    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment$LicensesDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 357
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment$LicensesDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x2

    aput-boolean v5, v0, v2

    .line 358
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment$LicensesDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x3

    aput-boolean v5, v0, v3

    .line 359
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v2, 0x4

    aput-boolean v5, v0, v2

    .line 360
    const/4 v2, 0x0

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/4 v2, 0x5

    aput-boolean v5, v0, v2

    .line 361
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment$LicensesDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d002f

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/4 v2, 0x6

    aput-boolean v5, v0, v2

    .line 362
    const v2, 0x7f0800a0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/4 v2, 0x7

    aput-boolean v5, v0, v2

    .line 363
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/16 v2, 0x8

    aput-boolean v5, v0, v2

    .line 364
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment$LicensesDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Open source licenses"

    const/16 v4, 0x9

    aput-boolean v5, v0, v4

    .line 365
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const/16 v3, 0xa

    aput-boolean v5, v0, v3

    .line 366
    invoke-virtual {v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    const/16 v4, 0xb

    aput-boolean v5, v0, v4

    .line 367
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0xc

    aput-boolean v5, v0, v2

    .line 368
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 364
    const/16 v2, 0xd

    aput-boolean v5, v0, v2

    return-object v1
.end method
