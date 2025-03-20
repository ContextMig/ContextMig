.class Lchan/android/app/pocketnote/app/reminder/ReminderActivity$11;
.super Ljava/lang/Object;
.source "ReminderActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->setUpTimeAlarmUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$11;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x12e78ea23d06f666L

    const-string v2, "chan/android/app/pocketnote/app/reminder/ReminderActivity$11"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$11;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$11;->$jacocoInit()[Z

    move-result-object v0

    .line 419
    iput-object p1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$11;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$11;->$jacocoInit()[Z

    move-result-object v0

    .line 422
    sget-object v1, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->TIMES_VALUES:[Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    aget-object v1, v1, p3

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->SPECIFIC:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    if-ne v1, v2, :cond_0

    aput-boolean v3, v0, v3

    .line 423
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$11;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$1200(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 424
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$11;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$1300(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 429
    :goto_0
    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    return-void

    .line 426
    :cond_0
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$11;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$1200(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 427
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$11;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$1300(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$11;->$jacocoInit()[Z

    move-result-object v0

    .line 434
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
