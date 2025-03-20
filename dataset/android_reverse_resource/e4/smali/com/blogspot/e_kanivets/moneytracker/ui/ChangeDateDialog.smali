.class public Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;
.super Landroid/app/AlertDialog;
.source "ChangeDateDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private date:Ljava/util/Date;

.field datePicker:Landroid/widget/DatePicker;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090045
    .end annotation
.end field

.field private listener:Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog$OnDateChangedListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2ea9721704aaebdfL    # -6.846188664972309E83

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Date;Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog$OnDateChangedListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;->date:Ljava/util/Date;

    .line 33
    iput-object p3, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;->listener:Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog$OnDateChangedListener;

    .line 34
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090026
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;->dismiss()V

    .line 62
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public ok()V
    .locals 6
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090027
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;->$jacocoInit()[Z

    move-result-object v1

    .line 50
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 51
    .local v0, "cal":Ljava/util/Calendar;
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;->datePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 52
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;->datePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 53
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;->datePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 55
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;->listener:Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog$OnDateChangedListener;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog$OnDateChangedListener;->OnDataChanged(Ljava/util/Date;)V

    .line 56
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;->dismiss()V

    .line 57
    aput-boolean v4, v1, v5

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;->$jacocoInit()[Z

    move-result-object v1

    .line 38
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v2, 0x7f0b003d

    invoke-virtual {p0, v2}, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;->setContentView(I)V

    .line 40
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Dialog;)Lbutterknife/Unbinder;

    .line 42
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 43
    .local v0, "cal":Ljava/util/Calendar;
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;->date:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 45
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;->datePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 46
    aput-boolean v7, v1, v7

    return-void
.end method
