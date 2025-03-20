.class public Lme/writeily/dialog/AboutDialog;
.super Landroid/preference/DialogPreference;
.source "AboutDialog.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/dialog/AboutDialog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x47bc30fc0e0eb0cdL    # -1.1642480406205213E-37

    const-string v2, "me/writeily/dialog/AboutDialog"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/dialog/AboutDialog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/dialog/AboutDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 17
    const v1, 0x7f030040

    invoke-virtual {p0, v1}, Lme/writeily/dialog/AboutDialog;->setDialogLayoutResource(I)V

    aput-boolean v2, v0, v2

    .line 18
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lme/writeily/dialog/AboutDialog;->setPositiveButtonText(I)V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 19
    invoke-virtual {p0, v3}, Lme/writeily/dialog/AboutDialog;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 20
    invoke-virtual {p0, v3}, Lme/writeily/dialog/AboutDialog;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 21
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void
.end method
