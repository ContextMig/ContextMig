.class Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;
.super Ljava/lang/Object;
.source "DateOnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final COMPATIBILITY_FACTOR:I = 0x1


# instance fields
.field private cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

.field dataFrom:Z

.field private query:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;

.field private referenceTextView:Landroid/widget/TextView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5c0e7f6dade55904L    # -1.504996233341792E-135

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;Landroid/widget/TextView;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    .line 34
    iput-object p3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;->referenceTextView:Landroid/widget/TextView;

    .line 35
    iput-object p2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;->query:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;

    .line 36
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;->query:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;)Landroid/widget/TextView;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;->referenceTextView:Landroid/widget/TextView;

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;->$jacocoInit()[Z

    move-result-object v6

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick"

    const-string v2, "user clicked select date"

    invoke-static {v0, v1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/logger/PFALogger;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-boolean v8, v6, v8

    .line 43
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;->referenceTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    aput-boolean v8, v6, v1

    .line 44
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getDatePattern()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x3

    aput-boolean v8, v6, v1

    .line 45
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getDateLanguage()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x4

    aput-boolean v8, v6, v1

    .line 46
    invoke-static {v0, v3, v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/DateUtils;->getDateFromString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v5

    const/4 v0, 0x5

    aput-boolean v8, v6, v0

    .line 49
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getActivity()Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener$1;

    invoke-direct {v2, p0, v5, v3, v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener$1;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;Lorg/joda/time/DateTime;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x6

    aput-boolean v8, v6, v3

    .line 78
    invoke-virtual {v5}, Lorg/joda/time/DateTime;->getYear()I

    move-result v3

    const/4 v4, 0x7

    aput-boolean v8, v6, v4

    .line 79
    invoke-virtual {v5}, Lorg/joda/time/DateTime;->getMonthOfYear()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/16 v7, 0x8

    aput-boolean v8, v6, v7

    .line 80
    invoke-virtual {v5}, Lorg/joda/time/DateTime;->getDayOfMonth()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    const/16 v1, 0x9

    aput-boolean v8, v6, v1

    .line 82
    const/4 v1, -0x1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    invoke-virtual {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getActivity()Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v0}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/16 v1, 0xa

    aput-boolean v8, v6, v1

    .line 83
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 84
    const/16 v0, 0xb

    aput-boolean v8, v6, v0

    return-void
.end method
