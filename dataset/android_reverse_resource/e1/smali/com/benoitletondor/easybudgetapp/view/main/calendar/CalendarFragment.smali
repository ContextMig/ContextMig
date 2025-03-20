.class public Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;
.super Lcom/roomorama/caldroid/CaldroidFragment;
.source "CalendarFragment.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private selectedDate:Ljava/util/Date;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1bc9645d7b880200L    # -5.591632996197297E174

    const-string v2, "com/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0}, Lcom/roomorama/caldroid/CaldroidFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getNewDatesGridAdapter(II)Lcom/roomorama/caldroid/CaldroidGridAdapter;
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v6

    .line 36
    new-instance v0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->getCaldroidData()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->extraData:Ljava/util/Map;

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;-><init>(Landroid/content/Context;IILjava/util/Map;Ljava/util/Map;)V

    aput-boolean v7, v6, v7

    return-object v0
.end method

.method public getSelectedDate()Ljava/util/Date;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->selectedDate:Ljava/util/Date;

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public setSelectedDates(Ljava/util/Date;Ljava/util/Date;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 42
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->selectedDate:Ljava/util/Date;

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 43
    invoke-super {p0, p1, p2}, Lcom/roomorama/caldroid/CaldroidFragment;->setSelectedDates(Ljava/util/Date;Ljava/util/Date;)V

    const/4 v1, 0x3

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v0, v1

    .line 46
    invoke-super {p0, p1}, Lcom/roomorama/caldroid/CaldroidFragment;->moveToDate(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 49
    :goto_0
    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    return-void

    .line 48
    :catch_0
    move-exception v1

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
