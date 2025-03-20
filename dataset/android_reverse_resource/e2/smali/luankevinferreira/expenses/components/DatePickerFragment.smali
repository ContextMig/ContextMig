.class public Lluankevinferreira/expenses/components/DatePickerFragment;
.super Landroid/app/DialogFragment;
.source "DatePickerFragment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private button:Landroid/widget/Button;

.field private calendar:Ljava/util/Calendar;

.field private format:Ljava/text/SimpleDateFormat;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lluankevinferreira/expenses/components/DatePickerFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xead17d6de47b33L

    const-string v2, "luankevinferreira/expenses/components/DatePickerFragment"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lluankevinferreira/expenses/components/DatePickerFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/components/DatePickerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lluankevinferreira/expenses/components/DatePickerFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 30
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v4, v1, v4

    .line 31
    invoke-virtual {p0}, Lluankevinferreira/expenses/components/DatePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0f0076

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lluankevinferreira/expenses/components/DatePickerFragment;->button:Landroid/widget/Button;

    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    .line 33
    new-instance v0, Ljava/util/Locale;

    const v2, 0x7f080046

    invoke-virtual {p0, v2}, Lluankevinferreira/expenses/components/DatePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080038

    invoke-virtual {p0, v3}, Lluankevinferreira/expenses/components/DatePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    .line 34
    new-instance v2, Ljava/text/SimpleDateFormat;

    const v3, 0x7f08003b

    invoke-virtual {p0, v3}, Lluankevinferreira/expenses/components/DatePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lluankevinferreira/expenses/components/DatePickerFragment;->format:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x4

    aput-boolean v4, v1, v0

    .line 35
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lluankevinferreira/expenses/components/DatePickerFragment;->calendar:Ljava/util/Calendar;

    .line 36
    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lluankevinferreira/expenses/components/DatePickerFragment;->$jacocoInit()[Z

    move-result-object v6

    .line 40
    iget-object v0, p0, Lluankevinferreira/expenses/components/DatePickerFragment;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v0, 0x6

    aput-boolean v7, v6, v0

    .line 41
    iget-object v0, p0, Lluankevinferreira/expenses/components/DatePickerFragment;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v0, 0x7

    aput-boolean v7, v6, v0

    .line 42
    iget-object v0, p0, Lluankevinferreira/expenses/components/DatePickerFragment;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v0, 0x8

    aput-boolean v7, v6, v0

    .line 45
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lluankevinferreira/expenses/components/DatePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    const/16 v1, 0x9

    aput-boolean v7, v6, v1

    return-object v0
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lluankevinferreira/expenses/components/DatePickerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1, p2, p3, p4}, Ljava/util/GregorianCalendar;-><init>(III)V

    const/16 v2, 0xa

    aput-boolean v4, v0, v2

    .line 51
    iget-object v2, p0, Lluankevinferreira/expenses/components/DatePickerFragment;->button:Landroid/widget/Button;

    iget-object v3, p0, Lluankevinferreira/expenses/components/DatePickerFragment;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 52
    const/16 v1, 0xb

    aput-boolean v4, v0, v1

    return-void
.end method
