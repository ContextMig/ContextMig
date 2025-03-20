.class public Lcom/benoitletondor/easybudgetapp/view/MainActivity;
.super Lcom/benoitletondor/easybudgetapp/view/DBActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;,
        Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final ACTION_SNACKBAR_LENGTH:I = 0x1388

.field public static final ADD_EXPENSE_ACTIVITY_CODE:I = 0x65

.field public static final ANIMATE_TRANSITION_KEY:Ljava/lang/String; = "animate"

.field private static final CALENDAR_SAVED_STATE:Ljava/lang/String; = "calendar_saved_state"

.field public static final CENTER_X_KEY:Ljava/lang/String; = "centerX"

.field public static final CENTER_Y_KEY:Ljava/lang/String; = "centerY"

.field public static final INTENT_EXPENSE_DELETED:Ljava/lang/String; = "intent.expense.deleted"

.field public static final INTENT_RECURRING_EXPENSE_DELETED:Ljava/lang/String; = "intent.expense.monthly.deleted"

.field public static final INTENT_REDIRECT_TO_PREMIUM_EXTRA:Ljava/lang/String; = "intent.extra.premiumshow"

.field public static final INTENT_REDIRECT_TO_SETTINGS_EXTRA:Ljava/lang/String; = "intent.extra.redirecttosettings"

.field public static final INTENT_SHOW_ADD_EXPENSE:Ljava/lang/String; = "intent.addexpense.show"

.field public static final INTENT_SHOW_ADD_RECURRING_EXPENSE:Ljava/lang/String; = "intent.addrecurringexpense.show"

.field public static final INTENT_SHOW_WELCOME_SCREEN:Ljava/lang/String; = "intent.welcomscreen.show"

.field public static final MANAGE_RECURRING_EXPENSE_ACTIVITY_CODE:I = 0x66

.field private static final RECYCLE_VIEW_SAVED_DATE:Ljava/lang/String; = "recycleViewSavedDate"

.field public static final WELCOME_SCREEN_ACTIVITY_CODE:I = 0x67


# instance fields
.field private budgetLine:Landroid/widget/TextView;

.field private budgetLineAmount:Landroid/widget/TextView;

.field private budgetLineContainer:Landroid/view/View;

.field private calendarFragment:Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;

.field private coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

.field private expensesViewAdapter:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

