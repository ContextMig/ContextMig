.class public Lcom/benoitletondor/easybudgetapp/view/DatePickerDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "DatePickerDialogFragment.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private listener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private originalDate:Ljava/util/Date;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/DatePickerDialogFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2f9703a2cd3ab64eL    # -2.3145261173774273E79

    const-string v2, "com/benoitletondor/easybudgetapp/view/DatePickerDialogFragment"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/DatePickerDialogFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/DatePickerDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 44
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "DatePickerDialogFragment is supposed to be instanciated with the date+listener constructor"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    aput-boolean v3, v0, v3

    throw v1
.end method

.method public constructor <init>(Ljava/util/Date;Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .locals 3
    .param p1    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/DatePickerDialog$OnDateSetListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/DatePickerDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/DatePickerDialogFragment;->originalDate:Ljava/util/Date;

    .line 51
    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/view/DatePickerDialogFragment;->listener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 52
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x5

    const/4 v7, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/DatePickerDialogFragment;->$jacocoInit()[Z

    move-result-object v6

    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x3

    aput-boolean v7, v6, v1

    .line 62
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/DatePickerDialogFragment;->originalDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x4

    aput-boolean v7, v6, v1

    .line 64
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput-boolean v7, v6, v2

    .line 65
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v1, 0x6

    aput-boolean v7, v6, v1

    .line 66
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v0, 0x7

    aput-boolean v7, v6, v0

    .line 69
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/DatePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/DatePickerDialogFragment;->listener:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    const/16 v1, 0x8

    aput-boolean v7, v6, v1

    .line 70
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/DatePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v2

    const-string v3, "init_date"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 71
    const/16 v1, 0x9

    aput-boolean v7, v6, v1

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/DatePickerDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/DatePickerDialogFragment;->listener:Landroid/app/DatePickerDialog$OnDateSetListener;

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    .line 79
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 80
    const/16 v1, 0xb

    aput-boolean v2, v0, v1

    return-void
.end method
