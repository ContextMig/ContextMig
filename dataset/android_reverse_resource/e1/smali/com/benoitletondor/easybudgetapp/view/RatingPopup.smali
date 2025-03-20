.class public Lcom/benoitletondor/easybudgetapp/view/RatingPopup;
.super Ljava/lang/Object;
.source "RatingPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private activity:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x49a4e1c2af359ae2L    # 5.960722124514222E46

    const-string v2, "com/benoitletondor/easybudgetapp/view/RatingPopup"

    const/16 v3, 0x26

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->activity:Landroid/content/Context;

    .line 54
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)Landroid/content/Context;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->activity:Landroid/content/Context;

    const/16 v2, 0x23

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)Landroid/support/v7/app/AlertDialog;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->buildPositiveStep()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    const/16 v2, 0x24

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)Landroid/support/v7/app/AlertDialog;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->buildNegativeStep()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    const/16 v2, 0x25

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private buildNegativeStep()Landroid/support/v7/app/AlertDialog;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->$jacocoInit()[Z

    move-result-object v0

    .line 142
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->activity:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080089

    const/16 v3, 0x15

    aput-boolean v5, v0, v3

    .line 143
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080088

    const/16 v3, 0x16

    aput-boolean v5, v0, v3

    .line 144
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080086

    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$5;

    invoke-direct {v3, p0}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$5;-><init>(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)V

    const/16 v4, 0x17

    aput-boolean v5, v0, v4

    .line 145
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080087

    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$4;

    invoke-direct {v3, p0}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$4;-><init>(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)V

    const/16 v4, 0x18

    aput-boolean v5, v0, v4

    .line 154
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x19

    aput-boolean v5, v0, v2

    .line 179
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 142
    const/16 v2, 0x1a

    aput-boolean v5, v0, v2

    return-object v1
.end method

.method private buildPositiveStep()Landroid/support/v7/app/AlertDialog;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->$jacocoInit()[Z

    move-result-object v0

    .line 189
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->activity:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08008d

    const/16 v3, 0x1b

    aput-boolean v5, v0, v3

    .line 190
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08008c

    const/16 v3, 0x1c

    aput-boolean v5, v0, v3

    .line 191
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08008a

    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$7;

    invoke-direct {v3, p0}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$7;-><init>(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)V

    const/16 v4, 0x1d

    aput-boolean v5, v0, v4

    .line 192
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08008b

    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$6;

    invoke-direct {v3, p0}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$6;-><init>(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)V

    const/16 v4, 0x1e

    aput-boolean v5, v0, v4

    .line 201
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x1f

    aput-boolean v5, v0, v2

    .line 225
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 189
    const/16 v2, 0x20

    aput-boolean v5, v0, v2

    return-object v1
.end method

.method private buildStep1(Z)Landroid/support/v7/app/AlertDialog;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->$jacocoInit()[Z

    move-result-object v1

    .line 96
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->activity:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080092

    const/16 v4, 0xd

    aput-boolean v6, v1, v4

    .line 97
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080091

    const/16 v4, 0xe

    aput-boolean v6, v1, v4

    .line 98
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08008f

    new-instance v4, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$2;

    invoke-direct {v4, p0}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$2;-><init>(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)V

    const/16 v5, 0xf

    aput-boolean v6, v1, v5

    .line 99
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080090

    new-instance v4, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$1;

    invoke-direct {v4, p0}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)V

    const/16 v5, 0x10

    aput-boolean v6, v1, v5

    .line 108
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 118
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    if-nez p1, :cond_0

    const/16 v2, 0x11

    aput-boolean v6, v1, v2

    .line 132
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    const/16 v3, 0x14

    aput-boolean v6, v1, v3

    return-object v2

    .line 118
    :cond_0
    const/16 v2, 0x12

    aput-boolean v6, v1, v2

    .line 120
    const v2, 0x7f08008e

    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$3;

    invoke-direct {v3, p0}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$3;-><init>(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v2, 0x13

    aput-boolean v6, v1, v2

    goto :goto_0
.end method

.method public static getUserStep(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->$jacocoInit()[Z

    move-result-object v0

    .line 238
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v2, "rating_step"

    sget-object v3, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->STEP_NOT_SHOWN:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    iget v3, v3, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->value:I

    invoke-virtual {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->fromValue(I)Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    move-result-object v1

    const/16 v2, 0x21

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static setRatingPopupStep(Landroid/content/Context;Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->$jacocoInit()[Z

    move-result-object v0

    .line 249
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v2, "rating_step"

    iget v3, p1, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->value:I

    invoke-virtual {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putInt(Ljava/lang/String;I)V

    .line 250
    const/16 v1, 0x22

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public show(Z)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->$jacocoInit()[Z

    move-result-object v2

    .line 67
    if-eqz p1, :cond_0

    aput-boolean v1, v2, v1

    .line 73
    :goto_0
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->activity:Landroid/content/Context;

    sget-object v4, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->STEP_SHOWN:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    invoke-static {v3, v4}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->setRatingPopupStep(Landroid/content/Context;Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;)V

    const/4 v3, 0x5

    aput-boolean v1, v2, v3

    .line 75
    if-nez p1, :cond_2

    const/4 v0, 0x6

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->buildStep1(Z)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    const/16 v3, 0x8

    aput-boolean v1, v2, v3

    .line 76
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 78
    if-eqz p1, :cond_3

    const/16 v0, 0x9

    aput-boolean v1, v2, v0

    .line 84
    :goto_2
    const/16 v0, 0xc

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_3
    return v0

    .line 67
    :cond_0
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->activity:Landroid/content/Context;

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->hasUserCompleteRating(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x2

    aput-boolean v1, v2, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    aput-boolean v1, v2, v3

    .line 69
    const-string v3, "Not showing rating cause user already completed it"

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    .line 70
    const/4 v3, 0x4

    aput-boolean v1, v2, v3

    goto :goto_3

    .line 75
    :cond_2
    const/4 v3, 0x7

    aput-boolean v1, v2, v3

    goto :goto_1

    .line 78
    :cond_3
    const/16 v3, 0xa

    aput-boolean v1, v2, v3

    .line 81
    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->centerDialogButtons(Landroid/support/v7/app/AlertDialog;)V

    const/16 v0, 0xb

    aput-boolean v1, v2, v0

    goto :goto_2
.end method
