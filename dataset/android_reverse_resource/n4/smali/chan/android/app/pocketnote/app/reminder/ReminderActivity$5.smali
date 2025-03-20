.class Lchan/android/app/pocketnote/app/reminder/ReminderActivity$5;
.super Ljava/lang/Object;
.source "ReminderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->onCreate(Landroid/os/Bundle;)V
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

    sget-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$5;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7d39b3726a8356cfL

    const-string v2, "chan/android/app/pocketnote/app/reminder/ReminderActivity$5"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$5;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$5;->$jacocoInit()[Z

    move-result-object v0

    .line 218
    iput-object p1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$5;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$5;->$jacocoInit()[Z

    move-result-object v0

    .line 221
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$5;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    aput-boolean v3, v0, v3

    .line 222
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$5;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->finish()V

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    .line 223
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$5;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-virtual {v2, v1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->startActivity(Landroid/content/Intent;)V

    .line 224
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void
.end method