.field private lastStopDate:Ljava/util/Date;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private menu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private recyclerViewPlaceholder:Landroid/view/View;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7b4f00caab5166a0L    # 9.220424548575836E285

    const-string v2, "com/benoitletondor/easybudgetapp/view/MainActivity"

    const/16 v3, 0x114

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 91
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/DBActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->expensesViewAdapter:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    const/16 v2, 0x10c

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lcom/benoitletondor/easybudgetapp/view/MainActivity;Ljava/util/Date;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 91
    invoke-direct {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->updateBalanceDisplayForDay(Ljava/util/Date;)V

    const/16 v1, 0x10d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$200(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->calendarFragment:Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;

    const/16 v2, 0x10e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Landroid/support/design/widget/CoordinatorLayout;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    const/16 v2, 0x10f

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$400(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 91
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->showGenericRecurringDeleteErrorDialog()V

    const/16 v1, 0x110

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$500(Lcom/benoitletondor/easybudgetapp/view/MainActivity;Ljava/util/Date;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 91
    invoke-direct {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->refreshAllForDate(Ljava/util/Date;)V

    const/16 v1, 0x111

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$600(Lcom/benoitletondor/easybudgetapp/view/MainActivity;Landroid/content/Intent;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 91
    invoke-direct {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->updateInvitationStatus(Landroid/content/Intent;)V

    const/16 v1, 0x112

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$700(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->menu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const/16 v2, 0x113

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static buildAppInvitesReferrerDeeplink(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 484
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800ed

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v5

    const-string v6, "local_id"

    invoke-virtual {v5, v6}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6e

    aput-boolean v7, v0, v2

    return-object v1
.end method

.method private initCalendarFragment(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 825
    new-instance v0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;

    invoke-direct {v0}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;-><init>()V

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->calendarFragment:Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;

    const/16 v0, 0xc2

    aput-boolean v6, v1, v0

    .line 827
    if-nez p1, :cond_0

    const/16 v0, 0xc3

    aput-boolean v6, v1, v0

    .line 837
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v2, 0xca

    aput-boolean v6, v1, v2

    .line 838
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xcb

    aput-boolean v6, v1, v3

    .line 839
    const-string v3, "month"

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v3, 0xcc

    aput-boolean v6, v1, v3

    .line 840
    const-string v3, "year"

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v2, 0xcd

    aput-boolean v6, v1, v2

    .line 841
    const-string v2, "enableSwipe"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v2, 0xce

    aput-boolean v6, v1, v2

    .line 842
    const-string v2, "sixWeeksInCalendar"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v2, 0xcf

    aput-boolean v6, v1, v2

    .line 843
    const-string v2, "startDayOfWeek"

    sget v3, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->MONDAY:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v2, 0xd0

    aput-boolean v6, v1, v2

    .line 844
    const-string v2, "enableClickOnDisabledDates"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v2, 0xd1

    aput-boolean v6, v1, v2

    .line 845
    const-string v2, "themeResource"

    const v3, 0x7f0b0197

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v2, 0xd2

    aput-boolean v6, v1, v2

    .line 847
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->calendarFragment:Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;

    invoke-virtual {v2, v0}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->setArguments(Landroid/os/Bundle;)V

    const/16 v0, 0xd3

    aput-boolean v6, v1, v0

    .line 848
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->calendarFragment:Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->setSelectedDates(Ljava/util/Date;Ljava/util/Date;)V

    const/16 v0, 0xd4

    aput-boolean v6, v1, v0

    .line 850
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v2

    const-string v3, "init_date"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    const/16 v2, 0xd5

    aput-boolean v6, v1, v2

    .line 851
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->calendarFragment:Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;

    invoke-virtual {v2, v0}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->setMinDate(Ljava/util/Date;)V

    const/16 v0, 0xd6

    aput-boolean v6, v1, v0

    .line 854
    :goto_1
    new-instance v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;

    invoke-direct {v0, p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;-><init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)V

    const/16 v2, 0xd7

    aput-boolean v6, v1, v2

    .line 939
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->calendarFragment:Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;

    invoke-virtual {v2, v0}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->setCaldroidListener(Lcom/roomorama/caldroid/CaldroidListener;)V

    const/16 v0, 0xd8

    aput-boolean v6, v1, v0

    .line 941
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/16 v2, 0xd9

    aput-boolean v6, v1, v2

    .line 942
    const v2, 0x7f0f0088

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->calendarFragment:Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const/16 v2, 0xda

    aput-boolean v6, v1, v2

    .line 943
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 944
    const/16 v0, 0xdb

    aput-boolean v6, v1, v0

    return-void

    .line 827
    :cond_0
    const-string v0, "calendar_saved_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xc4

    aput-boolean v6, v1, v0

    goto/16 :goto_0

    :cond_1
    const-string v0, "recycleViewSavedDate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0xc5

    aput-boolean v6, v1, v0

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0xc6

    aput-boolean v6, v1, v0

    .line 829
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->calendarFragment:Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;

    const-string v2, "calendar_saved_state"

    invoke-virtual {v0, p1, v2}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->restoreStatesFromKey(Landroid/os/Bundle;Ljava/lang/String;)V

    const/16 v0, 0xc7

    aput-boolean v6, v1, v0

    .line 831
    const-string v0, "recycleViewSavedDate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    const/16 v2, 0xc8

    aput-boolean v6, v1, v2

    .line 832
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->calendarFragment:Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;

    invoke-virtual {v2, v0, v0}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->setSelectedDates(Ljava/util/Date;Ljava/util/Date;)V

    .line 833
    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->lastStopDate:Ljava/util/Date;

    .line 834
    const/16 v0, 0xc9

    aput-boolean v6, v1, v0

    goto :goto_1
.end method

.method private initRecyclerView(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v5

    .line 951
    const v4, 0x7f0f0090

    invoke-virtual {p0, v4}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    iput-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->menu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const/16 v4, 0xdc

    aput-boolean v7, v5, v4

    .line 953
    const v4, 0x7f0f008e

    invoke-virtual {p0, v4}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 954
    .local v0, "background":Landroid/view/View;
    const v1, 0x3f4ccccd    # 0.8f

    .line 955
    .local v1, "backgroundAlpha":F
    const/16 v4, 0xdd

    aput-boolean v7, v5, v4

    .line 957
    new-instance v4, Lcom/benoitletondor/easybudgetapp/view/MainActivity$8;

    invoke-direct {v4, p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$8;-><init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v4, 0xde

    aput-boolean v7, v5, v4

    .line 966
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->menu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    new-instance v6, Lcom/benoitletondor/easybudgetapp/view/MainActivity$9;

    invoke-direct {v6, p0, v0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$9;-><init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity;Landroid/view/View;)V

    invoke-virtual {v4, v6}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setOnFloatingActionsMenuUpdateListener(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;)V

    const/16 v4, 0xdf

    aput-boolean v7, v5, v4

    .line 1031
    const v4, 0x7f0f0092

    invoke-virtual {p0, v4}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    const/16 v6, 0xe0

    aput-boolean v7, v5, v6

    .line 1032
    new-instance v6, Lcom/benoitletondor/easybudgetapp/view/MainActivity$10;

    invoke-direct {v6, p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$10;-><init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)V

    invoke-virtual {v4, v6}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v4, 0xe1

    aput-boolean v7, v5, v4

    .line 1053
    const v4, 0x7f0f0091

    invoke-virtual {p0, v4}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    const/16 v6, 0xe2

    aput-boolean v7, v5, v6

    .line 1054
    new-instance v6, Lcom/benoitletondor/easybudgetapp/view/MainActivity$11;

    invoke-direct {v6, p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$11;-><init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)V

    invoke-virtual {v4, v6}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v4, 0xe3

    aput-boolean v7, v5, v4

    .line 1078
    const v4, 0x7f0f008d

    invoke-virtual {p0, v4}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    iput-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/16 v4, 0xe4

    aput-boolean v7, v5, v4

    .line 1079
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v6, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const/16 v4, 0xe5

    aput-boolean v7, v5, v4

    .line 1081
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const/16 v4, 0xe6

    aput-boolean v7, v5, v4

    .line 1082
    if-nez p1, :cond_0

    const/16 v4, 0xe7

    aput-boolean v7, v5, v4

    .line 1091
    :goto_0
    new-instance v4, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    invoke-direct {v4, p0, v6, v2}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;-><init>(Landroid/app/Activity;Lcom/benoitletondor/easybudgetapp/model/db/DB;Ljava/util/Date;)V

    iput-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->expensesViewAdapter:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    const/16 v4, 0xec

    aput-boolean v7, v5, v4

    .line 1092
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->expensesViewAdapter:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const/16 v4, 0xed

    aput-boolean v7, v5, v4

    .line 1094
    invoke-direct {p0, v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->refreshRecyclerViewForDate(Ljava/util/Date;)V

    const/16 v4, 0xee

    aput-boolean v7, v5, v4

    .line 1095
    invoke-direct {p0, v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->updateBalanceDisplayForDay(Ljava/util/Date;)V

    .line 1096
    const/16 v4, 0xef

    aput-boolean v7, v5, v4

    return-void

    .line 1082
    :cond_0
    const-string v4, "recycleViewSavedDate"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0xe8

    aput-boolean v7, v5, v4

    goto :goto_0

    :cond_1
    const/16 v4, 0xe9

    aput-boolean v7, v5, v4

    .line 1084
    const-string v4, "recycleViewSavedDate"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    .line 1085
    .local v3, "savedDate":Ljava/util/Date;
    if-nez v3, :cond_2

    const/16 v4, 0xea

    aput-boolean v7, v5, v4

    goto :goto_0

    .line 1087
    :cond_2
    move-object v2, v3

    .local v2, "date":Ljava/util/Date;
    const/16 v4, 0xeb

    aput-boolean v7, v5, v4

    goto :goto_0
.end method

.method private openAddExpenseIfNeeded(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 795
    const-string v1, "intent.addexpense.show"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xb6

    aput-boolean v6, v0, v1

    .line 802
    :goto_0
    const/16 v1, 0xbb

    aput-boolean v6, v0, v1

    return-void

    .line 795
    :cond_0
    const/16 v1, 0xb7

    aput-boolean v6, v0, v1

    .line 797
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0xb8

    aput-boolean v6, v0, v2

    .line 798
    const-string v2, "date"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 v2, 0xb9

    aput-boolean v6, v0, v2

    .line 800
    const/16 v2, 0x65

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/support/v4/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    const/16 v1, 0xba

    aput-boolean v6, v0, v1

    goto :goto_0
.end method

.method private openAddRecurringExpenseIfNeeded(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 812
    const-string v1, "intent.addrecurringexpense.show"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xbc

    aput-boolean v6, v0, v1

    .line 819
    :goto_0
    const/16 v1, 0xc1

    aput-boolean v6, v0, v1

    return-void

    .line 812
    :cond_0
    const/16 v1, 0xbd

    aput-boolean v6, v0, v1

    .line 814
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0xbe

    aput-boolean v6, v0, v2

    .line 815
    const-string v2, "dateStart"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 v2, 0xbf

    aput-boolean v6, v0, v2

    .line 817
    const/16 v2, 0x65

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/support/v4/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    const/16 v1, 0xc0

    aput-boolean v6, v0, v1

    goto :goto_0
.end method

.method private openMonthlyReportIfNeeded(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 756
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/16 v2, 0xa5

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 757
    if-nez v0, :cond_0

    const/16 v0, 0xa6

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    :goto_0
    const/16 v0, 0xac

    aput-boolean v4, v1, v0

    .line 768
    :goto_1
    const/16 v0, 0xaf

    aput-boolean v4, v1, v0

    return-void

    .line 757
    :cond_0
    :try_start_1
    const-string v2, "true"

    const-string v3, "monthly"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xa7

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 764
    :catch_0
    move-exception v0

    const/16 v2, 0xad

    aput-boolean v4, v1, v2

    .line 766
    const-string v2, "Error while opening report activity"

    invoke-static {v2, v0}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0xae

    aput-boolean v4, v1, v0

    goto :goto_1

    .line 757
    :cond_1
    const/16 v0, 0xa8

    const/4 v2, 0x1

    :try_start_2
    aput-boolean v2, v1, v0

    .line 759
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0xa9

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 760
    const-string v2, "fromNotif"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0xaa

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 761
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/support/v4/app/ActivityCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    const/16 v0, 0xab

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private openPremiumIfNeeded(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 778
    const-string v1, "intent.extra.premiumshow"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xb0

    aput-boolean v3, v0, v1

    .line 785
    :goto_0
    const/16 v1, 0xb5

    aput-boolean v3, v0, v1

    return-void

    .line 778
    :cond_0
    const/16 v1, 0xb1

    aput-boolean v3, v0, v1

    .line 780
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/benoitletondor/easybudgetapp/view/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0xb2

    aput-boolean v3, v0, v2

    .line 781
    const-string v2, "showPremium"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0xb3

    aput-boolean v3, v0, v2

    .line 783
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    const/16 v1, 0xb4

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method private openSettingsIfNeeded(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 740
    const-string v1, "intent.extra.redirecttosettings"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa0

    aput-boolean v3, v0, v1

    .line 745
    :goto_0
    const/16 v1, 0xa4

    aput-boolean v3, v0, v1

    return-void

    .line 740
    :cond_0
    const/16 v1, 0xa1

    aput-boolean v3, v0, v1

    .line 742
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/benoitletondor/easybudgetapp/view/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0xa2

    aput-boolean v3, v0, v2

    .line 743
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    const/16 v1, 0xa3

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method private refreshAllForDate(Ljava/util/Date;)V
    .locals 3
    .param p1    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 1116
    invoke-direct {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->refreshRecyclerViewForDate(Ljava/util/Date;)V

    const/16 v1, 0xf7

    aput-boolean v2, v0, v1

    .line 1117
    invoke-direct {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->updateBalanceDisplayForDay(Ljava/util/Date;)V

    const/16 v1, 0xf8

    aput-boolean v2, v0, v1

    .line 1118
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->calendarFragment:Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;

    invoke-virtual {v1, p1, p1}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->setSelectedDates(Ljava/util/Date;Ljava/util/Date;)V

    const/16 v1, 0xf9

    aput-boolean v2, v0, v1

    .line 1119
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->calendarFragment:Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->refreshView()V

    .line 1120
    const/16 v1, 0xfa

    aput-boolean v2, v0, v1

    return-void
.end method

.method private refreshRecyclerViewForDate(Ljava/util/Date;)V
    .locals 6
    .param p1    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 1100
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->expensesViewAdapter:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    invoke-virtual {v1, p1, v2}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->setDate(Ljava/util/Date;Lcom/benoitletondor/easybudgetapp/model/db/DB;)V

    const/16 v1, 0xf0

    aput-boolean v3, v0, v1

    .line 1102
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    invoke-virtual {v1, p1}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->hasExpensesForDay(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf1

    aput-boolean v3, v0, v1

    .line 1104
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    const/16 v1, 0xf2

    aput-boolean v3, v0, v1

    .line 1105
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->recyclerViewPlaceholder:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0xf3

    aput-boolean v3, v0, v1

    .line 1112
    :goto_0
    const/16 v1, 0xf6

    aput-boolean v3, v0, v1

    return-void

    .line 1109
    :cond_0
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    const/16 v1, 0xf4

    aput-boolean v3, v0, v1

    .line 1110
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->recyclerViewPlaceholder:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0xf5

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method private showGenericRecurringDeleteErrorDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 1127
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080098

    const/16 v3, 0xfb

    aput-boolean v5, v0, v3

    .line 1128
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080097

    const/16 v3, 0xfc

    aput-boolean v5, v0, v3

    .line 1129
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080060

    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/MainActivity$12;

    invoke-direct {v3, p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$12;-><init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)V

    const/16 v4, 0xfd

    aput-boolean v5, v0, v4

    .line 1130
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0xfe

    aput-boolean v5, v0, v2

    .line 1138
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1139
    const/16 v1, 0xff

    aput-boolean v5, v0, v1

    return-void
.end method

.method private updateBalanceDisplayForDay(Ljava/util/Date;)V
    .locals 12
    .param p1    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 700
    const/16 v4, 0x90

    aput-boolean v8, v3, v4

    .line 701
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    invoke-virtual {v4, p1}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->getBalanceForDay(Ljava/util/Date;)D

    move-result-wide v4

    sub-double v0, v10, v4

    .local v0, "balance":D
    const/16 v4, 0x91

    aput-boolean v8, v3, v4

    .line 703
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080026

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v5, 0x92

    aput-boolean v8, v3, v5

    .line 705
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080027

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x93

    aput-boolean v8, v3, v4

    .line 706
    const-string v4, ".:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x94

    aput-boolean v8, v3, v4

    .line 708
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v2, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "formatted":Ljava/lang/String;
    const/16 v4, 0x95

    aput-boolean v8, v3, v4

    .line 715
    .end local v2    # "formatted":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->budgetLine:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x99

    aput-boolean v8, v3, v4

    .line 716
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->budgetLineAmount:Landroid/widget/TextView;

    invoke-static {p0, v0, v1}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->getFormattedCurrencyString(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    cmpg-double v4, v0, v10

    if-gtz v4, :cond_2

    const/16 v4, 0x9a

    aput-boolean v8, v3, v4

    .line 720
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->budgetLineContainer:Landroid/view/View;

    const v5, 0x7f0e0016

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v4, 0x9b

    aput-boolean v8, v3, v4

    .line 730
    :goto_1
    const/16 v4, 0x9f

    aput-boolean v8, v3, v4

    return-void

    .line 710
    :cond_0
    const-string v4, ". :"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x96

    aput-boolean v8, v3, v4

    goto :goto_0

    :cond_1
    const/16 v4, 0x97

    aput-boolean v8, v3, v4

    .line 712
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {v2, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formatted":Ljava/lang/String;
    const/16 v4, 0x98

    aput-boolean v8, v3, v4

    goto :goto_0

    .line 722
    .end local v2    # "formatted":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v4

    const-string v5, "low_money_warning_amount"

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-double v4, v4

    cmpg-double v4, v0, v4

    if-gez v4, :cond_3

    const/16 v4, 0x9c

    aput-boolean v8, v3, v4

    .line 724
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->budgetLineContainer:Landroid/view/View;

    const v5, 0x7f0e0015

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v4, 0x9d

    aput-boolean v8, v3, v4

    goto :goto_1

    .line 728
    :cond_3
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->budgetLineContainer:Landroid/view/View;

    const v5, 0x7f0e0013

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v4, 0x9e

    aput-boolean v8, v3, v4

    goto :goto_1
.end method

.method private updateInvitationStatus(Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 428
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/appinvite/AppInviteReferral;->getInvitationId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0x53

    const/4 v4, 0x1

    aput-boolean v4, v2, v1

    .line 429
    if-nez v3, :cond_0

    const/16 v1, 0x54

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 454
    .local v0, "existingId":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/16 v3, 0x61

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 455
    const-string v3, "type"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x62

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    .line 456
    const-string v4, "referrer"

    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x63

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    .line 458
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found conversion from source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and referrer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    .line 460
    if-nez v3, :cond_3

    const/16 v3, 0x64

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 465
    :goto_1
    if-nez v1, :cond_4

    const/16 v1, 0x67

    const/4 v3, 0x1

    aput-boolean v3, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :goto_2
    const/16 v1, 0x6a

    aput-boolean v8, v2, v1

    .line 474
    :goto_3
    const/16 v1, 0x6d

    aput-boolean v8, v2, v1

    return-void

    .line 429
    .end local v0    # "existingId":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x55

    const/4 v3, 0x1

    aput-boolean v3, v2, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 470
    .restart local v0    # "existingId":Ljava/lang/String;
    :catch_0
    move-exception v1

    const/16 v3, 0x6b

    aput-boolean v8, v2, v3

    .line 472
    const-string v3, "Error while getting invitation id from intent"

    invoke-static {v3, v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0x6c

    aput-boolean v8, v2, v1

    goto :goto_3

    .line 429
    .end local v0    # "existingId":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x56

    const/4 v4, 0x1

    :try_start_2
    aput-boolean v4, v2, v1

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installation from invitation: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    const/16 v1, 0x57

    const/4 v4, 0x1

    aput-boolean v4, v2, v1

    .line 433
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v4, "invitation_id"

    invoke-virtual {v1, v4}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    .restart local v0    # "existingId":Ljava/lang/String;
    if-eqz v0, :cond_2

    const/16 v1, 0x58

    const/4 v4, 0x1

    aput-boolean v4, v2, v1

    .line 450
    :goto_4
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v4, "invitation_id"

    invoke-virtual {v1, v4, v3}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x5f

    const/4 v4, 0x1

    aput-boolean v4, v2, v1

    .line 451
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/benoitletondor/easybudgetapp/EasyBudget;

    invoke-virtual {v1, v3}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->trackInvitationId(Ljava/lang/String;)V

    const/16 v1, 0x60

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    goto/16 :goto_0

    .line 434
    :cond_2
    const/16 v1, 0x59

    const/4 v4, 0x1

    aput-boolean v4, v2, v1

    .line 436
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f08003a

    const/16 v5, 0x5a

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 437
    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f080039

    const/16 v5, 0x5b

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 438
    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f080038

    new-instance v5, Lcom/benoitletondor/easybudgetapp/view/MainActivity$2;

    invoke-direct {v5, p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$2;-><init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)V

    const/16 v6, 0x5c

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 439
    invoke-virtual {v1, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v4, 0x5d

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    .line 447
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    const/16 v1, 0x5e

    const/4 v4, 0x1

    aput-boolean v4, v2, v1

    goto :goto_4

    .line 460
    :cond_3
    const/16 v4, 0x65

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    .line 462
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v4

    const-string v5, "installation_source"

    invoke-virtual {v4, v5, v3}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x66

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto/16 :goto_1

    .line 465
    :cond_4
    const/16 v3, 0x68

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 467
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v3

    const-string v4, "installation_referrer"

    invoke-virtual {v3, v4, v1}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x69

    const/4 v3, 0x1

    aput-boolean v3, v2, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 361
    invoke-super {p0, p1, p2, p3}, Lcom/benoitletondor/easybudgetapp/view/DBActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 363
    const/16 v1, 0x65

    if-ne p1, v1, :cond_0

    const/16 v1, 0x38

    aput-boolean v2, v0, v1

    .line 365
    :goto_0
    if-eq p2, v3, :cond_1

    const/16 v1, 0x3a

    aput-boolean v2, v0, v1

    .line 381
    :goto_1
    const/16 v1, 0x43

    aput-boolean v2, v0, v1

    return-void

    .line 363
    :cond_0
    const/16 v1, 0x66

    if-ne p1, v1, :cond_2

    const/16 v1, 0x39

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 365
    :cond_1
    const/16 v1, 0x3b

    aput-boolean v2, v0, v1

    .line 367
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->calendarFragment:Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->getSelectedDate()Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->refreshAllForDate(Ljava/util/Date;)V

    const/16 v1, 0x3c

    aput-boolean v2, v0, v1

    goto :goto_1

    .line 370
    :cond_2
    const/16 v1, 0x67

    if-eq p1, v1, :cond_3

    const/16 v1, 0x3d

    aput-boolean v2, v0, v1

    goto :goto_1

    .line 372
    :cond_3
    if-ne p2, v3, :cond_4

    const/16 v1, 0x3e

    aput-boolean v2, v0, v1

    .line 374
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->calendarFragment:Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->getSelectedDate()Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->refreshAllForDate(Ljava/util/Date;)V

    const/16 v1, 0x3f

    aput-boolean v2, v0, v1

    goto :goto_1

    .line 376
    :cond_4
    if-eqz p2, :cond_5

    const/16 v1, 0x40

    aput-boolean v2, v0, v1

    goto :goto_1

    :cond_5
    const/16 v1, 0x41

    aput-boolean v2, v0, v1

    .line 378
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->finish()V

    const/16 v1, 0x42

    aput-boolean v2, v0, v1

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 386
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->menu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    if-nez v1, :cond_0

    const/16 v1, 0x44

    aput-boolean v2, v0, v1

    .line 392
    :goto_0
    invoke-super {p0}, Lcom/benoitletondor/easybudgetapp/view/DBActivity;->onBackPressed()V

    const/16 v1, 0x48

    aput-boolean v2, v0, v1

    .line 394
    :goto_1
    const/16 v1, 0x49

    aput-boolean v2, v0, v1

    return-void

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->menu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x45

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x46

    aput-boolean v2, v0, v1

    .line 388
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->menu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->collapse()V

    const/16 v1, 0x47

    aput-boolean v2, v0, v1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 139
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v0

    const-string v2, "onboarding_step"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    aput-boolean v4, v1, v4

    .line 145
    :goto_0
    invoke-super {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/DBActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    .line 146
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->setContentView(I)V

    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    .line 149
    if-eqz p1, :cond_1

    const/4 v0, 0x7

    aput-boolean v4, v1, v0

    .line 154
    :goto_1
    const v0, 0x7f0f008a

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->budgetLine:Landroid/widget/TextView;

    const/16 v0, 0xb

    aput-boolean v4, v1, v0

    .line 155
    const v0, 0x7f0f008b

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->budgetLineAmount:Landroid/widget/TextView;

    const/16 v0, 0xc

    aput-boolean v4, v1, v0

    .line 156
    const v0, 0x7f0f0089

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->budgetLineContainer:Landroid/view/View;

    const/16 v0, 0xd

    aput-boolean v4, v1, v0

    .line 157
    const v0, 0x7f0f008f

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    const/16 v0, 0xe

    aput-boolean v4, v1, v0

    .line 158
    const v0, 0x7f0f008c

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->recyclerViewPlaceholder:Landroid/view/View;

    const/16 v0, 0xf

    aput-boolean v4, v1, v0

    .line 160
    invoke-direct {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->initCalendarFragment(Landroid/os/Bundle;)V

    const/16 v0, 0x10

    aput-boolean v4, v1, v0

    .line 161
    invoke-direct {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->initRecyclerView(Landroid/os/Bundle;)V

    const/16 v0, 0x11

    aput-boolean v4, v1, v0

    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/16 v2, 0x12

    aput-boolean v4, v1, v2

    .line 165
    const-string v2, "intent.expense.deleted"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x13

    aput-boolean v4, v1, v2

    .line 166
    const-string v2, "intent.expense.monthly.deleted"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x14

    aput-boolean v4, v1, v2

    .line 167
    const-string v2, "currency.selected"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x15

    aput-boolean v4, v1, v2

    .line 168
    const-string v2, "intent.welcomscreen.show"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x16

    aput-boolean v4, v1, v2

    .line 169
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x17

    aput-boolean v4, v1, v2

    .line 170
    const-string v2, "iabStatusChanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x18

    aput-boolean v4, v1, v2

    .line 172
    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)V

    iput-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->receiver:Landroid/content/BroadcastReceiver;

    const/16 v2, 0x19

    aput-boolean v4, v1, v2

    .line 291
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/16 v0, 0x1a

    aput-boolean v4, v1, v0

    .line 293
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_3

    const/16 v0, 0x1b

    aput-boolean v4, v1, v0

    .line 301
    :goto_2
    const/16 v0, 0x22

    aput-boolean v4, v1, v0

    return-void

    .line 139
    :cond_0
    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    .line 142
    const/16 v2, 0x67

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3}, Landroid/support/v4/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    const/4 v0, 0x4

    aput-boolean v4, v1, v0

    goto/16 :goto_0

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/appinvite/AppInviteReferral;->hasReferral(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    aput-boolean v4, v1, v0

    goto/16 :goto_1

    :cond_2
    const/16 v0, 0x9

    aput-boolean v4, v1, v0

    .line 151
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->updateInvitationStatus(Landroid/content/Intent;)V

    const/16 v0, 0xa

    aput-boolean v4, v1, v0

    goto/16 :goto_1

    .line 293
    :cond_3
    const/16 v0, 0x1c

    aput-boolean v4, v1, v0

    .line 295
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->openSettingsIfNeeded(Landroid/content/Intent;)V

    const/16 v0, 0x1d

    aput-boolean v4, v1, v0

    .line 296
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->openMonthlyReportIfNeeded(Landroid/content/Intent;)V

    const/16 v0, 0x1e

    aput-boolean v4, v1, v0

    .line 297
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->openPremiumIfNeeded(Landroid/content/Intent;)V

    const/16 v0, 0x1f

    aput-boolean v4, v1, v0

    .line 298
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->openAddExpenseIfNeeded(Landroid/content/Intent;)V

    const/16 v0, 0x20

    aput-boolean v4, v1, v0

    .line 299
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->openAddRecurringExpenseIfNeeded(Landroid/content/Intent;)V

    const/16 v0, 0x21

    aput-boolean v4, v1, v0

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 493
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, 0x7f100000

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/16 v1, 0x6f

    aput-boolean v4, v0, v1

    .line 496
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->isUserPremium(Landroid/app/Application;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x70

    aput-boolean v4, v0, v1

    .line 498
    const v1, 0x7f0f00f1

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    const/16 v1, 0x71

    aput-boolean v4, v0, v1

    .line 516
    :goto_0
    const/16 v1, 0x77

    aput-boolean v4, v0, v1

    return v4

    .line 500
    :cond_0
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->hasUserSawMonthlyReportHint(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x72

    aput-boolean v4, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x73

    aput-boolean v4, v0, v1

    .line 502
    const v1, 0x7f0f0093

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x74

    aput-boolean v4, v0, v2

    .line 503
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/16 v2, 0x75

    aput-boolean v4, v0, v2

    .line 505
    const v2, 0x7f0f0094

    invoke-virtual {p0, v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/MainActivity$3;

    invoke-direct {v3, p0, v1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$3;-><init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x76

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 337
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/16 v1, 0x2f

    aput-boolean v3, v0, v1

    .line 339
    invoke-super {p0}, Lcom/benoitletondor/easybudgetapp/view/DBActivity;->onDestroy()V

    .line 340
    const/16 v1, 0x30

    aput-boolean v3, v0, v1

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 399
    invoke-super {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/DBActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 401
    if-nez p1, :cond_0

    .line 403
    const/16 v1, 0x4a

    aput-boolean v2, v0, v1

    .line 417
    :goto_0
    return-void

    .line 407
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/appinvite/AppInviteReferral;->hasReferral(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x4b

    aput-boolean v2, v0, v1

    .line 412
    :goto_1
    invoke-direct {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->openSettingsIfNeeded(Landroid/content/Intent;)V

    const/16 v1, 0x4e

    aput-boolean v2, v0, v1

    .line 413
    invoke-direct {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->openMonthlyReportIfNeeded(Landroid/content/Intent;)V

    const/16 v1, 0x4f

    aput-boolean v2, v0, v1

    .line 414
    invoke-direct {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->openPremiumIfNeeded(Landroid/content/Intent;)V

    const/16 v1, 0x50

    aput-boolean v2, v0, v1

    .line 415
    invoke-direct {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->openAddExpenseIfNeeded(Landroid/content/Intent;)V

    const/16 v1, 0x51

    aput-boolean v2, v0, v1

    .line 416
    invoke-direct {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->openAddRecurringExpenseIfNeeded(Landroid/content/Intent;)V

    .line 417
    const/16 v1, 0x52

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 407
    :cond_1
    const/16 v1, 0x4c

    aput-boolean v2, v0, v1

    .line 409
    invoke-direct {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->updateInvitationStatus(Landroid/content/Intent;)V

    const/16 v1, 0x4d

    aput-boolean v2, v0, v1

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v4

    .line 525
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 528
    .local v0, "id":I
    const v1, 0x7f0f00f3

    if-ne v0, v1, :cond_0

    const/16 v1, 0x78

    aput-boolean v3, v4, v1

    .line 530
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/benoitletondor/easybudgetapp/view/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x79

    aput-boolean v3, v4, v2

    .line 531
    invoke-static {p0, v1, v5}, Landroid/support/v4/app/ActivityCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 533
    const/16 v1, 0x7a

    aput-boolean v3, v4, v1

    move v1, v3

    .line 687
    :goto_0
    return v1

    .line 535
    :cond_0
    const v1, 0x7f0f00f2

    if-ne v0, v1, :cond_2

    const/16 v1, 0x7b

    aput-boolean v3, v4, v1

    .line 537
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->getBalanceForDay(Ljava/util/Date;)D

    move-result-wide v6

    neg-double v6, v6

    const/16 v1, 0x7c

    aput-boolean v3, v4, v1

    .line 539
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040033

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const/16 v1, 0x7d

    aput-boolean v3, v4, v1

    .line 540
    const v1, 0x7f0f00b9

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const/16 v2, 0x7e

    aput-boolean v3, v4, v2

    .line 541
    const-wide/16 v8, 0x0

    cmpl-double v2, v6, v8

    if-nez v2, :cond_1

    const-string v2, "0"

    const/16 v8, 0x7f

    aput-boolean v3, v4, v8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x81

    aput-boolean v3, v4, v2

    .line 542
    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->preventUnsupportedInputForDecimals(Landroid/widget/EditText;)V

    const/16 v2, 0x82

    aput-boolean v3, v4, v2

    .line 543
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    const/16 v2, 0x83

    aput-boolean v3, v4, v2

    .line 545
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v8, 0x84

    aput-boolean v3, v4, v8

    .line 546
    const v8, 0x7f080030

    invoke-virtual {v2, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v8, 0x85

    aput-boolean v3, v4, v8

    .line 547
    const v8, 0x7f08002e

    invoke-virtual {v2, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v8, 0x86

    aput-boolean v3, v4, v8

    .line 548
    invoke-virtual {v2, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v5, 0x87

    aput-boolean v3, v4, v5

    .line 549
    const v5, 0x7f08003d

    new-instance v8, Lcom/benoitletondor/easybudgetapp/view/MainActivity$4;

    invoke-direct {v8, p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$4;-><init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)V

    invoke-virtual {v2, v5, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v5, 0x88

    aput-boolean v3, v4, v5

    .line 557
    const v5, 0x7f080060

    new-instance v8, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;

    invoke-direct {v8, p0, v1, v6, v7}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;-><init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity;Landroid/widget/EditText;D)V

    invoke-virtual {v2, v5, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v5, 0x89

    aput-boolean v3, v4, v5

    .line 662
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    const/16 v5, 0x8a

    aput-boolean v3, v4, v5

    .line 665
    new-instance v5, Lcom/benoitletondor/easybudgetapp/view/MainActivity$6;

    invoke-direct {v5, p0, v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$6;-><init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 677
    const/16 v1, 0x8b

    aput-boolean v3, v4, v1

    move v1, v3

    goto/16 :goto_0

    .line 541
    :cond_1
    invoke-static {v6, v7}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->getFormattedAmountValue(D)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 0x80

    aput-boolean v3, v4, v8

    goto :goto_1

    .line 679
    :cond_2
    const v1, 0x7f0f00f1

    if-ne v0, v1, :cond_3

    const/16 v1, 0x8c

    aput-boolean v3, v4, v1

    .line 681
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x8d

    aput-boolean v3, v4, v2

    .line 682
    invoke-static {p0, v1, v5}, Landroid/support/v4/app/ActivityCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 684
    const/16 v1, 0x8e

    aput-boolean v3, v4, v1

    move v1, v3

    goto/16 :goto_0

    .line 687
    :cond_3
    invoke-super {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/DBActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/16 v2, 0x8f

    aput-boolean v3, v4, v2

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 1411
    invoke-super {p0}, Lcom/benoitletondor/easybudgetapp/view/DBActivity;->onPause()V

    .line 1413
    const-string v1, "jacoco"

    const/16 v3, 0x100

    aput-boolean v9, v2, v3

    .line 1416
    const-string v3, "StorageSt"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x101

    aput-boolean v9, v2, v3

    .line 1417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "coverage.exec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x102

    aput-boolean v9, v2, v4

    .line 1418
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x103

    const/4 v5, 0x1

    :try_start_0
    aput-boolean v5, v2, v3

    .line 1420
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    const/16 v3, 0x104

    const/4 v5, 0x1

    aput-boolean v5, v2, v3

    .line 1421
    const-string v3, "com.vladium.emma.rt.RT"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1422
    .local v0, "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "dumpCoverageData"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const/16 v7, 0x105

    const/4 v8, 0x1

    aput-boolean v8, v2, v7

    .line 1423
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/16 v6, 0x106

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 1422
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/16 v5, 0x107

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 1425
    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x108

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 1426
    const-string v3, "generateCoverageReport: ok"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1430
    const/16 v1, 0x10b

    aput-boolean v9, v2, v1

    return-void

    .line 1427
    :catch_0
    move-exception v1

    const/16 v3, 0x109

    aput-boolean v9, v2, v3

    .line 1428
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Is emma jar on classpath?"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0x10a

    aput-boolean v9, v2, v1

    throw v3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->calendarFragment:Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;

    if-nez v1, :cond_0

    const/16 v1, 0x31

    aput-boolean v3, v0, v1

    .line 350
    :goto_0
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->expensesViewAdapter:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    if-nez v1, :cond_1

    const/16 v1, 0x34

    aput-boolean v3, v0, v1

    .line 355
    :goto_1
    invoke-super {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/DBActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 356
    const/16 v1, 0x37

    aput-boolean v3, v0, v1

    return-void

    .line 345
    :cond_0
    const/16 v1, 0x32

    aput-boolean v3, v0, v1

    .line 347
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->calendarFragment:Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;

    const-string v2, "calendar_saved_state"

    invoke-virtual {v1, p1, v2}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->saveStatesToKey(Landroid/os/Bundle;Ljava/lang/String;)V

    const/16 v1, 0x33

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 350
    :cond_1
    const/16 v1, 0x35

    aput-boolean v3, v0, v1

    .line 352
    const-string v1, "recycleViewSavedDate"

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->expensesViewAdapter:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/16 v1, 0x36

    aput-boolean v3, v0, v1

    goto :goto_1
.end method

.method protected onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 306
    invoke-super {p0}, Lcom/benoitletondor/easybudgetapp/view/DBActivity;->onStart()V

    .line 309
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->lastStopDate:Ljava/util/Date;

    if-nez v2, :cond_0

    const/16 v2, 0x23

    aput-boolean v5, v1, v2

    .line 324
    .local v0, "lastStopDay":I
    :goto_0
    const/16 v2, 0x2c

    aput-boolean v5, v1, v2

    return-void

    .line 309
    .end local v0    # "lastStopDay":I
    :cond_0
    const/16 v2, 0x24

    aput-boolean v5, v1, v2

    .line 311
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x25

    aput-boolean v5, v1, v3

    .line 312
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x26

    aput-boolean v5, v1, v4

    .line 314
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->lastStopDate:Ljava/util/Date;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v4, 0x27

    aput-boolean v5, v1, v4

    .line 315
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 317
    .restart local v0    # "lastStopDay":I
    if-ne v3, v0, :cond_1

    const/16 v2, 0x28

    aput-boolean v5, v1, v2

    .line 322
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->lastStopDate:Ljava/util/Date;

    const/16 v2, 0x2b

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 317
    :cond_1
    const/16 v2, 0x29

    aput-boolean v5, v1, v2

    .line 319
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->refreshAllForDate(Ljava/util/Date;)V

    const/16 v2, 0x2a

    aput-boolean v5, v1, v2

    goto :goto_1
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 329
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->lastStopDate:Ljava/util/Date;

    const/16 v1, 0x2d

    aput-boolean v2, v0, v1

    .line 331
    invoke-super {p0}, Lcom/benoitletondor/easybudgetapp/view/DBActivity;->onStop()V

    .line 332
    const/16 v1, 0x2e

    aput-boolean v2, v0, v1

    return-void
.end method
