.class Lchan/android/app/pocketnote/app/reminder/ReminderActivity$7;
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

.field final synthetic val$days:[Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$7;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x257f77c27cfc532fL

    const-string v2, "chan/android/app/pocketnote/app/reminder/ReminderActivity$7"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$7;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;[Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$7;->$jacocoInit()[Z

    move-result-object v0

    .line 324
    iput-object p1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$7;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    iput-object p2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$7;->val$days:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$7;->$jacocoInit()[Z

    move-result-object v0

    .line 327
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$7;->val$days:[Ljava/lang/String;

    aget-object v1, v1, p3

    const-string v2, "Specific date"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aput-boolean v3, v0, v3

    .line 328
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$7;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$600(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 332
    :goto_0
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    return-void

    .line 330
    :cond_0
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$7;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$600(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v1, 0x3

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
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$7;->$jacocoInit()[Z

    move-result-object v0

    .line 337
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
