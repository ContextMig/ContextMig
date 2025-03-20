.class Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener$1;
.super Ljava/lang/Object;
.source "DateOnClickListener.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;

.field final synthetic val$date:Lorg/joda/time/DateTime;

.field final synthetic val$dateLanguage:Ljava/lang/String;

.field final synthetic val$datePattern:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x57d6b39b2cd8ca0L

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener$1"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;Lorg/joda/time/DateTime;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener$1;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener$1;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;

    iput-object p2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener$1;->val$date:Lorg/joda/time/DateTime;

    iput-object p3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener$1;->val$datePattern:Ljava/lang/String;

    iput-object p4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener$1;->val$dateLanguage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener$1;->$jacocoInit()[Z

    move-result-object v7

    .line 57
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 58
    .local v0, "currentDate":Ljava/util/Calendar;
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener$1;->val$date:Lorg/joda/time/DateTime;

    aput-boolean v8, v7, v8

    .line 62
    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getHourOfDay()I

    move-result v4

    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener$1;->val$date:Lorg/joda/time/DateTime;

    const/4 v2, 0x2

    aput-boolean v8, v7, v2

    .line 63
    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getMinuteOfDay()I

    move-result v5

    const/4 v1, 0x3

    aput-boolean v8, v7, v1

    move v1, p2

    move v2, p3

    move v3, p4

    .line 58
    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    const/4 v1, 0x4

    aput-boolean v8, v7, v1

    .line 65
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener$1;->val$datePattern:Ljava/lang/String;

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener$1;->val$dateLanguage:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/DateUtils;->getDateAsString(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "stringDate":Ljava/lang/String;
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener$1;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;

    iget-boolean v1, v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;->dataFrom:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    aput-boolean v8, v7, v1

    .line 68
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener$1;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;->access$000(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;

    move-result-object v1

    invoke-virtual {v1, v6}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->setDateFrom(Ljava/lang/String;)V

    const/4 v1, 0x6

    aput-boolean v8, v7, v1

    .line 74
    :goto_0
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener$1;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;->access$000(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;

    move-result-object v1

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->notifyObservers()V

    const/16 v1, 0x8

    aput-boolean v8, v7, v1

    .line 75
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener$1;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;->access$100(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const/16 v1, 0x9

    aput-boolean v8, v7, v1

    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener$1;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;->access$000(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DateOnClickListener;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;

    move-result-object v1

    invoke-virtual {v1, v6}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->setDateTo(Ljava/lang/String;)V

    const/4 v1, 0x7

    aput-boolean v8, v7, v1

    goto :goto_0
.end method
