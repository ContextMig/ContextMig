.class Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$4;
.super Ljava/lang/Object;
.source "AddRecordActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->selectDate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$4;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x11b9b9db9394d83bL    # -1.610292939138565E223

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$4"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$4;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$4;->$jacocoInit()[Z

    move-result-object v0

    .line 231
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$4;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$4;->$jacocoInit()[Z

    move-result-object v1

    .line 234
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 235
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$4;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;

    invoke-static {v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->access$300(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 236
    invoke-virtual {v0, v6, p2}, Ljava/util/Calendar;->set(II)V

    .line 237
    invoke-virtual {v0, v7, p3}, Ljava/util/Calendar;->set(II)V

    .line 238
    const/4 v2, 0x5

    invoke-virtual {v0, v2, p4}, Ljava/util/Calendar;->set(II)V

    .line 240
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$4;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->access$302(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;J)J

    .line 242
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$4;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;

    invoke-static {v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->access$400(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;)V

    aput-boolean v6, v1, v6

    .line 246
    :goto_0
    const/4 v2, 0x3

    aput-boolean v6, v1, v2

    return-void

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$4;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;

    const v3, 0x7f0e006b

    invoke-static {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->access$500(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;I)V

    aput-boolean v6, v1, v7

    goto :goto_0
.end method
