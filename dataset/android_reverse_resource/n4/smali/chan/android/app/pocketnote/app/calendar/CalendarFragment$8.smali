.class Lchan/android/app/pocketnote/app/calendar/CalendarFragment$8;
.super Ljava/lang/Object;
.source "CalendarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$8;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x31f16dc3585eb86aL    # 4.040429446204593E-68

    const-string v2, "chan/android/app/pocketnote/app/calendar/CalendarFragment$8"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$8;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$8;->$jacocoInit()[Z

    move-result-object v0

    .line 254
    iput-object p1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$8;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v5, 0x2

    const/4 v8, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$8;->$jacocoInit()[Z

    move-result-object v7

    .line 257
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 258
    .local v6, "calendar":Ljava/util/Calendar;
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$8;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    aput-boolean v8, v7, v8

    .line 259
    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    new-instance v2, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$8$1;

    invoke-direct {v2, p0}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$8$1;-><init>(Lchan/android/app/pocketnote/app/calendar/CalendarFragment$8;)V

    aput-boolean v8, v7, v5

    .line 266
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x3

    aput-boolean v8, v7, v4

    .line 267
    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x4

    aput-boolean v8, v7, v5

    .line 268
    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    aput-boolean v8, v7, v9

    .line 270
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 271
    const/4 v0, 0x6

    aput-boolean v8, v7, v0

    return-void
.end method
