.class Lchan/android/app/pocketnote/app/reminder/ReminderActivity$8;
.super Ljava/lang/Object;
.source "ReminderActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->setUpAllDayUi()V
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

    sget-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$8;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2b140c3257a167a0L    # -1.2227762550383032E101

    const-string v2, "chan/android/app/pocketnote/app/reminder/ReminderActivity$8"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$8;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$8;->$jacocoInit()[Z

    move-result-object v0

    .line 344
    iput-object p1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$8;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$8;->$jacocoInit()[Z

    move-result-object v0

    .line 347
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$8;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$8;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v2}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$700(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$8;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v3}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$800(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-static {v1, v2, v3, p3}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$900(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;Landroid/view/View;Landroid/view/View;I)V

    .line 348
    aput-boolean v4, v0, v4

    return-void
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
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$8;->$jacocoInit()[Z

    move-result-object v0

    .line 353
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
