.class Lchan/android/app/pocketnote/app/calendar/CalendarFragment$6;
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

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$6;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xff9b5d452b822ceL    # -4.325650934635126E231

    const-string v2, "chan/android/app/pocketnote/app/calendar/CalendarFragment$6"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$6;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$6;->$jacocoInit()[Z

    move-result-object v0

    .line 238
    iput-object p1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$6;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$6;->$jacocoInit()[Z

    move-result-object v0

    .line 241
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$6;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$700(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)V

    aput-boolean v4, v0, v4

    .line 242
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$6;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    iget-object v2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$6;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-static {v2}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$300(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)I

    move-result v2

    iget-object v3, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$6;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-static {v3}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$400(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$500(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;II)V

    .line 243
    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    return-void
.end method
